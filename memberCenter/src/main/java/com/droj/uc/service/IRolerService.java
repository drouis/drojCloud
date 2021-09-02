package com.droj.uc.service;

import com.droj.uc.vo.RoleParam;
import com.droj.uc.vo.RoleVo;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * TODO 火商户云系统角色管理业务处理
 * 功能描述：
 *
 * @author Tuut
 * @version 1.0
 * @Date 20210830
 * @MailTo 49616026@qq.com
 * @CopyRight 小兔电商云科技有限公司
 */
public interface IRolerService {

    /**
     * 查询系统内可使用角色
     *
     * @param pageNum
     * @param pageSize
     * @param keyword
     * @return
     */
    PageInfo fetch(Integer pageNum, Integer pageSize, String keyword, Integer activeStatus);

    /**
     * 无分页查询系统内可使用角色
     * @param keyword
     * @param activeStatus
     * @return
     */
    List<RoleVo> fetchNoPages(String keyword, Integer activeStatus);
    /**
     * 获取指定角色数据
     *
     * @param id
     * @return
     */
    RoleVo info(Long id);

    /**
     * 保存系统角色数据
     *
     * @param id
     * @param param
     * @return
     */
    int saveRole(Long id, RoleParam param);

    /**
     * 批量删除角色数据
     * TODO 伪删除处理
     *
     * @param ids
     * @return
     */
    int batchDelRole(List<Long> ids);

    /**
     * 批量设定角色启用状态
     *
     * @param ids
     * @param actives
     * @return
     */
    int editRoleActiveStatus(List<Long> ids, Integer actives);
}
