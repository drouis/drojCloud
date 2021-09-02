package com.droj.uc.repository;

import com.droj.uc.repository.model.bo.CusMemberRole;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.mapstruct.Mapper;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Mapper
public interface CusMemberRoleViewRepository {

    String INIT_MEMBER_ROLE_SQL = "DELETE FROM `droj-uc`.`ums_role_member_relation` WHERE `admin_id` = #{uSid}";

    /**
     * 用户Sid查询绑定的系统角色
     *
     * @param uSid
     * @return
     * @GROUPBY
     */
    List<CusMemberRole> fetchMemberRolesByuSid(@Param("uSid") String uSid);

    /**
     * 查询超级管理员的系统角色
     *
     * @return
     */
    List<CusMemberRole> fetchAdminRoles();

    @Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED)
    @Delete({INIT_MEMBER_ROLE_SQL})
    int initMemberRole(@Param("uSid") String uSid);
}
