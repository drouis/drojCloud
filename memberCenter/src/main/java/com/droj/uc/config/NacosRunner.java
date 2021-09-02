package com.droj.uc.config;

import com.alibaba.cloud.nacos.registry.NacosAutoServiceRegistration;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import javax.management.MBeanServer;
import javax.management.ObjectName;
import javax.management.Query;
import java.lang.management.ManagementFactory;
import java.util.Set;

/**
 * Nacos 启动注入参数配置
 * http://127.0.0.1:8080/swagger-ui.html#/
 * 功能描述：
 * 创 建 人: Tuut
 * 日    期: 2021/08/30
 * 修 改 人:
 * 修改日期:
 * 修改描述:
 * 版   本: 1.1.0
 */
@Slf4j
@Component
public class NacosRunner implements ApplicationRunner {

    @Value("${server.port}")
    Integer port;
    @Autowired(required = false)
    private NacosAutoServiceRegistration registration;

    @Override
    public void run(ApplicationArguments args) {
//        if (registration != null && port != null) {
//            Integer tomcatPort = port;
//            try {
//                tomcatPort = new Integer(getTomcatPort());
//            } catch (Exception e) {
//                log.error(e.getCause().getMessage());
//            }
//            registration.setPort(tomcatPort);
//            registration.start();
//        }
    }

    /**
     * 获取外部tomcat端口
     */
    public String getTomcatPort() throws Exception {
        MBeanServer beanServer = ManagementFactory.getPlatformMBeanServer();
        Set<ObjectName> objectNames = beanServer.queryNames(new ObjectName("*:type=Connector,*"),
                Query.match(Query.attr("protocol"), Query.value("HTTP/1.1")));
        String port = objectNames.iterator().next().getKeyProperty("port");
        return port;
    }
}
