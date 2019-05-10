package com.yc.TCMail.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.TCMail.bean.Shop;
import com.yc.TCMail.bean.ShopExample;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.bean.UserExample;
import com.yc.TCMail.dao.ShopMapper;

@Service
//抛出业务异常（编译期异常）时，回滚
@Transactional(rollbackFor = BizException.class)
public class ShopBiz {

	@Resource
	 ShopMapper   sm;

	public int addShop(String addr, String name, String type, String describe,int uid) {
		ShopExample  example=new ShopExample();
		Shop   s =new Shop();
		s.setAddr(addr);
		s.setDescribe(describe);
		s.setName(name);
		s.setType(type);
		SimpleDateFormat  sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date  date=new Date();
		s.setBustime(sdf.format(date));
		s.setUid(uid);
		s.setLevel(1);
		
		return  sm.insertSelective(s);
	}
	
}
