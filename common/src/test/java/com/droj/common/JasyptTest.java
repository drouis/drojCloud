package com.droj.common;

import com.droj.common.util.JasyptUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
public class JasyptTest {

    private static final String jasypSecret = "Qie";

    @Test
    public void encryptPwd() {
        JasyptUtil jasyptUtil = new JasyptUtil();
        // Redis ---------------------------------------------------------------------------------------------------------- //
//        String REDIS_CLIENT_PWD = String.format("REDIS_CLIENT_PWD: %s", jasyptUtil.encyptPwd(jasypSecret, "redisRuicat@2016"));
        String REDIS_CLIENT_PWD = String.format("REDIS_CLIENT_PWD: %s", JasyptUtil.encyptPwd(jasypSecret, "1q2w3e4R"));
        System.out.println(REDIS_CLIENT_PWD);
        // Data SQL ---------------------------------------------------------------------------------------------------------- //
        String DB_CLIENT_USERNAME = String.format("DB_CLIENT_USERNAME: %s", JasyptUtil.encyptPwd(jasypSecret, "suotianbao"));
        String DB_CLIENT_PWD = String.format("DB_CLIENT_PWD: %s", JasyptUtil.encyptPwd(jasypSecret, "suotianbao123"));
        System.out.println(DB_CLIENT_USERNAME);
        System.out.println(DB_CLIENT_PWD);
    }
}