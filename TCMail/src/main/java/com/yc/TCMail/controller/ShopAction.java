package com.yc.TCMail.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.TCMail.action.FavBiz;
import com.yc.TCMail.action.ShopBiz;
import com.yc.TCMail.action.UserBiz;
import com.yc.TCMail.bean.Favorite;

@Controller
@SessionAttributes("shopinfo")
public class ShopAction {

	@Resource
	ShopBiz  sBiz;
	@Resource
	UserBiz  uBiz;
	@Resource
	FavBiz  fBiz;
	
	@RequestMapping("shopregister")
	public String  addshop(String  realname,String phone,String  email, String  type,String name,@RequestParam("describe") String  describe,String addr) {
		int uid=uBiz.changeType(phone,email);
		sBiz.addShop(addr,name,type,describe,uid);
		return "";
	}
	@RequestMapping("reciver")
	@ResponseBody
	public  String   ReciverFav(String id,String userid) {
		int result= fBiz.addFav(Integer.valueOf(id),Integer.valueOf(userid));
		if(result>=1) {
			return "yes";
		}else {
			return "no";
		}
	}
	
	@RequestMapping("haveReciver")
	@ResponseBody
	public  String  HaveReciver(String sid,String  uid) {
		List<Favorite> list=fBiz.BooleanReciver(Integer.valueOf(sid),Integer.valueOf(uid));
		if(list.size()>0) {
			return "yes";
		}else {
			return "no";
		}
	}
}
