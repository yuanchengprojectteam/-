package com.yc.TCMail.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class AfterSerch2Controller {
	
	@RequestMapping("ASS")
	public String to() {
		return "AfterSerachShowStyle2";
	}
	
}
