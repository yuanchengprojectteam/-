package com.yc.TCMail.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.yc.TCMail.action.GTypeBiz;
import com.yc.TCMail.action.GoodsBiz;
import com.yc.TCMail.action.ShopBiz;
import com.yc.TCMail.action.UserBiz;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.PageBean;
import com.yc.TCMail.bean.Shop;
import com.yc.TCMail.bean.User;

@Controller
public class GoodsAction {
	@Resource
	private  GTypeBiz  gbiz;
	@Resource
	private  GoodsBiz   gBiz;
	@Resource
	private  UserBiz  uBiz;
	@Resource
	private  ShopBiz  sBiz;	
	
	@RequestMapping("ShowStyle1")
	public String    ShowStyle1(String  id,String  oreason,Model model,@RequestParam(required = false,defaultValue="1",value= "pageNum")Integer  pageNum) throws ServletException, IOException{
	
		
		Shop   shop=sBiz.select(Integer.valueOf(id));
		model.addAttribute("shop",shop);
		User  u=uBiz.selectUser(shop.getUid());
		model.addAttribute("ShopOwner", u);
		PageHelper.startPage(pageNum, 2);
		List<Goods>  goodslist=new ArrayList<>();
		if("commnum".equals(oreason) || "time".equals(oreason) || "price".equals(oreason)) {
			goodslist=gBiz.selectShopGoods(Integer.valueOf(id),oreason);
		}else if("fav".equals(oreason)){
			 goodslist=gBiz.selectByFav(Integer.valueOf(id),oreason);
		}else {
			goodslist=gBiz.selectByOrdernum(Integer.valueOf(id),oreason);
		}
		int  totalNum=gBiz.CountAll(Integer.valueOf(id));
		PageBean pageBean= new PageBean (pageNum,2,totalNum);
		pageBean.setItems(goodslist);
		model.addAttribute("PageBean", pageBean);
		List<Gtype> types=gbiz.findAll(Integer.valueOf(id));
		model.addAttribute("GTypes", types);
		List<Gtype> alltypes=gbiz.AllType();
		model.addAttribute("alltype", alltypes);
		
		return  "shopGoodsShowStyle1";
}
	
	@RequestMapping("ShowStyle2")
	public String    ShowStyle2(String  id,String  oreason,Model model,@RequestParam(required = false,defaultValue="1",value= "pageNum")Integer  pageNum) throws ServletException, IOException{
		Shop   shop=sBiz.select(Integer.valueOf(id));
		model.addAttribute("shop",shop);
		User  u=uBiz.selectUser(shop.getUid());
		model.addAttribute("ShopOwner", u);
		PageHelper.startPage(pageNum, 2);
		List<Goods>  goodslist=new ArrayList<>();
		if("commnum".equals(oreason) || "time".equals(oreason) || "price".equals(oreason)) {
			goodslist=gBiz.selectShopGoods(Integer.valueOf(id),oreason);
		}else if("fav".equals(oreason)){
			 goodslist=gBiz.selectByFav(Integer.valueOf(id),oreason);
		}else {
			goodslist=gBiz.selectByOrdernum(Integer.valueOf(id),oreason);
		}
		int  totalNum=gBiz.CountAll(Integer.valueOf(id));
		PageBean pageBean= new PageBean (pageNum,2,totalNum);
		pageBean.setItems(goodslist);
		model.addAttribute("PageBean", pageBean);
		List<Gtype> types=gbiz.findAll(Integer.valueOf(id));
		model.addAttribute("GTypes", types);
		List<Gtype> alltypes=gbiz.AllType();
		model.addAttribute("alltype", alltypes);
		
		return  "shopGoodsShowStyle2";
}

}
