package com.droj.uc.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import com.droj.common.model.bo.SystemConst;
import com.droj.common.util.UUIDGenerate;
import com.droj.mbg.mapper.uc.UmsRoleMapper;
import com.droj.mbg.model.uc.UmsRole;
import com.droj.mbg.model.uc.UmsRoleExample;
import com.droj.uc.repository.CusRoleRepository;
import com.droj.uc.service.IRolerService;
import com.droj.uc.vo.RoleParam;
import com.droj.uc.vo.RoleVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Service
public class RolerServiceImpl implements IRolerService {
    String default_order_str = "%s DESC";

    /**
     * 查询系统内可使用角色
     *
     * @param pageNum
     * @param pageSize
     * @param keyword
     * @param activeStatus
     * @return
     */
    @Override
    public PageInfo fetch(Integer pageNum, Integer pageSize, String keyword, Integer activeStatus) {
        UmsRoleExample _ex = new UmsRoleExample();
        if (ObjectUtil.isNotEmpty(activeStatus)) {
            _ex.createCriteria().andStatusEqualTo(activeStatus);
        }
        _ex.setOrderByClause(String.format(default_order_str, "create_time"));
        PageHelper.startPage(pageNum, pageSize);
        List<UmsRole> _datas = mapper.selectByExample(_ex);
        PageInfo page = PageInfo.of(_datas);
        page.setList(_datas.stream().map(val -> chgData(val)).collect(Collectors.toList()));
        return page;
    }

    /**
     * 无分页查询系统内可使用角色
     *
     * @param keyword
     * @param activeStatus
     * @return
     */
    @Override
    public List<RoleVo> fetchNoPages(String keyword, Integer activeStatus) {
        UmsRoleExample _ex = new UmsRoleExample();
        if (ObjectUtil.isNotEmpty(activeStatus)) {
            _ex.createCriteria().andStatusEqualTo(activeStatus);
        }
        _ex.setOrderByClause(String.format(default_order_str, "create_time"));
        List<UmsRole> _datas = mapper.selectByExample(_ex);
        return _datas.stream().map(val->chgData(val)).collect(Collectors.toList());
    }

    /**
     * 获取指定角色数据
     *
     * @param id
     * @return
     */
    @Override
    public RoleVo info(Long id) {
        return chgData(mapper.selectByPrimaryKey(id));
    }

    /**
     * 保存系统角色数据
     *
     * @param id
     * @param param
     * @return
     */
    @Override
    public int saveRole(Long id, RoleParam param) {
        int count = 0;
        UmsRole _data = new UmsRole();
        if (id == 0) {
            BeanUtil.copyProperties(param, _data);
            _data.setSid(UUIDGenerate.getNextIdWithRondom());
            _data.setCreateTime(new Date());
            count = mapper.insert(_data);
        } else {
            _data = new UmsRole();
            UmsRole _old = mapper.selectByPrimaryKey(id);
            BeanUtil.copyProperties(param, _data);
            _data.setId(id);
            _data.setCreateTime(_old.getCreateTime());
            _data.setSid(_old.getSid());
            count = mapper.updateByPrimaryKeySelective(_data);
        }
        return count;
    }

    /**
     * 批量删除角色数据
     * TODO 伪删除处理
     *
     * @param ids
     * @return
     */
    @Override
    public int batchDelRole(List<Long> ids) {
        return repository.batchDelRole(ids, new SystemConst().getIS_DELETE_FLG());
    }

    /**
     * 批量设定角色启用状态
     *
     * @param ids
     * @param actives
     * @return
     */
    @Override
    public int editRoleActiveStatus(List<Long> ids, Integer actives) {
        return repository.editRoleActiveStatus(ids, actives);
    }

    /**
     * 数据对象转换页面展示对象
     *
     * @param old
     * @return
     */
    RoleVo chgData(UmsRole old) {
        RoleVo vo = new RoleVo();
        BeanUtil.copyProperties(old, vo);
        return vo;
    }

    @Autowired
    UmsRoleMapper mapper;
    @Autowired
    CusRoleRepository repository;
}
