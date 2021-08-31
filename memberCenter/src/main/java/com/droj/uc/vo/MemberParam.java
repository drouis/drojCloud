package com.droj.uc.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@ApiModel(value = "系统用户参数")
public class MemberParam {
    private Long id;

    @ApiModelProperty(value = "登录名/邮箱")
    private String username;

    @ApiModelProperty(value = "手机号码")
    private String phone;

    @ApiModelProperty(value = "密码")
    private String password;

    @ApiModelProperty(value = "来源管理员:0是联系人用户，1是系统用户, 2是商户用户")
    private Integer isAdministration;

    @ApiModelProperty(value = "帐号启用状态:0->禁用；1->启用")
    private Integer status;

    @ApiModelProperty(value = "微信授权ID")
    private String wechatOpenId;
}
