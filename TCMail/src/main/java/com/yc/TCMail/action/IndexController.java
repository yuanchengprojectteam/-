package com.yc.TCMail.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.github.pagehelper.PageHelper;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Goodsmsg;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.Image;
import com.yc.TCMail.bean.PageBean;
import com.yc.TCMail.bean.Shop;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.imply.carImply;
import com.yc.TCMail.util.HbUtil;

import ch.qos.logback.core.rolling.SizeAndTimeBasedRollingPolicy;

@Controller
public class IndexController {
	
	@Resource
	private  GTypeBiz  gbiz;
	@Resource
	private GoodsMsgBiz  gmBiz;
	@Autowired
	carImply ci;
	@Resource
	private  UserBiz  uBiz;
	@Resource
	private  ShopBiz  sBiz;	
	@Resource
	private  GoodsBiz  gsBiz;
	@Autowired
	private HbUtil hb;
	@Resource
	private  ImageBiz   iBiz;
	
	@ModelAttribute
	public  void init(Model model){
		List<Gtype> list= gbiz.AllType();	
		List<Goodsmsg> goods=gmBiz.Allgoods();
		model.addAttribute("types", list);
		model.addAttribute("goodsmsg", goods);
		
	}
	
	@RequestMapping("newIndex")
	public String newIndex() {
		return "newIndex";
	}
	
	@RequestMapping("scodeShop")
	public String gogo() {
		return "scodeShop";
	}
	@RequestMapping("tologin")
	public String go1(@ModelAttribute User u) {
		return "login";
	}
	@RequestMapping("toregister")
	public String  goRegister() {
		return  "register";
	}
	@RequestMapping("toapplybecomeshop")
	public  String  goBecomeShop() {
		return  "applyBecomeShop";
	}
	@RequestMapping("toPersonmessage")
	public  String  goPersonmessage() {
		return "PersonInfo";
	}
	@RequestMapping("PersonCenter")
	public  String  goCenter(@SessionAttribute("loginedUser") User user,Model model) {
		model.addAttribute("cglist",ci.selectCarGoods(user.getId(),0));
		return "PersonCenter";
	}
	@RequestMapping("toSecurity")
	public  String  goSecurity() {
		return  "UserSecurity";
	}
	@RequestMapping("toMoreInformation")
	public String  toMoreInformation() {
		return  "MorePersonInfo";
	}

	@GetMapping("header")
	public String setHeader(){
		return "SetHeaderImage";
	}
	
	@RequestMapping("updatephone")
	public String  updatephone() {
		return "alterPhoneNumber";
	}
	
	@RequestMapping("shopIntroduce")
	public String toShopIntroduce() {
		return "shopIntroduce";
	}
	@RequestMapping("HelpCenter")
	public String HelpCenter() {
		return "HelpCenter";
	}

	@RequestMapping("security")
	public String security(){
		return "UserSecurity";
	}
	
	@RequestMapping("car")
	public String car(@SessionAttribute("loginedUser") User user,Model model) {
		model.addAttribute("cglistcar",ci.selectCarGoods(user.getId(),1));
		System.out.println("---"+ci.selectCarGoods(user.getId(),1));
		return "Car";
	}
	
	/*@RequestMapping("addOrder")
	public String addOrder() {
		return "addOrder";
	}*/
	
