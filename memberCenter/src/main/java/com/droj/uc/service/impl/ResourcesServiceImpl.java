package com.droj.uc.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import com.droj.common.model.bo.SystemConst;
import com.droj.common.util.UUIDGenerate;
import com.droj.mbg.mapper.uc.UmsResourcesMapper;
import com.droj.mbg.model.uc.UmsResources;
import com.droj.mbg.model.uc.UmsResourcesExample;
import com.droj.uc.repository.CusResourcesRepository;
import com.droj.uc.service.IResourcesService;
import com.droj.uc.vo.ResouseParam;
import com.droj.uc.vo.ResouseVo;
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
public class ResourcesServiceImpl implements IResourcesService {
    String default_order_str = "%s DESC";

    /**
     * 查询系统内可使用资源
     *
     * @param pageNum
     * @param pageSize
     * @param keyword
     * @param hiddenStatus
     * @return
     */
    @Override
    public PageInfo fetch(Integer pageNum, Integer pageSize, String keyword, Integer hiddenStatus) {
        UmsResourcesExample _ex = new UmsResourcesExample();
        if (ObjectUtil.isNotEmpty(hiddenStatus)) {
            _ex.createCriteria().andHiddenEqualTo(hiddenStatus);
        }
        _ex.setOrderByClause(String.format(default_order_str, "create_time"));
        PageHelper.startPage(pageNum, pageSize);
        List<UmsResources> _datas = mapper.selectByExample(_ex);
        PageInfo page = PageInfo.of(_datas);
        page.setList(_datas.stream().map(val -> chgData(val)).collect(Collectors.toList()));
        return page;
    }

    /**
     * 获取指定资源数据
     *
     * @param id
     * @return
     */
    @Override
    public ResouseVo info(Long id) {
        return chgData(mapper.selectByPrimaryKey(id));
    }

    /**
     * 保存系统资源数据
     *
     * @param id
     * @param param
     * @return
     */
    @Override
    public int saveResouse(Long id, ResouseParam param) {
        int count = 0;
        UmsResources _data = new UmsResources();
        if (id == 0) {
            BeanUtil.copyProperties(param, _data);
            _data.setSid(UUIDGenerate.getNextIdWithRondom());
            _data.setCreateTime(new Date());
            count = mapper.insert(_data);
        } else {
            _data = new UmsResources();
            UmsResources _old = mapper.selectByPrimaryKey(id);
            BeanUtil.copyProperties(param, _data);
            _data.setId(id);
            _data.setCreateTime(_old.getCreateTime());
            _data.setSid(_old.getSid());
            count = mapper.updateByPrimaryKeySelective(_data);
        }
        return count;
    }

    /**
     * 批量删除资源数据
     * TODO 伪删除处理
     *
     * @param ids
     * @return
     */
    @Override
    public int batchDelResouse(List<Long> ids) {
        return repository.batchDelResouse(ids, new SystemConst().getIS_DELETE_FLG());
    }

    /**
     * 批量设定系统资源显示状态
     *
     * @param ids
     * @param hiddens
     * @return
     */
    @Override
    public int editResouseHiddenStatus(List<Long> ids, Integer hiddens) {
        return repository.editResouseHiddenStatus(ids, hiddens);
    }

    /**
     * 数据对象转换页面展示对象
     *
     * @param old
     * @return
     */
    ResouseVo chgData(UmsResources old) {
        ResouseVo vo = new ResouseVo();
        BeanUtil.copyProperties(old, vo);
        return vo;
    }

    @Autowired
    UmsResourcesMapper mapper;
    @Autowired
    CusResourcesRepository repository;
}
