package com.yc.TCMail;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpUtils;

import org.apache.http.HttpResponse;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.test.context.junit4.SpringRunner;

import com.yc.TCMail.util.HttpUtil;
import com.yc.TCMail.util.RedisUtil;

@RunWith(SpringRunner.class)
@SpringBootTest
public class TcMailApplicationTests {

    @Autowired
    private StringRedisTemplate stringRedisTemplate;
    
    @Autowired
    RedisUtil ru;
	
	@Test
	public void contextLoads() {
		/*
		 * ru.set("a", "value"); System.out.println("==============="+ru.get("a"));
		 */
	}
	
	@Test 
	public void SMS() {
		HttpUtil.SMS("12345","15773283676");
	}
}
