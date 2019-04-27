package com.yc.TCMail.action;

import java.io.File;

import javax.mail.Part;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@RequestMapping("header")
	public String header() {
		return "SetHeaderImage";
	}
	
	@PostMapping("imgHeader")
	public String changImg(Part head) {
		System.out.println(head);
		String path="";
		
		
		
		
		return path;
	}
}
