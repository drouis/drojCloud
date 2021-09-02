package com.droj.uc.service;

import com.droj.mbg.model.uc.UmsRole;
import com.droj.uc.repository.model.bo.CusMemberRole;

import java.util.List;

/**
 * TODO 火商户云系统用户角色管理业务处理
 * 功能描述：
 *
 * @author Tuut
 * @version 1.0
 * @Date 20210830
 * @MailTo 49616026@qq.com
 * @CopyRight 小兔电商云科技有限公司
 */
public interface IMemberRoleService {
    /**
     * 查询用户下的角色列表
     *
     * @param memberSid
     * @return
     */
    List<CusMemberRole> fetchMemberRoleConn(String memberSid);

    /**
     * 批量更新用户的角色列表
     *
     * @param uId
     * @param roleIds
     * @return
     */
    int editMemberRoleConn(Integer uId, List<Integer> roleIds);
}
