package com.yc.TCMail.action;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.yc.TCMail.bean.Car;
import com.yc.TCMail.bean.Favorite;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Shop;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.util.HbUtil;

@Controller
public class CarProcessAction {
	
	@Autowired
	HbUtil hb;
	
	@PostMapping("delfromCar")
	public void delFromCar(Car car,HttpServletResponse resp) {
		System.out.println(car);
		try {
			Car carl=hb.getSession().load(Car.class,car.getId());
			hb.getTransaction().begin();
			hb.getSession().delete(carl);
			hb.getTransaction().commit();
			resp.getWriter().write("already delete from car");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("addToFav")
	public void addToFav(Goods goods,String cid,@SessionAttribute("loginedUser") User user,HttpServletResponse resp) throws IOException {
		
		System.out.println(cid+"================");
		Favorite fav=new Favorite();
		fav.setGoodsid(goods.getId());
		SimpleDateFormat sim= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		fav.setFtime(sim.format(new Date()));
		fav.setUid(user.getId());
		Goods good=hb.getSession().load(Goods.class, goods.getId());
		System.out.println(good);
		Shop shop=(Shop) hb.getCriteria(Shop.class).add(Restrictions.eqOrIsNull("id",good.getSid())).list().get(0);
		fav.setShopid(shop.getId());
		hb.getSession().delete(hb.getCriteria(Car.class).add(Restrictions.eqOrIsNull("id",Integer.valueOf(cid))).list().get(0));
		hb.getSession().beginTransaction();
		hb.getSession().save(fav);
		
		hb.getTransaction().commit();
		
		resp.getWriter().write("add success!");
	}
	
	@PostMapping("deleteFCar")
	public void deleteFCar(@RequestParam("srt")String str,HttpServletResponse resp) throws IOException {
		System.out.println("-=========================================================="+str);
		String[] cid=str.split(":");
		hb.getTransaction().begin();
		for(int i=0;i<cid.length-1;i++) {
			Car carl=hb.getSession().load(Car.class,cid[i]);
			hb.getSession().delete(carl);
		}
		hb.getTransaction().commit();
		resp.getWriter().write("already delete from car");
	}
	
	@RequestMapping("canAddNum")
	public void canAddNum(@RequestParam("num")String num,String id,HttpServletResponse resp) throws IOException {
		Goods goods= hb.getSession().load(Goods.class,Integer.parseInt(id));
		if(goods.getNum()<Integer.parseInt(num)){
			resp.getWriter().write("no");
		}else {
			resp.getWriter().write("ok");
		}
	}
	
	
}

