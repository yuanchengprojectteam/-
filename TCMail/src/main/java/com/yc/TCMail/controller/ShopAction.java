package com.yc.TCMail.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.TCMail.action.ShopBiz;
import com.yc.TCMail.action.UserBiz;

@Controller
@SessionAttributes("shopinfo")
public class ShopAction {

	@Resource
	ShopBiz  sBiz;
	@Resource
	UserBiz  uBiz;
	
	@RequestMapping("shopregister")
	public String  addshop(String  realname,String phone,String  email, String  type,String name,@RequestParam("describe") String  describe,String addr) {
		int uid=uBiz.changeType(phone,email);
		sBiz.addShop(addr,name,type,describe,uid);
		return "";
	}
}
