package com.droj.uc.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
@ApiModel(value = "系统资源参数")
public class ResouseParam {
    @ApiModelProperty(value = "主键ID")
    private Long id;

    @ApiModelProperty(value = "父级ID")
    private String parentSid;

    @ApiModelProperty(value = "级别")
    private Integer level;

    @ApiModelProperty(value = "名称")
    private String name;

    @ApiModelProperty(value = "路径")
    private String path;

    @ApiModelProperty(value = "标题")
    private String title;

    @ApiModelProperty(value = "路由")
    private String router;

    @ApiModelProperty(value = "头像")
    private String icon;

    @ApiModelProperty(value = "备注信息")
    private String note;

    @ApiModelProperty(value = "服务器端URI")
    private String uri;

    @ApiModelProperty(value = "排序")
    private Integer orderLevel;

    @ApiModelProperty(value = "是否隐藏")
    private Integer hidden;
}
