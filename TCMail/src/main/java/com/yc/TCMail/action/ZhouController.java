package com.yc.TCMail.action;


import java.io.IOException;
import java.util.List;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.TCMail.bean.Car;
import com.yc.TCMail.bean.Comment;
import com.yc.TCMail.bean.Favorite;
import com.yc.TCMail.bean.FavoriteExample;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Orderdetail;
import com.yc.TCMail.bean.Shop;
import com.yc.TCMail.bean.Uorder;
import com.yc.TCMail.bean.UorderExample;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.dao.CarMapper;
import com.yc.TCMail.dao.FavoriteMapper;
import com.yc.TCMail.dao.GoodsMapper;
import com.yc.TCMail.dao.GoodsmsgMapper;
import com.yc.TCMail.dao.ShopMapper;
import com.yc.TCMail.dao.UorderMapper;
import com.yc.TCMail.util.HttpUtil;

@Controller
@SessionAttributes(names={"favorite","Sendcode"})
public class ZhouController {
	@Resource
	FavoriteMapper fm ;
	
	@Resource
	GoodsMapper gm ;
	
	@Resource
	GoodsmsgMapper gsm ;
	
	@Resource
	ShopMapper sm;
	
	@Resource
	CarMapper cm;
	
	@Resource
	ZhouMethod zm;
	
	@Resource
	UorderMapper um;
	
	
	@GetMapping("center")
	public String center(@SessionAttribute("loginedUser") User user,Model model) {	
		//184行
		String statu = "未评价";
		UorderExample ue = new UorderExample();
		ue.createCriteria().andOrderstatuEqualTo(statu).andUidEqualTo(user.getId());
		int count = (int) um.countByExample(ue);
		model.addAttribute("count",count);
		return "PersonCenter";
	}
	
	@RequestMapping("MyFavorite")
	public String MyFavorite(@SessionAttribute("loginedUser") User user, Model model) {
		//System.out.println("==================="+user);
		Favorite f = new Favorite();
		f.setUid(user.getId());
		FavoriteExample fe = new FavoriteExample();
		List<Favorite> set = zm.selectAllFavorite(fe, fm, gm, f);
		model.addAttribute("favorites",set);
		//184行
		return "MyFavorite";
	}
	
	@RequestMapping("fdelect")
	@ResponseBody
	public Favorite delect(Favorite f ,Model model ) {
		FavoriteExample fe = new FavoriteExample();
		fe.createCriteria().andIdEqualTo(f.getId());
		fm.deleteByExample(fe);
		return f; 
	}
	
	@RequestMapping("zhouAddCar")
	public String zhouAddCar(Favorite f ,Model model) {
		int gid = f.getGoodsid();
		int uid = f.getUid();
		zm.addCar(gid, uid, cm);
		List<Car> list = zm.queryAllCar(uid, cm, gm, sm);
		model.addAttribute("carAll",list);
		return "Car";
		//return "re....;queryCar?id="+f.getUid();
	}
	
	@RequestMapping("queryCar")
	public String queryCar(@SessionAttribute("loginedUser")User user ,Model model) {
		//System.out.println("==============="+id);
		List<Car> list = zm.queryAllCar(user.getId(), cm, gm, sm);
		model.addAttribute("favoriteList",list);
		return "Car";
	}
	
	@GetMapping("index")
	public String index() {	

		return "index";
	}
	
	
	
	@RequestMapping("commentAndShowOrder")
	public String commentAndShowOrder(@SessionAttribute("loginedUser")User user, Model model) {	
		String statu = "未评价";
		UorderExample ue = new UorderExample();
		ue.createCriteria().andOrderstatuEqualTo(statu).andUidEqualTo(user.getId());
		List<Uorder> list = um.selectByExample(ue);
		int count = (int) um.countByExample(ue);
		for(Uorder uorder : list) {
			int orderid = uorder.getId();
			int userid = uorder.getUid();
			List<Orderdetail> details = zm.queryOrderdetail(orderid);
			User users = zm.queryUser(userid);
			System.out.println("==================="+users.getName());
			uorder.setDetails(details);
			uorder.setUser(user);	
		}
		list =  zm.queryOrderUorder(list);
		/*for(Goods g : set) {
			System.out.println("=================="+g.getName());
		}*/
		
		model.addAttribute("orderGoods",list);
		model.addAttribute("count",count);
		
		return "commentAndShowOrder";
	}
	