	@RequestMapping("goodsDetail")
	public String goodsDetail(String id,Model model) {
		System.out.println("sid========"+id);
		int sid=gmBiz.selectSid(id);
		Shop   shop=sBiz.select(sid);
		model.addAttribute("shop",shop);
		return "GoodsDetail";

	}
	@RequestMapping("toshopGoodsShowStyle1")
	public String  toshopGoodsShowStyle1(String  id,Model  model) throws IOException  {
		
		Shop   shop=sBiz.select(Integer.valueOf(id));
		model.addAttribute("shop",shop);
		User  u=uBiz.selectUser(shop.getUid());
		model.addAttribute("ShopOwner", u);
		PageHelper.startPage(1, 2);
		List<Goods>  goodslist=gsBiz.selectShopGoods(shop.getId(),"commnum");
		int  totalNum=gsBiz.CountAll(Integer.valueOf(id));
		PageBean pageBean= new PageBean (1,2,totalNum);
		pageBean.setItems(goodslist);
		model.addAttribute("PageBean", pageBean);
		List<Gtype> types=gbiz.findAll(Integer.valueOf(id));
		model.addAttribute("GTypes", types);
		List<Gtype> alltypes=gbiz.AllType();
		model.addAttribute("alltype", alltypes);
		
		return  "shopGoodsShowStyle1";
	}
	
	
	@RequestMapping("toshopGoodsShowStyle2")
	public String  toshopGoodsShowStyle2(String  id,Model  model)  {
		Shop   shop=sBiz.select(Integer.valueOf(id));
		model.addAttribute("shop",shop);
		User  u=uBiz.selectUser(shop.getUid());
		model.addAttribute("ShopOwner", u);
		PageHelper.startPage(1, 2);
		List<Goods>  goodslist=gsBiz.selectShopGoods(shop.getId(),"commnum");
		int  totalNum=gsBiz.CountAll(Integer.valueOf(id));
		PageBean pageBean= new PageBean (1,2,totalNum);
		pageBean.setItems(goodslist);
		model.addAttribute("PageBean", pageBean);
		List<Gtype> types=gbiz.findAll(Integer.valueOf(id));
		model.addAttribute("GTypes", types);
		List<Gtype> alltypes=gbiz.AllType();
		model.addAttribute("alltype", alltypes);
		return  "shopGoodsShowStyle2";
	}
	@RequestMapping("shopIndex")
	public String   shopIndex(String  id,Model  model) {
		Shop   shop=sBiz.select(Integer.valueOf(id));
		model.addAttribute("shop",shop);
		User  u=uBiz.selectUser(shop.getUid());
		model.addAttribute("ShopOwner", u);
		List<Image> list=iBiz.findByShop(Integer.valueOf(id));
		model.addAttribute("shopImage", list);
		List<Goods>  goodslist=gsBiz.selectByOrdernum(shop.getId(),"ordernum");
		List<Goods>  hotgoodslist=new ArrayList<>();
		if(goodslist.size()>6) {
			for(int i=0;i<6;i++) {
				hotgoodslist.add(goodslist.get(i));
			}
		}else {
			for(Goods  g:goodslist) {
				hotgoodslist.add(g);
			}
		}
		model.addAttribute("hotgoods", hotgoodslist);
		List<Goods>  goodslist1=gsBiz.selectShopGoods(shop.getId(), "regtime");
		List<Goods>  newgoodslist=new ArrayList<>();
		if(goodslist1.size()>6) {
			for(int i=0;i<6;i++) {
				newgoodslist.add(goodslist.get(i));
			}
		}else {
			for(Goods  g:goodslist1) {
				newgoodslist.add(g);
			}
		}
		
		model.addAttribute("newgoods",newgoodslist);
		
		List<Goods>  discountgoodslist=new ArrayList<>();
		if(goodslist.size()>5) {
			for(int i=goodslist.size()-1;i>goodslist.size()-6;i--) {
				discountgoodslist.add(goodslist.get(i));
			}
		}else {
			for(int i=goodslist.size()-1;i>=0;i--) {
				discountgoodslist.add(goodslist.get(i));
			}
		}
		model.addAttribute("discountgoods",discountgoodslist);
		List<Gtype> types=gbiz.findAll(Integer.valueOf(id));
		model.addAttribute("GTypes", types);
		List<Gtype> alltypes=gbiz.AllType();
		model.addAttribute("alltype", alltypes);
		return  "shopIndex";
	}
	
	@RequestMapping("shopintro")
	public String shopIntroduce(String id,Model  model) {
		Shop   shop=sBiz.select(Integer.valueOf(id));
		model.addAttribute("shop",shop);
		User  u=uBiz.selectUser(shop.getUid());
		model.addAttribute("ShopOwner", u);
		List<Gtype> types=gbiz.findAll(Integer.valueOf(id));
		model.addAttribute("GTypes", types);
		List<Gtype> alltypes=gbiz.AllType();
		model.addAttribute("alltype", alltypes);
		return "shopIntroduce";
	}
}
