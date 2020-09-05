package com.soo.config;

import org.apache.ibatis.logging.LogFactory;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;

import javax.sql.DataSource;

@MapperScan("com.soo.dao")
public class MybatisConfig {

//    @Bean
//    public SqlSessionFactory sqlSessionFactory(
//            DataSource dataSource, ApplicationContext appCtx) throws Exception {
//
//        LogFactory.useLog4J2Logging();
//
//        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
//        sqlSessionFactoryBean.setDataSource(dataSource);
//        sqlSessionFactoryBean.setTypeAliasesPackage("com.soo.domain");
//        sqlSessionFactoryBean.setMapperLocations(
//                appCtx.getResource("classpath:com/soo/mapper/*Mapper.xml"));
//
//        return sqlSessionFactoryBean.getObject();
//
//    }

}
