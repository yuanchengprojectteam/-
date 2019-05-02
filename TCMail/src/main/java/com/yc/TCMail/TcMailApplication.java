
package com.yc.TCMail;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@MapperScan(basePackages="com.yc.TCMail.dao")
public class TcMailApplication extends  SpringBootServletInitializer{

	/*
	 * //将 Spring项目部署到本地tomcat服务器上
	 * 
	 * @Override protected SpringApplicationBuilder
	 * configure(SpringApplicationBuilder application) { return
	 * application.sources(TcMailApplication.class); }
	 */
	
	public static void main(String[] args) {
		SpringApplication.run(TcMailApplication.class, args);
	}
}