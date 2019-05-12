package com.yc.TCMail.action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.TCMail.imply.IndexGtypeBiz;
import com.yc.TCMail.imply.IndexInfoBiz;

@Controller
public class IndexInfoController {
	
	@Resource
	private IndexGtypeBiz igBiz;
	
	@Resource
	private IndexInfoBiz iiBiz;
	
	@RequestMapping("index")
	public String toIndex(Model model) {
		model.addAttribute("GtypeList", igBiz.findAllGtype());
		System.out.println(igBiz.findAllGtype()+"================================");
		return "index";
	}
	
	@PostMapping("query")
	public String findWithQ(String q,Model model) {
		
		model.addAttribute("GoodsList", iiBiz.findWithQ(q));
		return "AfterSerchShowStyle1";
	}
	
}
