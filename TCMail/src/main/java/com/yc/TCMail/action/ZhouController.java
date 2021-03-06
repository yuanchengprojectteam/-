package com.yc.TCMail.action;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.aliyun.oss.ClientException;
import com.aliyun.oss.OSSException;

import com.yc.TCMail.bean.Comment;
import com.yc.TCMail.bean.Favorite;
import com.yc.TCMail.bean.FavoriteExample;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Jude;
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
import com.yc.TCMail.util.OssUtil;

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
	
	@Autowired
	OssUtil oss;
	
	
	@GetMapping("center")
	public String center(@SessionAttribute("loginedUser") User user,Model model) {	
		//184行
		String statu = "待评价";
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
		List<Favorite> favorShop = new ArrayList<Favorite>();
		List<Favorite> favor = new ArrayList<Favorite>();
		for(Favorite fav : set) {
			if(fav.getGoodsid() == null) {
				Shop shop = zm.queryShopAndAllGoods(fav.getShopid());
				/*System.out.println("==================="+shop.getUser().getImage());
				System.out.println("==================="+shop.getGood().get(0));
				System.out.println("==================="+shop.getName());*/
				fav.setShop(shop);
				
				favorShop.add(fav);
			}else {
				favor.add(fav);
			}
		}
		
		model.addAttribute("favorites",favor);
		model.addAttribute("favoritesAndGoods",favorShop);
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
	public String zhouAddCar(Favorite f , String num ,Model model) {

		Favorite f1 = fm.selectByPrimaryKey(f.getId());
		System.out.println(f1+"=============");
		int gid = f1.getGoodsid();
		int uid = f1.getUid();
		int sid = f1.getShopid();
		zm.addCar(gid, uid,Integer.valueOf(num),sid, cm);
		List<Goods> list = zm.queryAllCar(uid, cm,sm);
		//System.out.println("==================="+list.size());
		model.addAttribute("CarList",list);
		model.addAttribute("msg","add Success");
		return "MyFavorite";
	}
	
	@RequestMapping("zhouAddCarShop")
	public String zhouAddCarShop(Shop s , String num ,String gid,Model model) {
		Shop f1 = sm.selectByPrimaryKey(s.getId());
		int uid = f1.getUid();
		int sid = f1.getId();
		zm.addCar(Integer.valueOf(gid), uid,Integer.valueOf(num),sid, cm);
		List<Goods> list = zm.queryAllCar(uid, cm,sm);
		//System.out.println("==================="+list.size());
		model.addAttribute("cglistcar",list);
		return "Car";
		//return "re....;queryCar?id="+f.getUid();
	}
	
	@RequestMapping("queryCar")
	public String queryCar(@SessionAttribute("loginedUser")User user ,Model model) {
		//System.out.println("==============="+id);
		List<Goods> list = zm.queryAllCar(user.getId(), cm,sm);
		model.addAttribute("favoriteList",list);
		return "Car";
	}
	

	/*@GetMapping("index")
	public String index() {	

		return "index";
	}
	*/

	
	@RequestMapping("commentAndShowOrder")
	public String commentAndShowOrder(@SessionAttribute("loginedUser")User user, Model model) {	
		String statu = "待评价";
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
		for(Uorder u :list ) {
			System.out.println("============="+u.getDetails().get(0).getGoods().getName());
		}
		model.addAttribute("orderGoods",list);
		model.addAttribute("count",count);
		
		return "commentAndShowOrder";
	}
	
	//comment
		@RequestMapping("comment")
		public String comment(int oid , Goods goods,Model model) {	
			//System.out.println(oid+":"+goods.getId());
			Orderdetail od = new Orderdetail();
			Goods good = zm.queryGoods(goods.getId());
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
		public Jude commentMsg(@SessionAttribute("loginedUser")User user,@RequestParam("watti") String watti
				,@RequestParam("gfit") String gfit
				,@RequestParam("atti") String atti
				,@RequestParam("speed") String speed
				,@RequestParam("satisf") String satisf
				,@RequestParam("msg") String msg
				,@RequestParam("file") MultipartFile[] file
				,@RequestParam("uoid") String uoid
				,@RequestParam("gid")String gid
				,@RequestParam("oid")String oid) throws OSSException, ClientException, IOException{
			System.out.println("====================="+oid);
			
			Comment comm = new Comment();
			String img="";
			/*for(MultipartFile p :file) {
				if(p != null) {
						p.write("D:/image/"+p.getSubmittedFileName());
						img = img+","+"D:/image/"+p.getSubmittedFileName();
						img = img+","+oss.upload(p, 2);		
				}
				
			}*/
			for(int i=0,j=0;i<file.length;i++) {
				
					//System.out.println(file[i]);
					if(j==0) {
						img = oss.upload(file[i], 2);
					}else {
						String s = oss.upload(file[i], 2);
						if(!"upload have problem!".equals(s)) {
							img = img +","+s;
						}	
					}
					j++;
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
			comm.setGid(Integer.parseInt(oid));
			zm.updateUorderStatu(uoid);
			zm.insertComment(comm);
			zm.updateCommnum(gid);
			Jude jude = new Jude();
			jude.setCount(1);
			return jude;
						
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
