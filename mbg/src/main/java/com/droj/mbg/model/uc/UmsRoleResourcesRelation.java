package com.droj.mbg.model.uc;

import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;

public class UmsRoleResourcesRelation implements Serializable {
    private Long id;

    @ApiModelProperty(value = "菜单ID")
    private String adminmenuId;

    @ApiModelProperty(value = "系统角色ID")
    private String roleId;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAdminmenuId() {
        return adminmenuId;
    }

    public void setAdminmenuId(String adminmenuId) {
        this.adminmenuId = adminmenuId;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", adminmenuId=").append(adminmenuId);
        sb.append(", roleId=").append(roleId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}