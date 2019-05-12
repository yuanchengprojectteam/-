package com.yc.TCMail.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.TCMail.bean.Favorite;
import com.yc.TCMail.bean.FavoriteExample;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.GoodsExample;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.GtypeExample;
import com.yc.TCMail.bean.Shop;
import com.yc.TCMail.dao.FavoriteMapper;
import com.yc.TCMail.dao.GoodsMapper;
import com.yc.TCMail.dao.GtypeMapper;

@Service
public class AfterSerchMethod {

	@Resource
	GtypeMapper gm;
	
	@Resource
	GoodsMapper goodm;
	
	@Resource
	ZhouMethod zm;
	
	@Resource
	FavoriteMapper fm;
	
	
	public Gtype queryGtype(String gtype) {
		// TODO Auto-generated method stub
		GtypeExample ge = new GtypeExample();
		ge.createCriteria().andNameEqualTo(gtype);
		List<Gtype> list = gm.selectByExample(ge);
		return list.get(0);
	}

	public List<Goods> queryAllGoods(int tid) {
		// TODO Auto-generated method stub
		GoodsExample ge = new GoodsExample();
		ge.createCriteria().andTidEqualTo(tid);
		List<Goods> list = goodm.selectByExample(ge);
		for(Goods g : list) {
			Shop shop = zm.queryIdShop(g.getSid());
			g.setShop(shop);
		}
		return list;
	}

	public String formatDate(Date date) {
		// TODO Auto-generated method stub
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		return sdf.format(date);
	}

	public int addFavorite(Favorite fav) {
		// TODO Auto-generated method stub
		
		FavoriteExample fe = new FavoriteExample();
		fe.createCriteria().andUidEqualTo(fav.getUid())
		.andShopidEqualTo(fav.getShopid())
		.andGoodsidEqualTo(fav.getGoodsid());
		List<Favorite> list = fm.selectByExample(fe);
		
		if(list.size()>0) {
			return 0;
		}
	
		return fm.insert(fav);
	}

}
