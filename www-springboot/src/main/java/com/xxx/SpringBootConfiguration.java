package com.xxx;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.session.web.http.DefaultCookieSerializer;

//@PropertySource("classpath:application-springboot.properties")
@Configuration
public class SpringBootConfiguration {
    @Autowired
    private freemarker.template.Configuration configuration;
    @Autowired
    private DefaultCookieSerializer cookieSerializer;

    @PostConstruct
    public void init() {
    	configuration.setSharedVariable("p", new PaginationTemplateDirectiveModelBean());
    	cookieSerializer.setUseHttpOnlyCookie(false);
    }
}