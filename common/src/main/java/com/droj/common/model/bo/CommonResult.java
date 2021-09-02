package com.droj.common.model.bo;

import java.text.MessageFormat;

public class CommonResult<T> {
    private String msg;
    private Integer code;
    private T data;

    public CommonResult() {
    }


    public CommonResult(Integer errCode, String errMsg, T data) {
        super();
        this.msg = errMsg;
        this.code = errCode;
        this.data = data;
    }

    public CommonResult(T data) {
        super();
        this.msg = null;
        this.code = 200;
        this.data = data;
    }

    public static <T> CommonResult ok(T data) {
        return new CommonResult(null, "200", data);
    }

    public static <T> CommonResult ok(int code, String errorMsg, T data) {
        return new CommonResult(code, errorMsg, data);
    }

    public static CommonResult error(int errorCode, String errorMsg) {
        return new CommonResult(errorCode, errorMsg, null);
    }

    public static CommonResult error(Integer errorCode, String errorMsg) {
        return new CommonResult(errorCode, errorMsg, null);
    }

    public static CommonResult error(String errMsg) {
        return error(SystemMessageConstCode.END_STR.getCode(), errMsg);
    }

    /**
     * 成功返回结果
     *
     * @param data 获取的数据
     */
    public static <T> CommonResult<T> success(T data) {
        return new CommonResult<T>(ResultCode.SUCCESS.getCode(), ResultCode.SUCCESS.getMessage(), data);
    }

    /**
     * 成功返回结果
     *
     * @param data    获取的数据
     * @param message 提示信息
     */
    public static <T> CommonResult<T> success(T data, String message) {
        return new CommonResult<T>(ResultCode.SUCCESS.getCode(), message, data);
    }

    /**
     * 失败返回结果
     *
     * @param errorCode 错误码
     */
    public static <T> CommonResult<T> failed(IErrorCode errorCode) {
        return new CommonResult<T>(errorCode.getCode(), errorCode.getMessage(), null);
    }

    /**
     * 失败返回结果
     *
     * @param message 提示信息
     */
    public static <T> CommonResult<T> failed(String message) {
        return new CommonResult<T>(ResultCode.FAILED.getCode(), message, null);
    }

    /**
     * 失败返回结果
     */
    public static <T> CommonResult<T> failed() {
        return failed(ResultCode.FAILED);
    }

    /**
     * 失败返回结果
     */
    public static <T> CommonResult<T> failed(T data) {
        try {
            return new CommonResult<T>(((SystemMessageConstCode) data).getCode(), ((SystemMessageConstCode) data).getMessage(), data);
        } catch (Exception e) {
            return new CommonResult<T>(ResultCode.FAILED.getCode(), ResultCode.FAILED.getMessage(), data);
        }

    }

    /**
     * 失败返回结果
     */
    public static <T> CommonResult<T> failed(T data, String message) {
        try {
            return new CommonResult<T>(((SystemMessageConstCode) data).getCode(), message, data);
        } catch (Exception e) {
            return new CommonResult<T>(ResultCode.FAILED.getCode(), message, data);
        }
    }

    public static <T> CommonResult<T> failed(SystemMessageConstCode err, T data) {
        return new CommonResult<T>(err.getCode(), err.getMessage(), data);
    }

    /**
     * 警告返回结果
     *
     * @param message
     * @param <T>
     * @return
     */
    public static <T> CommonResult<T> warn(String message) {
        return new CommonResult<T>(ResultCode.WARN.getCode(), message, null);
    }

    /**
     * 警告返回结果
     */
    public static <T> CommonResult<T> warn(T data, String message) {
        try {
            return new CommonResult<T>(((SystemMessageConstCode) data).getCode(), message, data);
        } catch (Exception e) {
            return new CommonResult<T>(ResultCode.WARN.getCode(), message, data);
        }
    }


    /**
     * 参数验证失败返回结果
     */
    public static <T> CommonResult<T> validateFailed() {
        return failed(ResultCode.VALIDATE_FAILED);
    }

    /**
     * 参数验证失败返回结果
     *
     * @param message 提示信息
     */
    public static <T> CommonResult<T> validateFailed(String message) {
        return new CommonResult<T>(ResultCode.VALIDATE_FAILED.getCode(), message, null);
    }

    /**
     * 未登录返回结果
     */
    public static <T> CommonResult<T> unauthorized(T data) {
        return new CommonResult<T>(SystemMessageConstCode.UNAUTHORIZED.getCode(), SystemMessageConstCode.UNAUTHORIZED.getMessage(), data);
    }

    /**
     * 未授权返回结果
     */
    public static <T> CommonResult<T> forbidden(T data) {
        return new CommonResult<T>(SystemMessageConstCode.FORBIDDEN.getCode(), SystemMessageConstCode.FORBIDDEN.getMessage(), data);
    }

    /**
     * 授权登出结果
     */
    public static <T> CommonResult<T> logout(T data) {
        String message = MessageFormat.format(SystemMessageConstCode.LOGOUT.getMessage(), data);
        return new CommonResult<T>(SystemMessageConstCode.LOGOUT.getCode(), message, data);
    }

    /**
     * 登录超时返回结果
     */
    public static <T> CommonResult<T> expired(T data) {
        return new CommonResult<T>(SystemMessageConstCode.EXPIRED.getCode(), SystemMessageConstCode.EXPIRED.getMessage(), data);
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "Result{" +
                "msg='" + msg + '\'' +
                ", code='" + code + '\'' +
                ", data=" + data +
                '}';
    }
}