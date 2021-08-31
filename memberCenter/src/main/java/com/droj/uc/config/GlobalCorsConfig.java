package com.droj.uc.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * TODO 全局跨域配置
 * 功能描述：
 *
 * @author Tuut
 * @version 1.0
 * @Date 2020/11/04
 * @MailTo 49616026@qq.com
 * @CopyRight 深圳运动加科技有限公司
 */
@Configuration
@ComponentScan({"com.droj.uc"})
@Slf4j
public class GlobalCorsConfig implements WebMvcConfigurer {

    /**
     * 允许跨域调用的过滤器
     */
    @Bean
    public CorsFilter corsFilter() {
        log.info("跨域 CorsFilter 配置加载");
        final UrlBasedCorsConfigurationSource urlBasedCorsConfigurationSource = new UrlBasedCorsConfigurationSource();
        //1.添加CORS配置信息
        final CorsConfiguration corsConfiguration = new CorsConfiguration();
        //放行哪些原始域
        corsConfiguration.addAllowedOrigin("*");
        corsConfiguration.addAllowedHeader("*");
        //是否发送Cookie信息
        corsConfiguration.setAllowCredentials(true);
        //放行哪些原始域(请求方式)
        corsConfiguration.addAllowedMethod("*");
        corsConfiguration.addAllowedMethod("OPTIONS");
        corsConfiguration.addAllowedMethod("HEAD");
        corsConfiguration.addAllowedMethod("GET");
        corsConfiguration.addAllowedMethod("PUT");
        corsConfiguration.addAllowedMethod("POST");
        corsConfiguration.addAllowedMethod("DELETE");
        corsConfiguration.addAllowedMethod("PATCH");
        //2.添加映射路径
//        urlBasedCorsConfigurationSource.registerCorsConfiguration(context_path+"/**", corsConfiguration);
        urlBasedCorsConfigurationSource.registerCorsConfiguration("/**", corsConfiguration);
        log.info("跨域 CorsFilter 启动");
        return new CorsFilter(urlBasedCorsConfigurationSource);
    }

    /**
     * 认证证书安全拦截器扫描器
     */
//    @Override
//    public void addInterceptors(InterceptorRegistry registry) {
//        InterceptorRegistration addInterceptor = registry.addInterceptor( getLicenInterceptor() );
//        // 排除配置
//        // addInterceptor.excludePathPatterns("/");
//        // 拦截配置
//        addInterceptor.addPathPatterns( "/**" );
//    }

//    @Bean
//    public LicenseCheckInterceptor getLicenInterceptor() {
//        return new LicenseCheckInterceptor();
//    }
}
