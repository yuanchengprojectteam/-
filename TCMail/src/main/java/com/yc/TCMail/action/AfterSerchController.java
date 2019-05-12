package com.yc.TCMail.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.TCMail.bean.Favorite;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.Jude;
import com.yc.TCMail.bean.OrderdetailsOderBy;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.dao.GoodsMapper;
import com.yc.TCMail.dao.OrderBy;

@Controller
@SessionAttributes(names= {"hostRecommend","typeid","loginedUser"})
public class AfterSerchController {

	
	@Resource
	OrderBy ob;
	
	
	@Resource
	AfterSerchMethod am;
	
	@Resource
	ZhouMethod zm;
	
	@Resource
	GoodsMapper gm;
	
	@RequestMapping("showStyle1")
	public String showStyle1(String gtype,Model model) {
		
		//470行
		User user = new User();
		user.setId(3);
		
		Gtype type = am.queryGtype(gtype);
		int tid = type.getId();
		List<OrderdetailsOderBy> list = ob.selectOrderBy(tid);
		//System.out.println("list===:"+list.get(0).getGnum());
		List<Goods> hostGoods = new ArrayList<Goods>();
		
		for(int i=0;i<3;i++) {
			int gid = list.get(i).getGid();
			Goods good = zm.queryGoods(gid, gm);
			hostGoods.add(good);
		}
		List<Goods> allGood = am.queryAllGoods(tid);
		
		model.addAttribute("loginedUser",user);
		model.addAttribute("hostRecommend",hostGoods);
		model.addAttribute("allGoods",allGood);
		model.addAttribute("typeid",type);
		return "AfterSerchShowStyle1";
	}
	
	@RequestMapping("buyNum")
	public String buyNum(String tid ,Model model) {
		List<OrderdetailsOderBy> list = ob.selectOrderBy(Integer.valueOf(tid));
		//System.out.println("list===:"+list.get(0).getGnum());
		List<Goods> buyGoods = new ArrayList<Goods>();
		
		for(int i=0;i<list.size();i++) {
			int gid = list.get(i).getGid();
			Goods good = zm.queryGoods(gid, gm);
			buyGoods.add(good);
		}
		model.addAttribute("allGoods",buyGoods);
		return "AfterSerchShowStyle1";
	}
	
	@RequestMapping("price")
	public String price(String tid ,Model model) {
		List<Goods> list = ob.selectPriceOrderBy(Integer.valueOf(tid));
		model.addAttribute("allGoods",list);
		return "AfterSerchShowStyle1";
	}
	
	@RequestMapping("commentNum")
	public String commentNum(String tid ,Model model) {
		List<Goods> list = ob.selectcommentOrderBy(Integer.valueOf(tid));
		model.addAttribute("allGoods",list);
		return "AfterSerchShowStyle1";
	}
	
	@RequestMapping("ScopePrice")
	public String ScopePrice(@SessionAttribute("typeid") Gtype type,String low ,String top,Model model) {
		int low1 = Integer.valueOf(low);
		int top1 = Integer.valueOf(top);
		List<Goods> list = ob.selectScopeOrderBy(type.getId(),low1,top1);
		model.addAttribute("allGoods",list);
		return "AfterSerchShowStyle1";
	}
	
	@RequestMapping("collction")
	@ResponseBody
	public Jude collection(@SessionAttribute("loginedUser")User user, Goods good ) {
		System.out.println("===========================进入"+good.getId());
		Favorite fav = new Favorite();
		int gid = good.getId();
		Goods list = zm.queryGoods(gid, gm);
		int sid = list.getSid();
		int uid = user.getId();
		String ftime = am.formatDate(new Date());
		fav.setFtime(ftime);
		fav.setGoodsid(gid);
		fav.setShopid(sid);
		fav.setUid(uid);
		int count = am.addFavorite(fav);
		Jude jude = new Jude();
		jude.setCount(count);
		System.out.println("=========收藏加入"+count+"条记录");
		return jude;
	}
	
	
	@RequestMapping("lootbuy")
	public String lootBuy(String gid) {
		Goods good = am.queryGoods(gid);
		
		return "GoodsDetail";
	}
	
	
	@RequestMapping("showStyle2")
	public String showStyle2( ) {
		
		
		return "AfterSerachShowStyle2";
	}
}
