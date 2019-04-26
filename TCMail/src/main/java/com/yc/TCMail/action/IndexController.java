package com.yc.TCMail.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
