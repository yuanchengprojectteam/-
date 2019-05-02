package com.yc.TCMail.action;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.TCMail.bean.User;

@Controller
public class IndexController {
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
	public  String  goCenter() {
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
}
