
package com.yc.TCMail;

import java.util.Properties;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;

import com.github.pagehelper.PageHelper;



@SpringBootApplication
@MapperScan(basePackages="com.yc.TCMail.dao")
public class TcMailApplication extends  SpringBootServletInitializer{

	
	
	public static void main(String[] args) {
		SpringApplication.run(TcMailApplication.class, args);
	}
	
	
	//配置mybatis的分页插件pageHelper
    @Bean
    public PageHelper pageHelper(){
        PageHelper pageHelper = new PageHelper();
        Properties properties = new Properties();
        properties.setProperty("offsetAsPageNum","true");
        properties.setProperty("rowBoundsWithCount","true");
        properties.setProperty("reasonable","true");
        //配置mysql数据库的方言
        properties.setProperty("dialect","mysql");   
        pageHelper.setProperties(properties);
        return pageHelper;
     }
        
        
	/*    
	 * //将 Spring项目部署到本地tomcat服务器上
	 * 
	 * @Override protected SpringApplicationBuilder
	 * configure(SpringApplicationBuilder application) { return
	 * application.sources(TcMailApplication.class); }
	 */
  
}