	//comment
		@RequestMapping("comment")
		public String comment(int oid , Goods goods,Model model) {	
			//System.out.println(oid+":"+goods.getId());
			Orderdetail od = new Orderdetail();
			Goods good = zm.queryGoods(goods.getId(), gm);
			Shop shop = zm.queryIdShop(good.getSid());
			User user = zm.queryUser(shop.getUid());
			shop.setUser(user);
			good.setShop(shop);
			Uorder uorder = zm.queryIdUorder(oid);
			od.setGoods(good);
			od.setUorder(uorder);
			model.addAttribute("comm",od);
			return "comment";
		}
		
		@RequestMapping("commentMsg")
		@ResponseBody
		public String commentMsg(@SessionAttribute("loginedUser")User user,@RequestParam("watti") String watti
				,@RequestParam("gfit") String gfit
				,@RequestParam("atti") String atti
				,@RequestParam("speed") String speed
				,@RequestParam("satisf") String satisf
				,@RequestParam("msg") String msg
				,@RequestParam("file") Part[] file) {
			Comment comm = new Comment();
			String img="";
			for(Part p :file) {
				if(p != null) {
					try {
						p.write("D:/image/"+p.getSubmittedFileName());
						img = img+","+"D:/image/"+p.getSubmittedFileName();
					} catch (IOException e) {
						e.printStackTrace();
					}
					
				}
				
			}
			comm.setAtti(Integer.valueOf(atti));
			comm.setGfit(Integer.valueOf(gfit));
			comm.setMsg(msg);
			comm.setSpeed(Integer.valueOf(speed));
			comm.setWatti(Integer.valueOf(watti));
			comm.setSatisf(Integer.valueOf(satisf));
			comm.setImg(img);
			comm.setCommenttime(zm.now());
			comm.setUid(user.getId());
			return zm.insertComment(comm);
						
		}
		
		@RequestMapping("MyScode")
		public String MyScode(@SessionAttribute("loginedUser")User user,Model model) {
			UorderExample ue = new UorderExample();
			ue.createCriteria().andUidEqualTo(user.getId());
			List<Uorder> list = um.selectByExample(ue);
			for(Uorder uorder : list) {
				int orderid = uorder.getId();
				int userid = uorder.getUid();
				List<Orderdetail> details = zm.queryOrderdetail(orderid);
				User users = zm.queryUser(userid);
				System.out.println("==================="+users.getName());
				uorder.setDetails(details);
				uorder.setUser(user);	
			}
			list =  zm.queryOrderUorder(list);
			
			model.addAttribute("pointGoods",list);
			model.addAttribute("PointNum",zm.queryPoint(user.getId()));
			
			return "MyScode";
		}
		
		@RequestMapping("UserSecurity")
		public String  UserSecurity(@SessionAttribute("loginedUser")User user,Model model) {
			int uid = user.getId();
			int i = zm.queryPwdStrength(uid);
			model.addAttribute("pwdStrength",i);
			User zhou = zm.queryUser(uid);
			model.addAttribute("zhou",zhou);
			return "UserSecurity";
		}
		
		@RequestMapping("pwdChange1")
		public String alterPhoneNumber(@SessionAttribute("loginedUser")User user,Model model) {
			
			int uid = user.getId();
			
			String i = zm.queryPhone(uid);
			
			model.addAttribute("phone",i);
			
			return "pwdChange1";
		}
		
		@PostMapping("getCode")
		@ResponseBody
		public void getCode(@RequestParam("phone") String phone ,@RequestParam("code") String code,Model model ) {
			System.out.println(phone+":"+code);
			HttpUtil.SMS(code, phone);
			model.addAttribute("Sendcode",code);
		}
		
		@PostMapping("pwdChange2")
		public String verificationCode(@SessionAttribute("Sendcode") String code,Model model,
				@RequestParam("authCode") String atuoCode ,HttpSession session) {
			System.out.println(atuoCode);
			System.out.println(session.getAttribute("Sendcode"));
			if(atuoCode.equals(session.getAttribute("Sendcode"))) {
				return "pwdChange2";
			}
			return "pwdChange1";
		}
		
		@PostMapping("pwdChange")
		@ResponseBody
		public String pwdChange(@SessionAttribute("loginedUser")User user 
					,@RequestParam("pwd") String pwd ) {
			//System.out.println("=================="+pwd);
			zm.updatePwd(pwd,user.getId());
			return "修改成功！！";
		}
	
		

}
