package com.yc.TCMail;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpUtils;

import org.apache.http.HttpResponse;
import org.hibernate.criterion.Restrictions;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.test.context.junit4.SpringRunner;

import com.yc.TCMail.bean.Car;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.Shop;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.dao.GoodsMapper;
import com.yc.TCMail.dao.GtypeMapper;
import com.yc.TCMail.dao.UserMapper;
import com.yc.TCMail.util.HbUtil;
import com.yc.TCMail.util.HttpUtil;
import com.yc.TCMail.util.RedisUtil;

@RunWith(SpringRunner.class)
@SpringBootTest
public class TcMailApplicationTests {

    @Autowired
    private StringRedisTemplate stringRedisTemplate;
    
    @Autowired
    HbUtil hb;
    
    @Autowired
    RedisUtil ru;
    @Resource
    private  UserMapper  userMapper;
    
    @Autowired
    private GtypeMapper gm;
    
    @Autowired
    private GoodsMapper gom;
	
	@Test
	public void contextLoads() {
		
	}
	
	@Test 
	public void SMS() {
		HttpUtil.SMS("12345","15773283676");
	}
	
	@Test
	public void  query() {
	
		
	}
}
