package com.soo.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@ComponentScan("com.soo") // com.soo 패키지에서 @Component가 붙은 클래스를 찾아 인스턴스를 자동으로 생성한다.
@EnableWebMvc // Spring Web MVC 관련 애노테이션을 처리할 객체를 추가한다.?? 무슨뜻?
public class AppConfig {
}
