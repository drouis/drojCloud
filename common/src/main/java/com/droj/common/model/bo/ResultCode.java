package com.droj.common.model.bo;

/**
 * 枚举了一些常用API操作码
 * 功能描述：
 * Copyright (c) 2017-2018 上海致全信息技术有限公司－技术部
 * 创 建 人: Administrator
 * 日    期: 2019\12\10 0010
 * 修 改 人:
 * 修改日期:
 * 修改描述:
 * 版   本: 1.1.0
 */
public enum ResultCode implements IErrorCode {
    SUCCESS(200, "操作成功"),
    FAILED(500, "系统发生不可预知的异常错误,操作失败"),
    WARN(900,"系统警告: %s"),
    PARA_ERROR(300, "API接口参数错误。"),
    VALIDATE_FAILED(404001, "参数检验失败"),
    KEY_MAIN_DATA_NOT_EXIST(404002, "关键数据丢失，请刷新数据重试");
    private final Integer code;
    private final String message;

    ResultCode(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    @Override
    public Integer getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
}
