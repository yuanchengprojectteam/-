package com.yc.TCMail.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.TCMail.bean.User;

@Controller
@SessionAttributes(names= {})
public class AfterSerchController {

	@RequestMapping("showStyle1")
	public String showStyle1() {
		return "AfterSerchShowStyle1";
	}
}
