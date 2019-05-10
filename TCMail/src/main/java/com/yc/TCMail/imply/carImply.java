package com.yc.TCMail.imply;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.Example;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.TCMail.bean.Car;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.Shop;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.util.HbUtil;

@Service
public class carImply {
	@Autowired
	private HbUtil hb;

	public List<Goods> selectCarGoods(Integer id, int ty) {
		@SuppressWarnings("unchecked")
		List<Car> goods = hb.getCriteria(Car.class).add(Restrictions.eq("uid", id)).list();
		List<Goods> gl = new ArrayList<Goods>();
		for (Car g : goods) {
			Goods goodss = (Goods) hb.getCriteria(Goods.class).add(Restrictions.eqOrIsNull("id", g.getGid())).list()
					.get(0);
			Gtype type = (Gtype) hb.getCriteria(Gtype.class).add(Restrictions.eqOrIsNull("id", goodss.getTid())).list()
					.get(0);
			goodss.setType(type);
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

}
