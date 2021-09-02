package com.droj.common.util;

import cn.hutool.core.util.ObjectUtil;
import com.droj.common.model.bo.CommonResult;

public class DictUtil {
    static final int IS_ACTIVE_FLG = 1;
    static final int IS_UNACTIVE_FLG = 0;
    static final int IS_ADMIN_FLG = 1;
    static final int IS_NORMAL_FLG = 0;

    /**
     * 通过字典CODE，查询字典对应的释义
     *
     * @param dictCode
     * @return
     */
    public static String fetchDictExpOne(String dictCode) {
        return null;
    }

    /**
     * 通过字典分类ID，获取字典类目
     *
     * @param groupId
     * @return
     */
    public static CommonResult fetchDictCata(String groupId) {
        return null;
    }

    public static String getIsActiveExp(Integer act) {
        if (ObjectUtil.isEmpty(act))
            return "无效";
        String _r;
        switch (act) {
            case IS_UNACTIVE_FLG:
                _r = "已禁用";
                break;
            case IS_ACTIVE_FLG:
                _r = "已启用";
                break;
            default:
                _r = "未知状态";
                break;
        }
        return _r;
    }

    public static String getIsAdminExp(Integer act) {
        if (ObjectUtil.isEmpty(act))
            return "无效";
        String _r;
        switch (act) {
            case IS_ADMIN_FLG:
                _r = "超级管理员";
                break;
            case IS_NORMAL_FLG:
                _r = "普通用户";
                break;
            default:
                _r = "未授权用户";
                break;
        }
        return _r;
    }


}
