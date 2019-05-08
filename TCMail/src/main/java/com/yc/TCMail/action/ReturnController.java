package com.yc.TCMail.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.yc.TCMail.bean.Orderdetail;
import com.yc.TCMail.bean.Return;
import com.yc.TCMail.bean.Totalreason;
import com.yc.TCMail.bean.Uorder;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.imply.ReturnBiz;
import com.yc.TCMail.imply.UorderBiz;

@Controller
public class ReturnController {
	
	@Resource
	private ReturnBiz retBiz;
	
	@RequestMapping("toApplyService")
	public String toApplyService(Orderdetail detail,@SessionAttribute("LoginedUser") User user,Model model) {
		model.addAttribute("ReturnList",retBiz.findAddress(user, detail));
		model.addAttribute("ReturnList1",retBiz.findGoods(detail));
		return "applyAfterService";
	}
	
	@PostMapping("retReason")
	@ResponseBody
	public List<Totalreason> retReason(Return ret,Integer odetailid) {
		System.out.println("========================================detailid========================");
		Orderdetail detail = new Orderdetail();
		detail.setId(odetailid);
		return retBiz.findReason(ret,detail);
	}
	
}
