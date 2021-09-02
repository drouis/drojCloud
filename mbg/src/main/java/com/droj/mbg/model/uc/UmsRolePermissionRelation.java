package com.droj.mbg.model.uc;

import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;

public class UmsRolePermissionRelation implements Serializable {
    private static final long serialVersionUID = 1L;
    @ApiModelProperty(value = "主键ID")
    private Long id;
    @ApiModelProperty(value = "系统角色业务ID")
    private String roleId;
    @ApiModelProperty(value = "系统权限业务ID")
    private String permissionId;
    @ApiModelProperty(value = "角色权限关联备用字段")
    private String relationMemo;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(String permissionId) {
        this.permissionId = permissionId;
    }

    public String getRelationMemo() {
        return relationMemo;
    }

    public void setRelationMemo(String relationMemo) {
        this.relationMemo = relationMemo;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", roleId=").append(roleId);
        sb.append(", permissionId=").append(permissionId);
        sb.append(", relationMemo=").append(relationMemo);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}