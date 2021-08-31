package com.droj.common.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * Created by yjr on 2017/6/26.
 */
public final class UUIDGenerate {

    public static String getNextUUID() {
        StringBuffer str = new StringBuffer();
        str.append(UUID.randomUUID().toString().replaceAll("-", ""));
        return str.toString();
    }

    public static String getNextIdWithTimes() {
        SimpleDateFormat f = new SimpleDateFormat("yyyyMMddHHmmss");
        StringBuffer str = new StringBuffer();
        str.append(f.format(new Date()));
        str.append(UUID.randomUUID().toString().replaceAll("-", ""));
        return str.toString();
    }

    public static String getNextIdWithRondom() {
        return RandomUtil.randomAlphabeticByLowercase(10);
    }

    public static Integer getUUIDInOrderId() {
        Integer orderId = UUID.randomUUID().toString().hashCode();
        orderId = orderId < 0 ? -orderId : orderId; //String.hashCode() 值会为空
        return orderId;
    }
}
