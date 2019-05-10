package com.yc.TCMail.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Goodsmsg;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.imply.carImply;

@Controller
public class IndexController {
	
	@Resource
	private  GTypeBiz  gbiz;
	@Resource
	private GoodsMsgBiz  gmBiz;
	@Autowired
	carImply ci;
	
	
	@ModelAttribute
	public  void init(Model model){
		List<Gtype> list= gbiz.AllType();	
		List<Goodsmsg> goods=gmBiz.Allgoods();
		model.addAttribute("types", list);
		model.addAttribute("goodsmsg", goods);
	}
	@RequestMapping("index")
	public String go() {
		return "index";
	}
	@RequestMapping("scodeShop")
	public String gogo() {
		return "scodeShop";
	}
	@RequestMapping("tologin")
	public String go1(@ModelAttribute User u) {
		return "login";
	}
	@RequestMapping("toregister")
	public String  goRegister() {
		return  "register";
	}
	@RequestMapping("toapplybecomeshop")
	public  String  goBecomeShop() {
		return  "applyBecomeShop";
	}
	@RequestMapping("toPersonmessage")
	public  String  goPersonmessage() {
		return "PersonInfo";
	}
	@RequestMapping("PersonCenter")
	public  String  goCenter(@SessionAttribute("loginedUser") User user,Model model) {
		model.addAttribute("cglist",ci.selectCarGoods(user.getId(),0));
		return "PersonCenter";
	}
	@RequestMapping("toSecurity")
	public  String  goSecurity() {
		return  "UserSecurity";
	}
	@RequestMapping("toMoreInformation")
	public String  toMoreInformation() {
		return  "MorePersonInfo";
	}

	@GetMapping("header")
	public String setHeader(){
		return "SetHeaderImage";
	}
	
	@RequestMapping("updatephone")
	public String  updatephone() {
		return "alterPhoneNumber";
	}
	
	@RequestMapping("shopIntroduce")
	public String toShopIntroduce() {
		return "shopIntroduce";
	}
	@RequestMapping("HelpCenter")
	public String HelpCenter() {
		return "HelpCenter";
	}

	@RequestMapping("security")
	public String security(){
		return "UserSecurity";
	}
	
	@RequestMapping("car")
	public String car(@SessionAttribute("loginedUser") User user,Model model) {
		model.addAttribute("cglist",ci.selectCarGoods(user.getId(),0));
		return "Car";
	}
	
	@RequestMapping("addOrder")
	public String addOrder() {
		return "addOrder";
	}
	
	@RequestMapping("goodsDetail")
	public String goodsDetail() {
		return "GoodsDetail";

	}
	@RequestMapping("toshopGoodsShowStyle1")
	public String  toshopGoodsShowStyle1() {
		return  "shopGoodsShowStyle1";
	}
	@RequestMapping("toshopGoodsShowStyle2")
	public String  toshopGoodsShowStyle2() {
		return  "shopGoodsShowStyle2";
	}
}
