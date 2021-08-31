package com.droj.uc.config.pop;

import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.stereotype.Component;

@Component
@EnableCaching
@RefreshScope
@ConfigurationProperties(prefix = "spring.datasource.druid", ignoreUnknownFields = true)
@Getter
@Setter
public class CustomDataSourcePop {
    @Value("type")
    private String type;
    @Value("driver-class-name")
    private String driverclassname;
    @Value("url")
    private String url;
    @Value("username")
    private String username;
    @Value("password")
    private String password;

    @Value("initial-size")
    private String initialsize; // 初始化大小
    @Value("min-idle")
    private String minidle; // 最小空闲连接数
    @Value("max-active")
    private String maxactive; // 最大连接数
    @Value("max-wait")
    private String maxwait; // 请求等待时间
}