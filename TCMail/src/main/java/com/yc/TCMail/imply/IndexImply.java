package com.yc.TCMail.imply;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.TCMail.bean.Car;
import com.yc.TCMail.bean.CarExample;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.GoodsExample;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.GtypeExample;
import com.yc.TCMail.dao.CarMapper;
import com.yc.TCMail.dao.GoodsMapper;
import com.yc.TCMail.dao.GtypeMapper;

@Service
public class IndexImply {
	@Autowired
	private GtypeMapper gm;
	@Autowired
	private GoodsMapper gom;
	@Autowired
	private CarMapper cm;

	public List<Gtype> levelOneType() {

		GtypeExample ge = new GtypeExample();
		ge.createCriteria().andPidIsNull().andSunidIsNull();
		List<Gtype> tmp1 = gm.selectByExample(ge);

		for (Gtype g : tmp1) {
			List<Gtype> gtype = gm.selectFourGtypeByPid(g.getId());
			if (gtype.size() > 4) {
				for (int i = 4; i < gtype.size(); i++) {
					gtype.remove(i);
				}
			}
			g.setChildType(gtype);
			;
		}

		return tmp1;
	}

	public List<Gtype> levelTowType() {
		GtypeExample ge = new GtypeExample();
		ge.createCriteria().andPidIsNotNull().andSunidIsNull();
		List<Gtype> gtype = gm.selectByExample(ge);
		for (Gtype gt : gtype) {
			gt.setChildType(gm.selectFourGtypeBySunid(gt.getId()));
		}
		return gtype;
	}

	public List<Gtype> levelThreeTypeAndGoods() {
		GtypeExample ge = new GtypeExample();
		ge.createCriteria().andSunidIsNotNull();
		List<Gtype> tmp = gm.selectByExample(ge);

		for (Gtype gt : tmp) {
			GoodsExample gde = new GoodsExample();
			gde.createCriteria().andTidEqualTo(gt.getId());
			gt.setGoodsList(gom.selectByExample(gde));
		}
		System.out.println();
		return tmp;
	}

	public List<Goods> getHotGoods() {
		
		return gom.getHotGoods();
	}

	public List<Goods> getSpecialGoodsUp() {
		
		return gom.getSpecialGoodsUp();
	}

	public List<Goods> getSpecialGoodsDown() {
		return gom.getSpecialGoodsDown();
	}

	public List<Goods> getCarGoodsList(Integer id) {
		CarExample ce=new CarExample();
		ce.createCriteria().andUidEqualTo(id);
		List<Car> lc= cm.selectByExample(ce);
		List<Goods> tmp=new ArrayList<Goods>();
		for(Car car:lc) {
			GoodsExample ge=new GoodsExample();
			ge.createCriteria().andIdEqualTo(car.getGid());
			tmp.add(gom.selectByExample(ge).get(0));
		}
		return tmp;
	}

}
