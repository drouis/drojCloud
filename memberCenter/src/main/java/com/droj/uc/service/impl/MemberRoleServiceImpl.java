package com.droj.uc.service.impl;

import com.droj.common.model.bo.SystemConst;
import com.droj.mbg.mapper.uc.UmsRoleMemberRelationMapper;
import com.droj.mbg.model.uc.UmsRoleMemberRelation;
import com.droj.uc.repository.CusMemberRoleViewRepository;
import com.droj.uc.repository.model.bo.CusMemberRole;
import com.droj.uc.service.IMemberRoleService;
import com.droj.uc.service.IMemberService;
import com.droj.uc.service.IRolerService;
import com.droj.uc.vo.MemberVo;
import com.droj.uc.vo.RoleVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class MemberRoleServiceImpl implements IMemberRoleService {
    @Autowired
    IMemberService mService;
    @Autowired
    IRolerService rService;
    @Autowired
    UmsRoleMemberRelationMapper mapper;
    @Autowired
    CusMemberRoleViewRepository viewRepository;

    /**
     * 查询用户下的角色列表
     *
     * @param memberSid
     * @return
     */
    @Override
    public List<CusMemberRole> fetchMemberRoleConn(String memberSid) {
        MemberVo mVo = mService.infoBySid(memberSid);
        // 判定是否超级管理员，否则读取绑定的角色
        if (mVo.getIsAdministration() == new SystemConst().getIS_ADMINISTRATOR()) {
            // 读取全部系统角色
            return viewRepository.fetchAdminRoles();
        }
        return viewRepository.fetchMemberRolesByuSid(memberSid);
    }

    /**
     * 批量更新用户的角色列表
     *
     * @param uId
     * @param roleIds
     * @return
     */
    @Override
    public int editMemberRoleConn(Integer uId, List<Integer> roleIds) {
        MemberVo m = mService.info(uId.longValue());
        try {
            // 清除制定用户的旧角色列表
            viewRepository.initMemberRole(m.getSid());
            // 填补新的用户角色列表
            roleIds.forEach(val -> {
                UmsRoleMemberRelation record = new UmsRoleMemberRelation();
                record.setAdminId(m.getSid());
                RoleVo rVo = rService.info(val.longValue());
                record.setRoleId(rVo.getSid());
                mapper.insertSelective(record);
            });
        } catch (Exception e) {
            log.error(e.getCause().getMessage());
            return 0;
        }
        return roleIds.size();
    }
}
