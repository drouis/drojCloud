package com.droj.common.util;

import com.droj.common.model.bo.SystemConst;

import java.util.Random;
import java.util.UUID;

/**
 * 功能描述：
 * Copyright (c) 2017-2018 上海致全信息技术有限公司－技术部
 *
 * @参数 ${params}
 * @创 建 人: Administrator
 * @创建时间: 2020\1\2 0002
 * @修 改 人:
 * @修改日期:
 * @修改描述:
 * @版 本: ${version}
 */
public final class RandomUtil {
    private static final String allNumericChars = "0123456789";
    private static final String allLetterChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private static final String allLetterCharsLower = "0123456789abcdefghijklmnopqrstuvwxyz";
    private static final String allChars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

    public static String createRandomString(int len) {
        String str = "";
        for (int i = 0; i < len; i++)
            str += allNumericChars.charAt(getRandom(allNumericChars.length()));
        return str;
    }

    public static int getRandom(int mod) {
        if (mod < 1)
            return 0;
        int ret = getInt() % mod;
        return ret;
    }

    private static int getInt() {
        int ret = Math.abs(Long.valueOf(getRandomNumString()).intValue());
        return ret;
    }

    private static String getRandomNumString() {
        double d = Math.random();
        String dStr = String.valueOf(d).replaceAll("[^\\d]", "");
        if (dStr.length() > 1)
            dStr = dStr.substring(0, dStr.length() - 1);
        return dStr;
    }

    public static String getUUID() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }


    public static String getUUIDUpperCase() {
        return UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
    }

    public static int randomIntPositive(int minNum, int maxNum, int baseNum) {
        if (minNum < 0) {
            throw new IllegalArgumentException("minNum must bigger than ZERO");
        } else if (minNum > maxNum) {
            throw new IllegalArgumentException("maxNum must bigger than minNum");
        } else if (baseNum <= 0) {
            throw new IllegalArgumentException("baseNum must bigger than ZERO");
        }
        Random random = new Random();//use System.currentMillSeconds();
        int i = random.nextInt();
        if (i == Integer.MIN_VALUE) {
            i = Integer.MAX_VALUE;
        }
        return (minNum + (Math.abs(i) % (maxNum - minNum + 1))) / baseNum * baseNum;
    }

    public static int randomIntPositive(int minNum, int maxNum) {
        if (minNum < 0) {
            throw new IllegalArgumentException("minNum must bigger than ZERO");
        } else if (minNum > maxNum) {
            throw new IllegalArgumentException("maxNum must bigger than minNum");
        }
        Random random = new Random();//use System.currentMillSeconds();
        int i = random.nextInt();
        if (i == Integer.MIN_VALUE) {
            i = Integer.MAX_VALUE;
        }
        return minNum + (Math.abs(i) % (maxNum - minNum + 1));
    }

    public static int randomIntPositive(int maxNum) {
        if (maxNum < 0) {
            throw new IllegalArgumentException("maxNum must bigger than ZERO");
        }
        Random random = new Random();//use System.currentMillSeconds();
        int i = random.nextInt();
        if (i == Integer.MIN_VALUE) {
            i = Integer.MAX_VALUE;
        }
        return Math.abs(i) % (maxNum + 1);
    }

    public static String randomAlphabetic(int length) {
        StringBuilder sb = new StringBuilder(new SystemConst().getMAX_DATA());
        Random random = new Random();
        for (int i = 0; i < length; i++) {
            sb.append(allLetterChars.charAt(random.nextInt(allLetterChars.length())));
        }
        return sb.toString();
    }

    public static String randomAlphabeticByLowercase(int length) {
        StringBuilder sb = new StringBuilder(new SystemConst().getMAX_DATA());
        Random random = new Random();
        for (int i = 0; i < length; i++) {
            sb.append(allLetterCharsLower.charAt(random.nextInt(allLetterCharsLower.length())));
        }
        return sb.toString();
    }

    public static String randomNumeric(int length) {
        StringBuilder sb = new StringBuilder(new SystemConst().getMAX_DATA());
        Random random = new Random();
        for (int i = 0; i < length; i++) {
            sb.append(allNumericChars.charAt(random.nextInt(allNumericChars.length())));
        }
        return sb.toString();
    }

    public static String randomString(int length) {
        StringBuilder sb = new StringBuilder(new SystemConst().getMAX_DATA());
        Random random = new Random();
        for (int i = 0; i < length; i++) {
            sb.append(allChars.charAt(random.nextInt(allChars.length())));
        }
        return sb.toString();
    }

    public static Object random(Object[] results, double[] percentages) {
        if (results.length != percentages.length) {
            throw new IllegalArgumentException("retults number and percentages number are not match");
        }
        //percentages double array to int array increased step by step
        //double array:	0.1	0.2 	0.3 	0.4
        //int array:	1000 	3000	6000	10000
        int p = 0;
        int[] points = new int[percentages.length];
        for (int i = 0; i < percentages.length; i++) {
            p += (int) (10000 * percentages[i]);
            points[i] = p;
        }
        if (p != 10000) {
            throw new IllegalArgumentException("Total percentages must be One");
        }

        Random random = new Random();
        int c = Math.abs(random.nextInt() % 10000);
        int pre = 0;
        //etc c=2000	1000<c<3000
        for (int i = 0; i < points.length; i++) {
            if (c < points[i] && c >= pre) {
                return results[i];
            }
            pre = points[i];
        }
        throw new RuntimeException("error happens,please check percentages parameters");
    }
}
