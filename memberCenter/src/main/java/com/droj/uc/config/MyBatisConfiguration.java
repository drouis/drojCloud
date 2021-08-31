package com.droj.uc.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * TODO MyBatis配置类
 * 功能描述：
 *
 * @author Tuut
 * @version 1.0
 * @Date 2020/11/04
 * @MailTo 49616026@qq.com
 * @CopyRight 深圳运动加科技有限公司
 */
@Configuration
@EnableTransactionManagement
@MapperScan(basePackages = {"com.droj.uc.repository.**", "com.droj.mbg.**"})
public class MyBatisConfiguration {
}
