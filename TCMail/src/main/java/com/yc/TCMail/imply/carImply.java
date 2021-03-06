package com.yc.TCMail.imply;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.criterion.Example;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.TCMail.bean.Car;
import com.yc.TCMail.bean.CarExample;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.GoodsExample;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.Result;
import com.yc.TCMail.bean.Shop;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.dao.CarMapper;
import com.yc.TCMail.dao.GoodsMapper;
import com.yc.TCMail.util.HbUtil;

@Service
@Transactional(rollbackFor=BizException.class)
public class carImply {
	@Autowired
	private HbUtil hb;
	
	@Resource
	private CarMapper cm;
	
	@Resource
	private GoodsMapper gm;
	
	public List<Car> selectCarByUser(User user) {
		List<Car> ret = cm.selectCarByUser(user);
		for(Car car : ret) {
			car.setTotalPrice(car.getGoods().getPrice()*car.getNum());
		}
		return ret;
	}
	
	public List<Goods> selectCarGoods(Integer id, int ty) {
		@SuppressWarnings("unchecked")
		List<Car> goods = hb.getCriteria(Car.class).add(Restrictions.eq("uid", id)).list();
		System.out.println(goods);
		
		List<Goods> gl = new ArrayList<Goods>();
		for (Car g : goods) {
			System.out.println(g);
			Goods goodss = (Goods) hb.getCriteria(Goods.class).add(Restrictions.eqOrIsNull("id", g.getGid())).list()
					.get(0);
			Gtype type = (Gtype) hb.getCriteria(Gtype.class).add(Restrictions.eqOrIsNull("id", goodss.getTid())).list()
					.get(0);
			goodss.setType(type);
			g.setTotalPrice(goodss.getPrice()*g.getNum());
			if (ty == 1) {
				goodss.setShop((Shop) hb.getCriteria(Shop.class).add(Restrictions.eqOrIsNull("id", goodss.getSid())).list().get(0));
				goodss.setCar(g);
			}
			gl.add(goodss);
		}
		if (ty == 1) {
			return gl;
		} else {
			if (gl.size() > 5) {
				for (int i = 5; i < gl.size(); i++) {
					gl.remove(i);
				}
			}
			return gl;
		}
	}

	public Result operateCar(Integer operate, Integer id,Integer num) throws BizException{
		Car car = cm.selectByPrimaryKey(id);
		Goods  goods = gm.selectByPrimaryKey(car.getGid());
		CarExample example = new CarExample();
		Car ca = new Car();
		if(operate == 1) {
			if(goods.getNum() > num) {
				example.createCriteria().andIdEqualTo(id);
				ca.setNum(num+1);
				cm.updateByExampleSelective(ca, example);
				return Result.success(null, cm.selectByPrimaryKey(id).getNum());
			}else {
				return Result.failure("该商品已售罄,快清空已加入的商品吧",goods);
			}
		}else{
			if( num > 1) {
				example.createCriteria().andIdEqualTo(id);
				ca.setNum(num-1);
				cm.updateByExampleSelective(ca, example);
				return Result.success(null, cm.selectByPrimaryKey(id).getNum());
			}else {
				return Result.failure("该商品不能再减少了呦~",num);
			}
		}
		
	}

}
