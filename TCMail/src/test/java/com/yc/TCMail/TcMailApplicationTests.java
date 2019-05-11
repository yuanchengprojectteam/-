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
	
	@Test
	public void  query() {
		/*Car car=hb.getSession().load(Car.class,2);
		hb.getTransaction().begin();
		hb.getSession().delete(car);
		hb.getTransaction().commit();*/
		
		
		List<Car> goods=hb.getCriteria(Car.class).add(Restrictions.eq("uid",1)).list();
		List<Goods> gl=new ArrayList<Goods>();
		for(Car g:goods) {
			Goods goodss=(Goods) hb.getCriteria(Goods.class).add(Restrictions.eqOrIsNull("id",g.getGid())).list().get(0);
			Gtype type=(Gtype)hb.getCriteria(Gtype.class).add(Restrictions.eqOrIsNull("id",goodss.getTid())).list().get(0);
			Shop shop=(Shop) hb.getCriteria(Shop.class).add(Restrictions.eqOrIsNull("id",goodss.getSid())).list().get(0);
			goodss.setType(type);
			goodss.setShop(shop);
			gl.add(goodss);
		}
		/*if(gl.size()>5) {
			for(int i=5;i<gl.size();i++) {
				gl.remove(i);
			}
		}*/
			
		System.out.println(gl);
	
		//查询所有
		/*userMapper.selectByExample(null);*/
		
	}
}
