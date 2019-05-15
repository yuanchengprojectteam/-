package com.yc.TCMail.action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes(names = {"",""})
public class ScodeShopContorller {
	@Resource
	AfterSerchMethod am;
	
	@Resource
	ZhouMethod zm;
	
	@RequestMapping("toScodeShop")
	public String toScodeShop() {
		return "scodeShop";
	}

}
