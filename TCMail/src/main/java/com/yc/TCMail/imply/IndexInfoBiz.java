package com.yc.TCMail.imply;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.TCMail.bean.Car;
import com.yc.TCMail.bean.CarExample;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.GoodsExample;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.GtypeExample;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.dao.CarMapper;
import com.yc.TCMail.dao.GoodsMapper;
import com.yc.TCMail.dao.GtypeMapper;

@Service 
public class IndexInfoBiz {
	
	@Resource
	private GtypeMapper gtm;
	
	@Resource
	private GoodsMapper gm;
	
	@Resource
	private CarMapper cm;
	
	public  List<Goods>  findWithQ(String q) {
		
		GtypeExample example = new GtypeExample();
		GoodsExample example1 = new GoodsExample();
		example.createCriteria().andNameEqualTo(q);
		List<Gtype> ret = gtm.selectByExample(example);
		if(ret.get(0).getName() != null ) {
			example1.createCriteria().andTidEqualTo(ret.get(0).getId());
			return  gm.selectByExample(example1);
		}else {
			example1.createCriteria().andNameEqualTo(q);
			return  gm.selectByExample(example1);
		}
	}
	
	public List<Car> findCarByUser(User user) {
		
		return cm.selectCarByUser(user);
	}

	public List<Goods>  findGoodsById(Gtype gtype) {
		return gm.selectGoodsBySunId(gtype.getId());
	}
	
	/*public  List<Goods> findAllGoods() {
		List<Gtype> ret = gtm.selectAllGsonType();
		
		List<Goods> goods = new ArrayList<Goods>();
	
		for(int i = 0;i<ret.size();i++) {
			List<Goods> ret1 = ret.get(i).getGoodsList();
			if(goods.size() <= 6) {
				if(ret1.size()>=2) {
					goods.add(ret1.get(0));
					goods.add(ret1.get(1));
				}else {
					goods.add(ret1.get(0));
				}
			}
		}
		return goods;
	}*/
	
}
