package com.yc.TCMail.action;

import java.text.SimpleDateFormat;
import java.util.List;

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
	GoodsMapper gmpp;
	
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

	public  void addCar(int gid, int uid, CarMapper cm) {
		// TODO Auto-generated method stub
		Car car = new Car();
		car.setGid(gid);
		car.setUid(uid);
		cm.insert(car);	
	}

	public  List<Car> queryAllCar(int uid, CarMapper cm,GoodsMapper gm,ShopMapper sm) {
		// TODO Auto-generated method stub
		
		CarExample ce = new CarExample();
		ce.createCriteria().andUidEqualTo(uid);
		List<Car> list = cm.selectByExample(ce);
		for(Car car : list) {
			int gid = car.getGid();
			Goods good = queryGoods(gid,gm);
			int sid = good.getSid();
			Shop shop = sm.selectByPrimaryKey(sid);
			good.setShop(shop);
			car.setGoods(good);
			//System.out.println(shop+":"+good);
		}
		return list;
	}

	public Goods queryGoods(int gid,GoodsMapper gm) {
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
				Goods goods = gmpp.selectByPrimaryKey(gid);
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

	
}
