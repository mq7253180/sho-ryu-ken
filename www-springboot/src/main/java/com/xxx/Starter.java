package com.xxx;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.context.ApplicationPidFileWriter;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.scheduling.annotation.EnableScheduling;
//import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.quincy.sdk.Constants;
import com.quincy.sdk.SnowFlake;
import com.quincy.sdk.annotation.auth.EnableAnnotationAuth;

//@EnableDubbo
//@EnableFeignClients
//@EnableHystrix
//@EnableDiscoveryClient
//@EnableEurekaClient
@MapperScan(basePackages = {Constants.PACKAGE_NAME_MAPPER, "com.xxx.mapper"})
@EntityScan(basePackages = {Constants.PACKAGE_NAME_ENTITY, "com.xxx.entity"})
@EnableJpaRepositories(basePackages = {Constants.PACKAGE_NAME_REPOSITORY, "com.xxx.dao"})
@EnableTransactionManagement
@EnableWebMvc
@EnableJpaAuditing
@EnableAutoConfiguration
@EnableScheduling
@EnableAnnotationAuth
//@EnableRedisSessionEviction(pcBrowser = true, mobileBrowser = true, app = true)
//@EnableRedisHttpSession(maxInactiveIntervalInSeconds = 1234)
@SpringBootApplication/*(exclude = {
        DataSourceAutoConfiguration.class
})*/
@ComponentScan(basePackages= {"com.*"})
public class Starter {
    public static void main(String[] args) {
    	SnowFlake.setWorkerId(Integer.parseInt(args[0]));
    	SpringApplication sa = new SpringApplication(Starter.class);
        sa.addListeners(new ApplicationPidFileWriter());
        sa.run(args);
    }
}