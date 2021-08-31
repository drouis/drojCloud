package com.droj.uc;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Slf4j
@EnableDiscoveryClient
@SpringBootApplication(scanBasePackages = {"com.droj.uc"}, exclude = {DataSourceAutoConfiguration.class})
public class MemberServerApplication extends SpringBootServletInitializer implements CommandLineRunner {

    @Value("${spring.application.name}")
    private String applicationName;

    @Value("${server.port}")
    private Integer serverPort;

    public static void main(String[] args) {
        /** 配置加解密秘钥，与配置文件的密文分开放 */
        SpringApplication springApplication = new SpringApplication(MemberServerApplication.class);
        springApplication.run(args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(this.getClass());
    }

    @Override
    public void run(String... args) throws Exception {
    }

    @Configuration
    @ImportResource(locations = {"classpath: application-*.yml"})
    public class CustomPropertySourceLocator {
        //TODO 权限扫描 加入AOP注解模块，项目启动会扫描全部注册权限注解。同步数据到权限表
    }

}
