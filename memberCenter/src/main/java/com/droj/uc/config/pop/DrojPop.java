package com.droj.uc.config.pop;

import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(ignoreUnknownFields = true)
@PropertySource("classpath:bootstrap.yml")
@Getter
@Setter
public class DrojPop {
    @Value("${server.database.name}")
    private String databaseName;
}
