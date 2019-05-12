package com.yc.TCMail.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.TCMail.bean.Car;
import com.yc.TCMail.bean.CarExample;
import com.yc.TCMail.bean.Comment;
import com.yc.TCMail.bean.Favorite;
import com.yc.TCMail.bean.FavoriteExample;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.GoodsExample;
import com.yc.TCMail.bean.Orderdetail;
import com.yc.TCMail.bean.OrderdetailExample;
import com.yc.TCMail.bean.Point;
import com.yc.TCMail.bean.PointExample;
import com.yc.TCMail.bean.Shop;
import com.yc.TCMail.bean.Uorder;
import com.yc.TCMail.bean.UorderExample;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.bean.UserExample;
import com.yc.TCMail.dao.CarMapper;
import com.yc.TCMail.dao.CommentMapper;
import com.yc.TCMail.dao.FavoriteMapper;
import com.yc.TCMail.dao.GoodsMapper;
import com.yc.TCMail.dao.OrderdetailMapper;
import com.yc.TCMail.dao.PointMapper;
import com.yc.TCMail.dao.ShopMapper;
import com.yc.TCMail.dao.UorderMapper;
import com.yc.TCMail.dao.UserMapper;


@Service
@Transactional
public class ZhouMethod {
	
	
	@Resource
	OrderdetailMapper odm;
	
	@Resource
	UserMapper userm;
	
	@Resource
	UorderMapper um;
	
	@Resource
	ShopMapper sm;
	
	@Resource
	CommentMapper cm;
	
	@Resource
	PointMapper pm;
	
	@Resource
	GoodsMapper gm;
	
	
	public  List<Favorite> selectAllFavorite(FavoriteExample fe,FavoriteMapper fm,GoodsMapper gm,Favorite f) {
		fe.createCriteria().andUidEqualTo(f.getUid());
		List<Favorite> set = fm.selectByExample(fe);
		for(Favorite fav : set) {
			Goods good =gm.selectByPrimaryKey(fav.getGoodsid());
			fav.setGoods(good);
			//System.out.println(fav.getGood().getSize());
		}
		return set;
	}

	public  void addCar(int gid, int uid,int num,int sid, CarMapper cm) {
		// TODO Auto-generated method stub
		Car car = new Car();
		
		CarExample ce = new CarExample();
		ce.createCriteria().andUidEqualTo(uid).andGidEqualTo(gid);
		List<Car> list = cm.selectByExample(ce);
		if(list.size()>0) {
			 car = list.get(0);
			 //System.out.println("=============="+car);
			 int i = car.getNum();
			 i=i+num;
			 car.setNum(i);
			 CarExample ce1 = new CarExample(); 
			 ce1.createCriteria().andIdEqualTo(car.getId());
			 cm.updateByExampleSelective(car, ce1);
			 return;
		}
		
		car.setGid(gid);
		car.setUid(uid);
		car.setNum(num);
		car.setSid(sid);
		cm.insert(car);	
	}

	public  List<Goods> queryAllCar(int uid, CarMapper cm,ShopMapper sm) {
		// TODO Auto-generated method stub
		
		CarExample ce = new CarExample();
		ce.createCriteria().andUidEqualTo(uid);
		List<Car> list = cm.selectByExample(ce);
		List<Goods> list1 = new ArrayList<Goods>();
		for(Car car : list) {
			int gid = car.getGid();
			Goods good = queryGoods(gid);
			int sid = good.getSid();
			Shop shop = sm.selectByPrimaryKey(sid);
			good.setShop(shop);
			good.setCar(car);
			//car.setGood(good);
			list1.add(good);
			//System.out.println(shop+":"+good);
		}
		return list1;
	}

	public Goods queryGoods(int gid) {
		GoodsExample ge = new GoodsExample();
		ge.createCriteria().andIdEqualTo(gid);
		List<Goods> list = gm.selectByExample(ge);
		return list.get(0);
	}
	
	public List<Orderdetail> queryOrderdetail(int id){
		OrderdetailExample ode = new OrderdetailExample();
		ode.createCriteria().andOrderidEqualTo(id);
		List<Orderdetail> list = odm.selectByExample(ode);
		return list;
	}
	
	
	public List<Uorder>  queryOrderUorder(List<Uorder> list) {
		//List<Goods> set = new ArrayList<Goods>();
		for( Uorder u : list) {
			List<Orderdetail> orders = u.getDetails();
			for(Orderdetail o : orders) {
				int gid = o.getGid();
				Goods goods = gm.selectByPrimaryKey(gid);
				o.setGoods(goods);
			}	
		}	
		return list;
	}
	
