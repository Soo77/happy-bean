package com.soo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@ComponentScan("com.soo.controller")
@EnableWebMvc
public class WebConfig implements WebMvcConfigurer {

    @Bean
    public MultipartResolver multipartResolver() {

        CommonsMultipartResolver mr = new CommonsMultipartResolver();
        // 이 클래스는 apache-fileupload 라이브러리를 사용한다.
        // 따라서 의존 라이브러리에 명시적으로 추가해야 한다.
        mr.setMaxUploadSize(10000000);
        mr.setMaxInMemorySize(2000000);
        mr.setMaxUploadSizePerFile(5000000);
        return mr;
    }

    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver vr = new InternalResourceViewResolver("/WEB-INF/jsp/", ".jsp");
        vr.setOrder(2);
        return vr;
    }


}



