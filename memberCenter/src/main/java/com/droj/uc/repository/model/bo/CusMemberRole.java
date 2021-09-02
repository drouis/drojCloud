package com.droj.uc.repository.model.bo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@ApiModel("用户角色")
public class CusMemberRole {
    @ApiModelProperty("id")
    Long id;
    @ApiModelProperty("业务id")
    String sid;
    @ApiModelProperty("角色名称")
    String name;
    @ApiModelProperty("角色描述")
    String description;
    @ApiModelProperty("超级管理区分")
    Integer mngflg;
    @ApiModelProperty("用户业务ID")
    String uSid;
    @ApiModelProperty("用户名称")
    String username;
    @ApiModelProperty("用户手机号")
    String uPhone;
    @ApiModelProperty("用户管理区分")
    Integer uIsAdmin;
    @ApiModelProperty("用户状态")
    Integer uStatus;
}
