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
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.test.context.junit4.SpringRunner;

import com.yc.TCMail.bean.Car;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.Orderdetail;
import com.yc.TCMail.bean.Shop;
import com.yc.TCMail.bean.Uorder;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.dao.GoodsMapper;
import com.yc.TCMail.dao.GtypeMapper;
import com.yc.TCMail.dao.OrderdetailMapper;
import com.yc.TCMail.dao.UorderMapper;
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
    
    
    @Resource
    private  UserMapper  userMapper;
    
    @Autowired
    private GtypeMapper gm;
    
    @Resource
    private UorderMapper uom;
    
    @Resource
    private OrderdetailMapper odm;
    
    @Autowired
    private GoodsMapper gom;
    
    @Resource
	private  RedisTemplate<Integer, Integer> redisTemplate;
    
    @Resource
    private RedisUtil redis;
	
	@Test
	public void contextLoads() {
		Uorder uorder = new Uorder();
		uorder.setPaystatu("待支付");
		Orderdetail od = new Orderdetail();
		uom.insertUorder(uorder);
		od.setOrderid(uorder.getId());
		odm.insert(od);
	}
	
	@Test 
	public void SMS() {
		HttpUtil.SMS("12345","15773283676");
	}
	
	@Test
	public void  query() {
		redis.setObject(1, 2);
		/*List<Integer> ret = new ArrayList<Integer>();
		ret.add(9);
		ret.add(2);*/
		/*redisTemplate.opsForList().leftPush(2, 1);
		redisTemplate.opsForList().leftPush(2, 2);
		redisTemplate.opsForList().leftPush(2, 3);*/
		/*Long  si = redisTemplate.opsForList().size(2);
		for(Long i = (long) 0; i < si;i++) {
			redisTemplate.opsForList().rightPop(2);
		}*/
	
		
		/*List<Integer> popValue = (List<Integer>) redisTemplate.opsForList().rightPopAndLeftPush(1,2);  
		System.out.print("通过rightPopAndLeftPush(K sourceKey, K destinationKey)方法移除的元素是:" + popValue);*/  
		/*List<Integer> list =  redisTemplate.opsForList().range(2,0,-1);  
		System.out.println("剩余的元素是:" + list);  */
		List<Integer> ret =  redisTemplate.opsForList().range(1,0,-1);
		System.out.println(ret);
		
	}
	/*@Test
	public void  query1() {
		List<Integer> ret = new ArrayList<Integer>();
		ret.add(3);
		redis.setObject(1, ret);
	}*/
	
}
