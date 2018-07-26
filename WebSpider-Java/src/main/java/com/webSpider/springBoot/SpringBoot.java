package com.webSpider.springBoot;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

/**
 * SpringBoot配置文件
 */

@SpringBootApplication
@MapperScan("com.webSpider.springBoot.mapper")
@ServletComponentScan("cn.powerun.springBoot.listener")
public class SpringBoot {
    public static void main(String[] args){
        SpringApplication.run(SpringBoot.class,args);
    }


//    设置springboot自定义404页面
//@Bean
//public EmbeddedServletContainerCustomizer containerCustomizer() {
//
//    return new EmbeddedServletContainerCustomizer() {
//        @Override
//        public void customize(ConfigurableEmbeddedServletContainer container) {
//
//            ErrorPage error401Page = new ErrorPage(HttpStatus.UNAUTHORIZED, "/401.html");
//            ErrorPage error404Page = new ErrorPage(HttpStatus.NOT_FOUND, "/404.html");
//            ErrorPage error500Page = new ErrorPage(HttpStatus.INTERNAL_SERVER_ERROR, "/500.html");
//
//            container.addErrorPages(error401Page, error404Page, error500Page);
//        }
//    };
//}
}
