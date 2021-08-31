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
@ConfigurationProperties(prefix = "spring.redis")
@Getter
@Setter
public class CustomRedisPop {

    @Value("host")
    private String host;

    @Value("database")
    private String database;

    @Value("port")
    private String port;

    @Value("password")
    private String password;

    @Value("timeout")
    private String timeout;

    @Value("block-when-exhausted")
    private String blockWhenExhausted;

    @Value("max-active")
    private String maxActive;

    @Value("max-wait")
    private String maxWait;

    @Value("max-idle")
    private String maxIdle;

    @Value("min-idle")
    private String minIdle;


}
