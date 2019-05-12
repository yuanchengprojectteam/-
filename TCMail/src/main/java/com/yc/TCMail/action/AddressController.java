package com.yc.TCMail.action;


import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.yc.TCMail.bean.Address;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.imply.AddressBiz;
import com.yc.TCMail.imply.BizException;

@Controller
public class AddressController {
	
	@Resource
	private AddressBiz addrBiz;
	
	@RequestMapping("toAddrManager")
	public String toAddrManager(Model model, @SessionAttribute("loginedUser") User user) {
		model.addAttribute("AddrList", addrBiz.findAddrByUser(user));
		return "addressManager";
	}
	@PostMapping("queryById")
	@ResponseBody
	public Address queryById(Address addr) {
		return addrBiz.findAddrById(addr);
	}
	
	
	@ResponseBody
	@PostMapping("addAddress")
	public String addAddress(Address addr,@SessionAttribute("loginedUser") User user) {   
		
		try {
			addr.setUid(user.getId());
			addr.setLevel("0");
			return addrBiz.add(addr);
		} catch (BizException e) {
			e.printStackTrace();
			return e.getMessage();
		}
	}
	
	@PostMapping("updateAddr")
	@ResponseBody
	public String Update(Address addr) {   //, Errors errors
		try {
			return addrBiz.update(addr);
		} catch (BizException e) {
			e.printStackTrace();
			return e.getMessage();
		}
	}
	
	@PostMapping("setLevel")
	@ResponseBody
	public String setLevel(Address addr) { 
		try {
			return addrBiz.setLevel(addr);
		} catch (BizException e) {
			e.printStackTrace();
			return e.getMessage();
		}
	}
	
	
	
	
}
