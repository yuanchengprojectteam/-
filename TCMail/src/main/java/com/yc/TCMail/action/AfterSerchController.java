package com.yc.TCMail.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.TCMail.bean.Address;
import com.yc.TCMail.bean.Favorite;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Goodsmsg;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.Image;
import com.yc.TCMail.bean.Jude;
import com.yc.TCMail.bean.OrderdetailsOderBy;
import com.yc.TCMail.bean.Shop;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.dao.CarMapper;
import com.yc.TCMail.dao.GoodsMapper;
import com.yc.TCMail.dao.OrderBy;

@Controller
@SessionAttributes(names= {"hostRecommend","typeid","loginedUser"})
public class AfterSerchController {

	
	@Resource
	OrderBy ob;
	
	@Resource
	CarMapper cm;
	
	@Resource
	AfterSerchMethod am;
	
	@Resource
	ZhouMethod zm;
	
	@Resource
	GoodsMapper gm;
	
	@Resource
	private  GoodsBiz  gsBiz;
	
	
	
	
	@RequestMapping("showStyle1")
	public String showStyle1(String gtype,Model model) {
		
		//470行
		List<Goods> hostGoods = new ArrayList<Goods>();
		List<Gtype> type = am.querySunGtype(gtype);
		String tid = "";
		for(int i=0;i<type.size();i++) {
			if(i>0) {
				tid = tid+",";
			}
			tid = tid+type.get(i).getId();
			
		}
		System.out.println("======================="+tid);
		
		List<OrderdetailsOderBy> list = ob.selectOrderBy(tid);
		//System.out.println("list===:"+list.get(0).getGnum());
		
		
		for(int i=0;i<list.size();i++) {
			if(i<3) {
				int gid = list.get(i).getGid();
				Goods good = zm.queryGoods(gid);
				//System.out.println("host"+good);
				hostGoods.add(good);
			}
			
		}
		List<Goods> allGood = ob.queryAllGoods(tid);
		
		//model.addAttribute("loginedUser",user);
		model.addAttribute("hostRecommend",hostGoods);
		model.addAttribute("allGoods",allGood);
		model.addAttribute("typeid",tid);
		model.addAttribute("typeName",type);
		return "AfterSerchShowStyle1";
	}
	
	@RequestMapping("queryGoods")
	public String queryGoods(String msg,Model model) {
		List<Goods> allGood = new ArrayList<Goods>();
		List<Goods> hostGood = new ArrayList<Goods>();
		List<Gtype> gtype = am.queryLikeGtype(msg);
		for(Gtype g : gtype) {
			List<Goods> Good = am.queryAllGoods(g.getId());
			for(Goods gos : Good) {
				allGood.add(gos);
			}
		}
		
		if(allGood.size()>2) {
			for(int i=0;i<allGood.size();i++) {
				if(i<4) {
					hostGood.add(allGood.get(i));
				}
				
			
			}
		}else {
			hostGood = allGood;
		}
		model.addAttribute("hostRecommend",hostGood);
		model.addAttribute("allGoods",allGood);
		Gtype gty = null;
		if(gtype.size()>0) {
			gty = gtype.get(0);
		}
		model.addAttribute("typeid",gty);
		return "AfterSerchShowStyle1";
	}
	
	
	@RequestMapping("buyNum")
	public String buyNum(@SessionAttribute("typeid") String tid ,Model model) {
		List<OrderdetailsOderBy> list = ob.selectOrderBy(tid);
		//System.out.println("list===:"+list.get(0).getGnum());
		List<Goods> buyGoods = new ArrayList<Goods>();
		
		for(int i=0;i<list.size();i++) {
			int gid = list.get(i).getGid();
			Goods good = zm.queryGoods(gid);
			buyGoods.add(good);
		}
		model.addAttribute("allGoods",buyGoods);
		return "AfterSerchShowStyle1";
	}
	
	@RequestMapping("price")
	public String price(@SessionAttribute("typeid") String tid ,Model model) {
		List<Goods> list = ob.selectPriceOrderBy(tid);
		model.addAttribute("allGoods",list);
		return "AfterSerchShowStyle1";
	}
	
	@RequestMapping("commentNum")
	public String commentNum(@SessionAttribute("typeid")String tid,Model model) {
		List<Goods> list = ob.selectcommentOrderBy(tid);
		model.addAttribute("allGoods",list);
		return "AfterSerchShowStyle1";
	}
	
