package com.yc.TCMail.action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.TCMail.imply.IndexGtypeBiz;

@Controller
public class IndexInfoController {
	
	@Resource
	private IndexGtypeBiz igBiz;
	
	@RequestMapping("index")
	public String toIndex(Model model) {
		model.addAttribute("GtypeList", igBiz.findAllGtype());
		return "index";
	}
	
}
