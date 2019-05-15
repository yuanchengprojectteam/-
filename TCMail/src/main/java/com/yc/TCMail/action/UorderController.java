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
import com.yc.TCMail.bean.PageBean;
import com.yc.TCMail.bean.Result;
import com.yc.TCMail.bean.Uorder;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.imply.BizException;
import com.yc.TCMail.imply.UorderBiz;

@Controller
//@SessionAttributes("loginedUser")     //在请求方法完毕后 @SessionAttributes 再对应找 LoginedUser
public class UorderController {
	
	@Resource
	private UorderBiz uoBiz;
	
	@ModelAttribute
	public void init(Model model,@SessionAttribute("loginedUser") User user) {
		model.addAttribute("waitpay",uoBiz.findUorderBy("待支付",user.getId()).size());
		model.addAttribute("waitsend",uoBiz.findUorderBy("待收货",user.getId()).size());
		model.addAttribute("waitrate",uoBiz.findUorderBy("待评价",user.getId()).size());
	}
	
	
	@RequestMapping("MyOrder")
	public String toMyOrder(Model model ,@SessionAttribute("loginedUser") User user,PageBean pageData) { 
		System.out.println(pageData.getCurrentPage());
		model.addAttribute("OrderList", uoBiz.findWaitSendOrder(pageData.getCurrentPage(),user));
		return "MyOrder";
	}
	
	@RequestMapping("OrderDetail")
	public String toWaitPay(String tabCode,Uorder uorder,Model model,@SessionAttribute("loginedUser") User user,PageBean pageData) {
		if("AllOrder".equals(tabCode)) {
			model.addAttribute("OrderList", uoBiz.findItemByPage(pageData.getCurrentPage(),user));
		}else if("waitpay".equals(tabCode)) {
			model.addAttribute("OrderList", uoBiz.findUorderBy("待支付",user.getId(),pageData.getCurrentPage()));
		}else if("waitsend".equals(tabCode)) {
			model.addAttribute("OrderList", uoBiz.findUorderBy("待收货",user.getId(),pageData.getCurrentPage()));
		}else if("waitrate".equals(tabCode)) {
			model.addAttribute("OrderList", uoBiz.findUorderBy("待评价",user.getId(),pageData.getCurrentPage()));
		}
		return "MyOrderList";
	}
	@RequestMapping("toDetail")
	public String toOrderDetail(Integer orderid,Model model,@SessionAttribute("loginedUser") User user) {
		model.addAttribute("OrderDetail", uoBiz.findById(user,orderid));
		return "OrderDetail";
	}
	
	@PostMapping("receiveGoods")
	@ResponseBody
	public Result receive(Uorder uorder,Model model) {
		try {
			uoBiz.updateWithOrderStatu(uorder);
			return Result.success("您的订单已收货!!!");
		} catch (BizException e) {
			e.printStackTrace();
			return Result.failure("系统繁忙,请稍后再试") ;
		}
	}
	
	@PostMapping("dateleOrder")
	@ResponseBody
	public Result dateleOrder(Integer id){
		try {
			uoBiz.dateleOrder(id);
			return Result.success("您的订单删除成功!!");
		} catch (BizException e) {
			e.printStackTrace();
			return Result.success("系统繁忙,请稍后再试!!!");
		}
	}
	@RequestMapping("toRubbishCar")
	public String toRubbishCar(@SessionAttribute("loginedUser") User user ,Model model) {
		model.addAttribute("OrderList", uoBiz.selectOrderRubbish(user.getId()));
		return "RubbishCar";
	}
	
	
	
}
