package com.yc.TCMail.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.TCMail.bean.Orderdetail;
import com.yc.TCMail.bean.Uorder;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.imply.BizException;
import com.yc.TCMail.imply.UorderBiz;

@Controller
@SessionAttributes("loginedUser")     //在请求方法完毕后 @SessionAttributes 再对应找 LoginedUser
public class UorderController {
	
	@Resource
	private UorderBiz uoBiz;
	
	@ModelAttribute
	public void init(Model model) {
		User u = new User();
		u.setAccount("zhangsan");
		u.setId(1);
		Uorder uorder = new Uorder();
		uorder.setPaystatu("待支付");
		uorder.setOrderstatu("待收货");
		Uorder uorder1 = new Uorder();
		uorder1.setOrderstatu("待评价");
		model.addAttribute("waitpay",uoBiz.findUorderByPaystatu(uorder,u).size());
		model.addAttribute("waitsend",uoBiz.findUorderByOrderstatu(uorder,u).size());
		model.addAttribute("waitrate",uoBiz.findUorderByOrderstatu1(uorder1,u).size());
	}
	
	
	@RequestMapping("MyOrder")
	public String toMyOrder(Model model ,@SessionAttribute("LoginedUser") User user) { 
	/*	User u = new User();
		u.setAccount("吕球");
		u.setId(1);
		model.addAttribute("LoginedUser", u);
		//List<Uorder> ret = uoBiz.findAllOrder(user);
*/		model.addAttribute("OrderList", uoBiz.findWaitSendOrder(user));
	
		return "MyOrder";
	}
	
	@RequestMapping("OrderDetail")
	public String toWaitPay(String tabCode,Uorder uorder,Model model,@SessionAttribute("LoginedUser") User user) {
		if("AllOrder".equals(tabCode)) {
			model.addAttribute("OrderList", uoBiz.findAllOrder(user));
		}else if("waitpay".equals(tabCode)) {
			model.addAttribute("OrderList", uoBiz.findUorderByPaystatu(uorder,user));
		}else if("waitsend".equals(tabCode)) {
			model.addAttribute("OrderList", uoBiz.findUorderByOrderstatu(uorder,user));
		}else if("waitrate".equals(tabCode)) {
			model.addAttribute("OrderList", uoBiz.findUorderByOrderstatu1(uorder,user));
		}
		return "MyOrderList";
	}
	@RequestMapping("toDetail")
	public String toOrderDetail(Integer orderid,Model model,@SessionAttribute("LoginedUser") User user) {
		model.addAttribute("OrderDetail", uoBiz.findById(user,orderid));
		return "OrderDetail";
	}
	
	@PostMapping("receiveGoods")
	@ResponseBody
	public String receive(Uorder uorder,Model model) {
		try {
			return uoBiz.updateWithOrderStatu(uorder);
		} catch (BizException e) {
			e.printStackTrace();
			return e.getMessage();
		}
	}
	
	
	
	
}
