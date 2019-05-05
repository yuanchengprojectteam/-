package com.yc.TCMail.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.TCMail.action.GTypeBiz;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.dao.GtypeMapper;

@Controller
public class GTypeAction {
	

	@Resource
	private  GTypeBiz  gbiz;
	@Resource
	private  GtypeMapper  gtm;
	
	/*@RequestMapping("selectAll")
	public  String  Types(HttpServletRequest  request) {
		System.out.println("============");
		List<Gtype> list= gbiz.AllType();	
		request.setAttribute("types", list);
		return  "MorePersonInfo";
	}*/
}
