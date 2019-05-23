package com.yc.TCMail.util;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;



@Component
public class RedisUtil {
	@Autowired
	private  StringRedisTemplate t;
	
	@Autowired
	private  RedisTemplate<Integer, Integer> redisTemplate;
	
	/*public  void set(String key,String value) {
		t.opsForValue().set(key,value);
	
	}*/
	
	public  List<Integer> get(Integer key) {
		return redisTemplate.opsForList().range(key, 0, -1);
	}
	
	public  void setObject(Integer key , Integer value) {
		Long stringValueLength =redisTemplate.opsForList().size(key);
		List<Integer> ret = get(key);
		if(!ret.contains(value)) {
			if(stringValueLength >= 5) {
				redisTemplate.opsForList().rightPop(key);
			}
		}else {
			redisTemplate.opsForList().remove(key, 0, value);
		}
		redisTemplate.opsForList().leftPush(key, value);
	}
	
	
}
