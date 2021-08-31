package com.droj.common.model.bo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * Controller层的日志封装类
 * 功能描述：
 * Copyright (c) 2017-2018 上海致全信息技术有限公司－技术部
 * 创 建 人: Tuut
 * 日    期: 2019/11/27
 * 修 改 人:
 * 修改日期:
 * 修改描述:
 * 版   本: 1.1.0
 */
@Data
@Getter
@Setter
public class WebLog {
    /**
     * 操作描述
     */
    private String description;

    /**
     * 操作用户
     */
    private String username;

    /**
     * 操作时间
     */
    private Long startTime;

    /**
     * 消耗时间
     */
    private Integer spendTime;

    /**
     * 根路径
     */
    private String basePath;

    /**
     * URI
     */
    private String uri;

    /**
     * URL
     */
    private String url;

    /**
     * 请求类型
     */
    private String method;

    /**
     * IP地址
     */
    private String ip;

    private Object parameter;

    private Object result;
}
