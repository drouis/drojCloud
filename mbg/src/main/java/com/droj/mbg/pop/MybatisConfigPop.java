package com.droj.mbg.pop;

import lombok.Getter;
import lombok.Setter;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

@Getter
@Setter
public class MybatisConfigPop {
    private String driverClass;

    private String connectionURL;

    private String userId;

    private String password;

    private String jspyPassword;

    public static MybatisConfigPop readProperties(String popFiles) {
        MybatisConfigPop obj = new MybatisConfigPop();
        Properties properties = new Properties();
        // 使用ClassLoader加载properties配置文件生成对应的输入流
        InputStream in = MybatisConfigPop.class.getClassLoader().getResourceAsStream(popFiles);
        // 使用properties对象加载输入流
        try {
            properties.load(in);
        } catch (IOException e) {
            e.printStackTrace();
        }
        //获取key对应的value值
        obj.setDriverClass(properties.getProperty("jdbc.driverClass"));
        obj.setConnectionURL(properties.getProperty("jdbc.connectionURL"));
        obj.setUserId(properties.getProperty("jdbc.userId"));
        obj.setPassword(properties.getProperty("jdbc.password"));
        obj.setJspyPassword(properties.getProperty("jasypt.encryptor.password"));
        return obj;
    }
}

