package com.yc.TCMail.Util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Component
public class RedisUtil {
	@Autowired
	private  StringRedisTemplate t;
	
	
	public  void set(String key,String value) {
		t.opsForValue().set(key,"value");
	}
	
	public  String get(String key) {
		return t.opsForValue().get(key);
	}
	
	
}
