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
    private static String strIndexWelcome = "Welcome to 火商云 INDEX";
    @Value("${server.database.name}")
    private String databaseName;

    public static String getStrIndexWelcome() {
        return strIndexWelcome;
    }
}
