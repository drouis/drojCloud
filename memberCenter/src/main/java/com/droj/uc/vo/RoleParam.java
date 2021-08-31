package com.droj.uc.vo;

import com.droj.mbg.model.uc.UmsRole;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.util.Date;

@ApiModel(value = "系统角色对象")
public class RoleParam {
    private Long id;

    @ApiModelProperty(value = "名称")
    private String name;

    @ApiModelProperty(value = "是否选择：true:可选择，false不可选择")
    private Boolean checked;

    @ApiModelProperty(value = "描述")
    private String description;

    @ApiModelProperty(value = "后台用户数量")
    private Integer adminCount;

    @ApiModelProperty(value = "启用状态：0->禁用；1->启用")
    private Integer status;

    @ApiModelProperty(value = "排序")
    private Integer sort;

    @ApiModelProperty(value = "系统默认管理员区分，1：超级管理员身份，0普通角色")
    private Integer mngflg;

    @ApiModelProperty(value = "系统角色备用字段1")
    private String roleMemo1;

    @ApiModelProperty(value = "系统角色备用字段2")
    private Integer roleMemo2;

    @ApiModelProperty(value = "系统角色备用字段3")
    private Long roleMemo3;
}
