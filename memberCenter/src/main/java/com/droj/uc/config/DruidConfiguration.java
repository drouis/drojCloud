package com.droj.uc.config;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.support.http.StatViewServlet;
import com.alibaba.druid.support.http.WebStatFilter;
import com.droj.uc.config.pop.CustomDataSourcePop;
import com.droj.uc.config.pop.DrojPop;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.util.StringUtils;

import javax.sql.DataSource;
import java.util.StringJoiner;

/**
 * SSO模块数据库监控配置
 * 功能描述：
 * Copyright (c) 2017-2018 上海致全信息技术有限公司－技术部
 * 创 建 人: Tuut
 * 日    期: 2019/11/27
 * 修 改 人:
 * 修改日期:
 * 修改描述:
 * 版   本: 1.1.0
 */
@Configuration
@Slf4j
public class DruidConfiguration {

    @Value("white-list")
    String white_list;
    @Value("black-list")
    String black_list;

    @Bean
    public ServletRegistrationBean druidServlet() {// 主要实现web监控的配置处理
        ServletRegistrationBean servletRegistrationBean = new ServletRegistrationBean(
                new StatViewServlet(), "/druid/*");//表示进行druid监控的配置处理操作
        servletRegistrationBean.addInitParameter("allow", white_list);//白名单
        servletRegistrationBean.addInitParameter("deny", black_list);//黑名单
        servletRegistrationBean.addInitParameter("loginUsername", "druid");//用户名
        servletRegistrationBean.addInitParameter("loginPassword", "druid");//密码
        servletRegistrationBean.addInitParameter("resetEnable", "false");//是否可以重置数据源
        return servletRegistrationBean;
    }

    @Bean    //监控
    public FilterRegistrationBean filterRegistrationBean() {
        FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean();
        filterRegistrationBean.setFilter(new WebStatFilter());
        filterRegistrationBean.addUrlPatterns("/*");//所有请求进行监控处理
        filterRegistrationBean.addInitParameter("exclusions", "*.js,*.gif,*.jpg,*.css,/druid/*");//排除
        return filterRegistrationBean;
    }

    @Bean
    public DataSource dataSource() {
        DruidDataSource source = null;
        log.info("<---------- Alibaba Druid数据池 ---------->");
        try {
            String dataBaseName = drojConfig().getDatabaseName();
            log.info("<---------- 读取 Alibaba Druid数据池 基础参数配置 ---------->");
            dataBaseName = StringUtils.isEmpty(dataBaseName) || "database.name".equals(dataBaseName) ? "droj-uc" : dataBaseName;
            dataSourceConfig().setUrl(dataSourceConfig().getUrl()
                    .replaceAll("@database@", dataBaseName)
                    .replaceAll("@port@", "3305"));
            String _str_server_info = new StringJoiner("\n")
                    .add("数据池类型: " + dataSourceConfig().getType())
                    .add("数据驱动: " + dataSourceConfig().getDriverclassname())
                    .add("服务地址：" + dataSourceConfig().getUrl())
                    .toString();
            log.info(_str_server_info);
            source = new DruidDataSource();
            source.setDbType(dataSourceConfig().getType());
            source.setDriverClassName(dataSourceConfig().getDriverclassname());
            dataBaseName = StringUtils.isEmpty(dataBaseName) || "database.name".equals(dataBaseName) ? "droj-uc" : dataBaseName;
            source.setUrl(dataSourceConfig().getUrl());
            source.setUsername(dataSourceConfig().getUsername());
            source.setPassword(dataSourceConfig().getPassword());
            source.setInitialSize(Integer.parseInt(dataSourceConfig().getInitialsize())); // 数据池初始链接数
            source.setMaxActive(Integer.parseInt(dataSourceConfig().getMaxactive())); // 数据池最大链接数
            source.setMinIdle(Integer.parseInt(dataSourceConfig().getMinidle())); // 数据池最小活动链接数
            source.setMaxWait(Integer.parseInt(dataSourceConfig().getMaxwait())); // 数据池链接等待时长
            source.setValidationQuery("select 1");
            source.setTimeBetweenEvictionRunsMillis(6000l);
            source.setTimeBetweenConnectErrorMillis(6000l);
            source.setMinEvictableIdleTimeMillis(150000l);
            source.setPoolPreparedStatements(false);
            source.setMaxPoolPreparedStatementPerConnectionSize(20);
            source.setTestWhileIdle(true);
            source.setTestOnBorrow(false);
            source.setTestOnReturn(false);
            source.setUseUnfairLock(true);
            source.setKillWhenSocketReadTimeout(true);
            source.setRemoveAbandonedTimeout(1800);
            source.setRemoveAbandoned(true);
            log.info("<---------- 200 Alibaba Druid数据池注入完成！！ ---------->");
        } catch (Exception e) {
            log.error(e.getCause().getMessage());
            log.info("<---------- 500 Alibaba Druid数据池注入失败！！ ---------->");
        }
        return source;
    }

    @Bean
    public CustomDataSourcePop dataSourceConfig() {
        return new CustomDataSourcePop();
    }

    @Bean
    public DrojPop drojConfig() {
        return new DrojPop();
    }
}
