package com.droj.common.model.bo;

public enum SystemMessageConstCode {
    SUCCESS(200, "操作成功"),
    FAILED(500, "系统发生不可预知的异常错误,操作失败"),
    PARA_ERROR(300, "API接口参数错误。"),
    VALIDATE_FAILED(404001, "参数检验失败"),
    KEY_MAIN_DATA_NOT_EXIST(404002, "关键数据丢失，请刷新数据重试"),
    PARA_EMPTY_ERROR(404003, "{paramName}不能为空。"),
    EXPIRED(401, "登录时间超长，请重新登录"),
    UNAUTHORIZED(402, "暂未登录或token已经过期"),
    FORBIDDEN(403, "没有相关权限,请联系管理员"),
    REPEAT_LOGIN_FAILED(405, "当前账户已经别处登录，请重新登录"),
    LOGOUT(501003, "{0}用户登出,用户token和权限已经清空"),
    // 应用端用户信息错误),
    MESSAGE_SMS_VERIFY_SUCCESS(2000001, "用户短信验证成功"),
    MESSAGE_SMS_VERIFY_UNSAME(2000002, "用户短信验证码不一致"),
    MESSAGE_SMS_VERIFY_EMPTY(2000003, "请输入登陆验证码"),
    MESSAGE_SMS_VERIFY_PHONENUMBER_EMPTY(2000004, "请填写发送短信手机号"),
    // 阿里云短信服务错误),
    MESSAGE_SEND_ERROR(7000001, "短信发送失败，阿里云短信服务异常"),
    BILL_CONTRACT_MAIN_DATA_EMPTY(7000002, "账款合同数据不存在"),
    BILL_CONTRACT_MAIN_DATA_NOT_ALLOWED(7000003, "账款合同数据不合法，禁止操作"),
    // 其他类错误),
    DICTNORY_GET_NETWORK_ERROR(8000001, "字典数据获取网络错误"),
    ETL_FILE_SYS_PATH_ERROR(8001001, "系统参数错误，请重新读取配置首页接口"),
    ETL_FILE_TYPE_ERROR(8001002, "上传文件格式错误，不支持此类文件上传"),
    ETL_FILE_NAME_EXIST_ERROR(8001003, "商户主体数据查询失败，请检查文件名与商户昵称是否存在"),
    CAL_PRICE_DETAIL_CONFIG_NOT_EXIST(7001001, "估算参数未进行初始化配置"),
    //    用户错误信息),
    USER_USERNAME_ERROR(200001, "用户名称错误。"),
    USER_USERPWD_ERROR(200002, "用户密码错误。"),
    USER_NOT_FOUND(200003, "用户查询失败。"),
    USER_IS_EXIST(200004, "用户已经存在。"),
    USER_DATAS_ERROR(200005, "用户信息存在异常，多个同名账户存在。请联系管理员"),
    // 系统菜单配置错误),
    MENU_NAME_ERROR(300001, "菜单名称错误。"),
    MANEU_INSERT_FAILD_ERROR(300002, "菜单创建失败。"),
    MANEU_UPDATE_FAILD_ERROR(300003, "菜单修改失败。"),
    MANEU_DELETE_FAILD_ERROR(300004, "菜单删除失败。"),
    MANEU_NOT_FOUND(300005, "菜单查询失败。"),
    MANEU_IS_EXIST(300006, "菜单已经存在。"),
    // 系统权限配置错误),
    USERROLE_NAME_ERROR(400001, "用户角色名称错误。"),
    USERROLE_INSERT_FAILD_ERROR(400002, "用户角色创建失败。"),
    USERROLE_UPDATE_FAILD_ERROR(400003, "用户角色修改失败。"),
    USERROLE_DELETE_FAILD_ERROR(400004, "用户角色删除失败。"),
    USERROLE_NOT_FOUND(400005, "用户角色查询失败。"),
    USERROLE_IS_EXIST(400006, "用户角色已经存在。"),
    END_STR(999, "");

    SystemMessageConstCode(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    private Integer code;

    private String message;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}