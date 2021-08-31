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
@ConfigurationProperties(prefix = "jwt")
@Getter
@Setter
public class CustomJwtTokenPop {
    @Value("secret")
    private String secret;

    @Value("expiration")
    private String expiration;

    @Value("tokenHead")
    private String tokenHead;
}
