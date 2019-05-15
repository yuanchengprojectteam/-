package com.yc.TCMail.action;



import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.yc.TCMail.bean.Address;
import com.yc.TCMail.bean.PageBean;
import com.yc.TCMail.bean.Result;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.imply.AddressBiz;
import com.yc.TCMail.imply.BizException;
import com.yc.TCMail.imply.UorderBiz;

@Controller
public class AddressController {
	
	@Resource
	private AddressBiz addrBiz;
	@Resource
	private UorderBiz uoBiz;
	
	@ModelAttribute
	public void init(Model model,@SessionAttribute("loginedUser") User user) {
		model.addAttribute("waitpay",uoBiz.findUorderBy("待支付",user.getId()).size());
		model.addAttribute("waitsend",uoBiz.findUorderBy("待收货",user.getId()).size());
		model.addAttribute("waitrate",uoBiz.findUorderBy("待评价",user.getId()).size());
	}
	@RequestMapping("toAddrManager")
	public String toAddrManager(Model model, @SessionAttribute("loginedUser") User user,PageBean pageData) {
		model.addAttribute("AddrList", addrBiz.findAddrByUser(pageData.getCurrentPage(),user));
		return "addressManager";
	}
	@PostMapping("queryById")
	@ResponseBody
	public Address queryById(Address addr) {
		return addrBiz.findAddrById(addr);
	}
	
	
	@ResponseBody
	@PostMapping("addAddress")
	public Result addAddress(Address addr,@SessionAttribute("loginedUser") User user) {   
		
		try {
			addr.setUid(user.getId());
			addr.setLevel("0");
			addrBiz.add(addr);
			return Result.success("新增地址成功!!!");
		} catch (BizException e) {
			e.printStackTrace();
			return Result.failure("系统繁忙,请稍后再试!!!");
		}
	}
	
	@PostMapping("updateAddr")
	@ResponseBody
	public Result Update(Address addr) {   //, Errors errors
		try {
			addrBiz.update(addr);
			return Result.success("地址更新成功!!!");
		} catch (BizException e) {
			e.printStackTrace();
			return Result.failure("系统繁忙,请稍后再试!!!");
		}
	}
	
	@PostMapping("setLevel")
	@ResponseBody
	public Result setLevel(Address addr) { 
		try {
			 addrBiz.setLevel(addr);
			 return Result.success("设置成功!!!");
		} catch (BizException e) {
			e.printStackTrace();
			return Result.failure("系统繁忙,请稍后再试!!!");
		}
	}
	
	
	
}