	@RequestMapping("ScopePrice")
	public String ScopePrice(@SessionAttribute("typeid")String tid,String low ,String top,Model model) {
		int low1 = Integer.valueOf(low);
		int top1 = Integer.valueOf(top);
		List<Goods> list = ob.selectScopeOrderBy(tid,low1,top1);
		model.addAttribute("allGoods",list);
		return "AfterSerchShowStyle1";
	}
	
	@RequestMapping("collction")
	@ResponseBody
	public Jude collection(@SessionAttribute("loginedUser")User user, Goods good ) {
		System.out.println("===========================进入"+good.getId());
		Favorite fav = new Favorite();
		int gid = good.getId();
		Goods list = zm.queryGoods(gid);
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
	public String lootBuy(Integer gid,Model model,HttpServletRequest request) {
		Goods good = am.queryGoods(String.valueOf(gid));
		//System.out.println("==================="+good);
		List<Goodsmsg> list = am.queryGoodmsgByGid(String.valueOf(gid));
		//System.out.println("================"+good.getTid());
		
		for( Goodsmsg gs : list) {
			List<Image> image = am.queryImage(gs.getId());
			gs.setImage(image);
		}
		
		/*int id = good.getTid();
		Gtype gtype = am.queryGtypeById(id);*/
		
		good.setListGmsg(list);
		/*List<String> typeNameList = am.queryTypeNameList(gtype);*/
		
		List<Goods> hostGoods = am.HostGoods(good.getTid());
		
		model.addAttribute("goodMsg",good);
		model.addAttribute("hostGoods",hostGoods);
		
		/*model.addAttribute("gtypeToUp",typeNameList);*/
		
		User user=(User) request.getSession().getAttribute("loginedUser");
		System.out.println("==================="+user+"==================");
		if(user != null) {
			try {
				gsBiz.addGoodsBrowseRecord(user, gid);
			} catch (BizException e) {
				e.printStackTrace();
				System.out.println(e.getMessage());
			}
		}
		
		return "GoodsDetail";
	}
	
	@RequestMapping("goodAddCar")
	@ResponseBody
	public Jude goodAddCar(@SessionAttribute("loginedUser")User user, String sid,String gid,String sum) {
		int uid = user.getId();
		int shopid = Integer.parseInt(sid);
		zm.addCar(Integer.valueOf(gid), uid,Integer.valueOf(sum),shopid, cm);
		Jude jude = new Jude();
		jude.setCount(1);
		
		return jude;
	}
	
	@RequestMapping("addOrder")
	public String addOrder(@SessionAttribute("loginedUser")User user, Model model
			,String goodId,String size,String color,String sum) {
		System.out.println(size+";"+color+";"+sum);
		List<Goods> lootBuyGoods = new ArrayList<Goods>();
		Goods BuyGoods = am.queryGoods(goodId);
		double sumPrice =BuyGoods.getPrice();
		BuyGoods.setColor(color);
		BuyGoods.setSize(size);
		BuyGoods.setSum(sum);
		lootBuyGoods.add(BuyGoods);
		int uid = user.getId();
		List<Address> addr = am.queryAllAboutUid(uid);
		model.addAttribute("addr",addr);
		model.addAttribute("sumPrice",sumPrice);
		model.addAttribute("lootBuyGoods",lootBuyGoods);
		return "addOrder";
	}
	
	@RequestMapping("fromCarAddOrder")
	public String fromCarAddOrder(@SessionAttribute("loginedUser")User user,String gidArray, Model model) {
		List<Goods> lootBuyGoods = new ArrayList<Goods>();
		//System.out.println("==========================================="+gc.size());
		String [] gidNum = gidArray.split(",");
		double sumPrice = 0;
		for(int i=0;i<gidNum.length;i++) {
			Goods BuyGoods = am.queryGoods(gidNum[i]);
			sumPrice = sumPrice + BuyGoods.getPrice();
			lootBuyGoods.add(BuyGoods);
		}
		int uid = user.getId();
		List<Address> addr = am.queryAllAboutUid(uid);
		model.addAttribute("addr",addr);
		model.addAttribute("sumPrice",sumPrice);
		model.addAttribute("lootBuyGoods",lootBuyGoods);
		return "addOrder";
	}
	
	
	@RequestMapping("Alipayindex")
	public String showStyle2( ) {
		
		
		return "Alipayindex";
	}
}
