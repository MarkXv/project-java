package com.wn.common;
//package wn_backend.backend_common;
//
//
//import org.apache.shiro.mgt.SecurityManager;
//import org.apache.shiro.spring.LifecycleBeanPostProcessor;
//import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
//import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
//import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.context.annotation.DependsOn;
//
//import java.util.LinkedHashMap;
//import java.util.Map;
//
///**
// * Created by Administrator on 2017/10/20.
// */
//@Configuration
//class ShiroConfiguration {
//    private static final Logger logger = LoggerFactory.getLogger(ShiroConfiguration.class);
//
//    /**
//     * shiro的web过滤器Factory
//     * @param securityManager
//     * @return
//     */
//    @Bean(name="shiroFilter")
//    public ShiroFilterFactoryBean shiroFilterFactoryBean(SecurityManager securityManager){
//        logger.info("注入Shiro的过滤器",ShiroFilterFactoryBean.class);
//        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
//        //shiro的核心安全接口
//        shiroFilterFactoryBean.setSecurityManager(securityManager);
////        shiroFilterFactoryBean.setLoginUrl("/login");//设置登录的连接
//        shiroFilterFactoryBean.setLoginUrl("/tologin");//设置登录的连接
////        shiroFilterFactoryBean.setSuccessUrl("/backend/tobackend");//设置登录成功的界面
//        shiroFilterFactoryBean.setUnauthorizedUrl("/tologin");//设置未对其授权的界面
//
//        Map<String,String>  filterChainDefinitionMap = new LinkedHashMap<String,String>();
//        filterChainDefinitionMap.put("/logout","logout");//配置退出过滤器
//        /**
//         * 过滤器链定义
//         */
//        filterChainDefinitionMap.put("/tologin","anon");
//        filterChainDefinitionMap.put("/login","anon");
//        filterChainDefinitionMap.put("/toregist","anon");
//        filterChainDefinitionMap.put("/","anon");
//      //  filterChainDefinitionMap.put("/index","anon");
////        filterChainDefinitionMap.put("/index","anon");
////        filterChainDefinitionMap.put("/regist","anon");
//        filterChainDefinitionMap.put("/sendmail","anon");
//        filterChainDefinitionMap.put("/talk/**","anon");
//
//
//        filterChainDefinitionMap.put("/staticfiles/**","anon");
//        filterChainDefinitionMap.put("/backend/**", "authc");
//        filterChainDefinitionMap.put("/**","anon");
//
//        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);
//        return shiroFilterFactoryBean;
//    }
//
//    /**
//     * shiro的安全中心
//     * @param
//     * @return
//     */
//    @Bean
//    public SecurityManager securityManager(){
//        logger.info("注入shiro的web过滤器",ShiroFilterFactoryBean.class);
//        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
//        securityManager.setRealm(getUserRealm());
//        return securityManager;
//    }
//    /**
//     * shiro的生命周期处理器
//     * @return
//     */
//    @Bean
//    public LifecycleBeanPostProcessor lifecycleBeanPostProcessor(){
//        return new LifecycleBeanPostProcessor();
//    }
//
//    /**
//     *
//     * depends-on 表示为谁生成代理对象。
//     * @return
//     */
//    @Bean
//    @DependsOn({"lifecycleBeanPostProcessor"})
//    public DefaultAdvisorAutoProxyCreator advisorAutoProxyCreator(){
//        DefaultAdvisorAutoProxyCreator advisorAutoProxyCreator = new DefaultAdvisorAutoProxyCreator();
//        advisorAutoProxyCreator.setProxyTargetClass(true);
//        return advisorAutoProxyCreator;
//    }
//
//    @Bean
//    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(SecurityManager securityManager){
//        AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor = new AuthorizationAttributeSourceAdvisor();
//        authorizationAttributeSourceAdvisor.setSecurityManager(securityManager);
//        return authorizationAttributeSourceAdvisor;
//    }
//
//    @Bean
//    public UserRealm getUserRealm(){
//        return new UserRealm();
//    }
//}