	public User queryUser(int id) {
		return userm.selectByPrimaryKey(id);
	}

	public Uorder queryIdUorder(int oid) {
		
		return  um.selectByPrimaryKey(oid);
	}

	public Shop queryIdShop(int sid) {
		// TODO Auto-generated method stub
		
		return sm.selectByPrimaryKey(sid);
	}
	public String now() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd  HH:mm:ss");
		long now = System.currentTimeMillis();
		//System.out.println(sdf.format(now));
		return ""+sdf.format(now);
	}

	public String insertComment(Comment comm) {
		cm.insert(comm);
		return "成功";
	}
	
	public String queryPoint(int uid) {
		PointExample pe = new PointExample();
		pe.createCriteria().andUidEqualTo(uid);
		List<Point> list = pm.selectByExample(pe);
		return ""+list.get(0).getNum();
	}

	public int queryPwdStrength(int id) {
		// TODO Auto-generated method stub
		User user = userm.selectByPrimaryKey(id);
		String pwd = user.getPwd();
				
		return checkPassword(pwd);
	}
	
	public static int checkPassword(String passwordStr) {
        String regexZ = "\\d*";
        String regexS = "[a-zA-Z]+";
        String regexT = "\\W+$";
        String regexZT = "\\D*";
        String regexST = "[\\d\\W]*";
        String regexZS = "\\w*";
        String regexZST = "[\\w\\W]*";
 
        if (passwordStr.matches(regexZ)) {
            return 1;
        }
        if (passwordStr.matches(regexS)) {
            return 1;
        }
        if (passwordStr.matches(regexT)) {
            return 1;
        }
        if (passwordStr.matches(regexZT)) {
            return 2;
        }
        if (passwordStr.matches(regexST)) {
            return 2;
        }
        if (passwordStr.matches(regexZS)) {
            return 2;
        }
        if (passwordStr.matches(regexZST)) {
            return 3;
        }
        return 0;
 
    }

	public String queryPhone(int uid) {
		User user = userm.selectByPrimaryKey(uid);
		return user.getPhone();
	}

	public void updatePwd(String pwd,int uid) {
		// TODO Auto-generated method stub
		User user = userm.selectByPrimaryKey(uid);
		user.setPwd(pwd);
		UserExample ue = new UserExample();
		ue.createCriteria().andIdEqualTo(uid);
		userm.updateByExampleSelective(user, ue);
		
	}

	public void updateUorderStatu(String uoid) {
		
		int id = Integer.parseInt(uoid);
		Uorder uo = um.selectByPrimaryKey(id); 
		uo.setOrderstatu("已评价");
		UorderExample ue = new UorderExample();
		ue.createCriteria().andIdEqualTo(id);
		um.updateByExampleSelective(uo, ue);
		
	}

	public void updateCommnum(String gid) {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(gid);
		Goods good = gm.selectByPrimaryKey(id);
		int num = good.getCommnum();
		num++;
		good.setCommnum(num);
		GoodsExample ge = new GoodsExample();
		ge.createCriteria().andIdEqualTo(id);
		gm.updateByExampleSelective(good, ge);
	}

	public Shop queryShopAndAllGoods(int sid) {
		// TODO Auto-generated method stub
		Shop shop = sm.selectByPrimaryKey(sid);
		GoodsExample ge = new GoodsExample();
		User user = userm.selectByPrimaryKey(shop.getUid());
		shop.setUser(user);
		ge.createCriteria().andSidEqualTo(sid);
		List<Goods> set = gm.selectByExample(ge);
		List<Goods> list = getRandomThreeGoods(set);
		shop.setGood(list);
		
		return shop;
	}

	public Shop queryShopAndAllGoods1(int sid) {
		// TODO Auto-generated method stub
		Shop shop = sm.selectByPrimaryKey(sid);
		GoodsExample ge = new GoodsExample();
		User user = userm.selectByPrimaryKey(shop.getUid());
		shop.setUser(user);
		ge.createCriteria().andSidEqualTo(sid);
		List<Goods> set = gm.selectByExample(ge);
		//List<Goods> list = getRandomThreeGoods(set);
		shop.setGood(set);
		
		return shop;
	}
	public static List<Goods> getRandomThreeGoods(List<Goods> set) {
		Random r = new Random();
		
		List<Goods> list = new ArrayList<Goods>();
		for(int i=0;i<3;i++) {
			int num = set.size();
			int count = r.nextInt(num);
			list.add(set.get(count));
		}
		return list;
	}
	
}
