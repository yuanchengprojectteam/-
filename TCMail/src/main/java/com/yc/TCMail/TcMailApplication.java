package com.yc.TCMail;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@MapperScan(basePackages="com.yc.TCMail.dao")
public class TcMailApplication{

	public static void main(String[] args) {
		SpringApplication.run(TcMailApplication.class, args);
	}

}
