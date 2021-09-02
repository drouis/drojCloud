package com.droj.uc.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import com.droj.common.model.bo.SystemConst;
import com.droj.common.util.*;
import com.droj.mbg.mapper.uc.UmsMemberMapper;
import com.droj.mbg.model.uc.UmsMember;
import com.droj.mbg.model.uc.UmsMemberExample;
import com.droj.uc.repository.CusMemberRepository;
import com.droj.uc.service.IMemberService;
import com.droj.uc.vo.MemberParam;
import com.droj.uc.vo.MemberVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Service
public class MemberServiceImpl implements IMemberService {
    String default_order_str = "%s DESC";
    @Autowired
    UmsMemberMapper mapper;
    @Autowired
    CusMemberRepository repository;

    /**
     * 查询系统内可使用用户
     *
     * @param pageNum
     * @param pageSize
     * @param keyword
     * @param activeStatus
     * @return
     */
    @Override
    public PageInfo fetch(Integer pageNum, Integer pageSize, String keyword, Integer activeStatus) {
        List<UmsMember> _datas = new ArrayList<>();
        if (!StringUtils.isEmpty(keyword)) {
            _datas = repository.fetchMembersByKeywords(keyword);
        } else {
            UmsMemberExample _ex = new UmsMemberExample();
            if (ObjectUtil.isNotEmpty(activeStatus)) {
                _ex.createCriteria().andStatusEqualTo(activeStatus);
            }
            _ex.setOrderByClause(String.format(default_order_str, "create_time"));
            PageHelper.startPage(pageNum, pageSize);
            _datas = mapper.selectByExample(_ex);
        }
        PageInfo page = PageInfo.of(_datas);
        page.setList(_datas.stream().map(val -> chgData(val)).collect(Collectors.toList()));
        return page;
    }

    /**
     * 获取指定用户数据
     *
     * @param id
     * @return
     */
    @Override
    public MemberVo info(Long id) {
        return chgData(mapper.selectByPrimaryKey(id));
    }

    /**
     * 获取指定用户数据
     * 业务ID获取用户数据
     *
     * @param uSid
     * @return
     */
    @Override
    public MemberVo infoBySid(String uSid) {
        UmsMemberExample _ex = new UmsMemberExample();
        _ex.createCriteria().andSidEqualTo(uSid);
        List<UmsMember> _l = mapper.selectByExample(_ex);
        if (CollectionUtil.isNotEmpty(_l))
            return chgData(_l.get(0));
        return null;
    }

    /**
     * 保存系统用户数据
     *
     * @param id
     * @param param
     * @return
     */
    @Override
    public int saveMember(Long id, MemberParam param) {
        int count = 0;
        UmsMember _data = new UmsMember();
        if (id == 0) {
            BeanUtil.copyProperties(param, _data);
            _data.setSid(UUIDGenerate.getNextIdWithRondom());
            _data.setCreateTime(new Date());
            count = mapper.insert(_data);
        } else {
            _data = new UmsMember();
            UmsMember _old = mapper.selectByPrimaryKey(id);
            BeanUtil.copyProperties(param, _data);
            _data.setId(id);
            _data.setCreateTime(_old.getCreateTime());
            _data.setSid(_old.getSid());
            count = mapper.updateByPrimaryKeySelective(_data);
        }
        return count;
    }

    /**
     * 批量删除用户数据
     * TODO 伪删除处理
     *
     * @param ids
     * @return
     */
    @Override
    public int batchDelMember(List<Long> ids) {
        return repository.batchDelMember(ids, new SystemConst().getIS_DELETE_FLG());
    }

    /**
     * 批量设定用户启用状态
     *
     * @param ids
     * @param actives
     * @return
     */
    @Override
    public int editMemberActiveStatus(List<Long> ids, Integer actives) {
        return repository.editMemberActiveStatus(ids, actives);
    }

    /***
     * 登录用户/系统管理员修改用户的登录密码
     * @param keyword （登陆用户的SID/用户列表的用户ID）
     * @param uid
     * @param pwd
     * @return
     */
    @Override
    public int editMemberPwdBySidOrUserName(String keyword, Long uid, String pwd) {
        UmsMember _data;
        int count = 0;
        if (0 != uid) {
            _data = mapper.selectByPrimaryKey(uid);
            _data.setPassword(MD5Util.MD5(pwd));
            return mapper.updateByPrimaryKeySelective(_data);
        }
        UmsMemberExample _ex = new UmsMemberExample();
        _ex.createCriteria().andSidEqualTo(keyword);
        List<UmsMember> _l = mapper.selectByExample(_ex);
        if (CollectionUtil.isNotEmpty(_l)) {
            _data = _l.get(0);
            _data.setPassword(MD5Util.MD5(pwd));
            return mapper.updateByPrimaryKeySelective(_data);
        }
        return count;
    }

    /**
     * 数据对象转换页面展示对象
     *
     * @param old
     * @return
     */
    MemberVo chgData(UmsMember old) {
        MemberVo vo = new MemberVo();
        BeanUtil.copyProperties(old, vo);
        vo.setPhone(PhoneUitl.hiddenPhone(vo.getPhone()));
        vo.setStrCreateTime(DateUtil.getDate(vo.getCreateTime(), DateUtil.DATETIME_FORMAT));
        vo.setStrStatus(DictUtil.getIsActiveExp(vo.getStatus()));
        vo.setStrIsAdministration(DictUtil.getIsAdminExp(vo.getIsAdministration()));
        return vo;
    }
}
