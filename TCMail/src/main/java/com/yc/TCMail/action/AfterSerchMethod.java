package com.yc.TCMail.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.TCMail.bean.Address;
import com.yc.TCMail.bean.AddressExample;
import com.yc.TCMail.bean.Favorite;
import com.yc.TCMail.bean.FavoriteExample;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.GoodsExample;
import com.yc.TCMail.bean.Goodsmsg;
import com.yc.TCMail.bean.GoodsmsgExample;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.GtypeExample;
import com.yc.TCMail.bean.Image;
import com.yc.TCMail.bean.ImageExample;
import com.yc.TCMail.bean.OrderdetailsOderBy;
import com.yc.TCMail.bean.Shop;
import com.yc.TCMail.dao.AddressMapper;
import com.yc.TCMail.dao.FavoriteMapper;
import com.yc.TCMail.dao.GoodsMapper;
import com.yc.TCMail.dao.GoodsmsgMapper;
import com.yc.TCMail.dao.GtypeMapper;
import com.yc.TCMail.dao.ImageMapper;
import com.yc.TCMail.dao.OrderBy;
import com.yc.TCMail.dao.ShopMapper;

@Service
public class AfterSerchMethod {

	@Resource
	GtypeMapper gtym;
	
	@Resource
	OrderBy ob;
	
	@Resource
	GoodsMapper goodm;
	
	@Resource
	GoodsmsgMapper gmsgm;
	
	@Resource
	ZhouMethod zm;
	
	@Resource
	FavoriteMapper fm;
	
	@Resource
	GoodsMapper gm;
	
	@Resource
	AddressMapper addrm;
	
	@Resource
	ImageMapper im;
	
	@Resource
	ShopMapper sm;
	
	
	public Gtype queryGtype(String gtype) {
		// TODO Auto-generated method stub
		GtypeExample ge = new GtypeExample();
		ge.createCriteria().andNameEqualTo(gtype);
		List<Gtype> list = gtym.selectByExample(ge);
		return list.get(0);
	}
	
	public List<Gtype> querySunGtype(String gtype){
		GtypeExample ge = new GtypeExample();
		List<Gtype> set = new ArrayList<Gtype>();
		ge.createCriteria().andNameEqualTo(gtype);
		List<Gtype> list = gtym.selectByExample(ge);
		Gtype gty = list.get(0);
		set.add(gty);
		ge = new GtypeExample();
		ge.createCriteria().andPidEqualTo(gty.getId());
		List<Gtype> listSun = gtym.selectByExample(ge);
		for(Gtype g : listSun) {
			set.add(g);
		}
		return set;
	}

	public List<Goods> queryAllGoods(int tid) {
		// TODO Auto-generated method stub
		GoodsExample ge = new GoodsExample();
		ge.createCriteria().andTidEqualTo(tid);
		List<Goods> list = goodm.selectByExample(ge);
		for(Goods g : list) {
			System.out.println("这是Sid："+g.getSid());
			Shop shop = sm.selectByPrimaryKey(g.getSid());
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

	public Goods queryGoods(String gid) {
		// TODO Auto-generated method stub
		int id = Integer.valueOf(gid);
		Goods good = gm.selectByPrimaryKey(id);
		
		Shop shop = zm.queryIdShop(good.getSid());
		 shop = zm.queryShopAndAllGoods1(good.getSid());
		good.setShop(shop);
		
		
		return good;
		
	}
	
	public List<Goods> HostGoods(int tid){
		List<OrderdetailsOderBy> list = ob.selectOrderBy(""+tid);
		//System.out.println("list===:"+list.get(0).getGnum());
		List<Goods> hostGoods = new ArrayList<Goods>();
		
		for(int i=0;i<list.size();i++) {
			if(i<3) {
				int gid = list.get(i).getGid();
				Goods good = zm.queryGoods(gid);
				hostGoods.add(good);
			}
			
		}
		return hostGoods;
	}

	public List<Goodsmsg> queryGoodmsgByGid(String gid) {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(gid);
		GoodsmsgExample gse = new GoodsmsgExample();
		gse.createCriteria().andGidEqualTo(id);
		List<Goodsmsg> list = gmsgm.selectByExample(gse);
		
		return list;
	}

	/*public Gtype setGtypeSuper(Gtype gtype) {
		// TODO Auto-generated method stub
		 
			 gtype.setSuperType(queryGtypeById(gtype.getPid()));
		
		return gtype;
	}*/
	
	public Gtype queryGtypeById(int id) {
		System.out.println("我要查的typeId是："+id);
		GtypeExample ge =new GtypeExample();
		ge.createCriteria().andIdEqualTo(id);
		List<Gtype> gtype = gtym.selectByExample(ge);
		System.out.println("============"+gtype.size());
				
		return gtype.get(0);
	}
	
	public List<String> queryTypeNameList(Gtype gtype){
		List<String> typeNameList = new ArrayList<String>();
		AfterSerchMethod am = new AfterSerchMethod();
		while(true) {
			Gtype supGtype = new Gtype();
			if(gtype.getPid() != null) {
				supGtype = am.queryGtypeById(gtype.getPid());
				System.out.println(supGtype.getName());
				typeNameList.add(supGtype.getName());
				//gtype.setSuperType(supGtype);
				gtype = supGtype;
			}else {
				break;
			}
		}
		
		return ReverseOrder(typeNameList);
	}
	
	public static List<String> ReverseOrder(List<String> list) {
		
		List<String> list1 = new ArrayList<String>();
		for(int i=0;i<list.size();i++) {
			list1.add(list.get(i));
		}
		
		return list1;
	}

	public List<Address> queryAllAboutUid(int uid) {
		// TODO Auto-generated method stub
		List<Address> list = new ArrayList<Address>();
		AddressExample ae = new AddressExample();
		ae.createCriteria().andUidEqualTo(uid);
		List<Address> set = addrm.selectByExample(ae);
		int temp = -1;
		for(int i=0;i<set.size();i++) {
			if(set.get(i).getLevel() == "1") {
				list.add(set.get(i));
				temp = i;
			}
			break;
		}
		for(int j=0;j<set.size();j++) {
			
			if(j != temp) {
				list.add(set.get(j));
			}
		}
		
		return list;
	}

	public List<Gtype> queryLikeGtype(String msg) {
		// TODO Auto-generated method stub
		List<Gtype> gList = new ArrayList<Gtype>();
		//ge.createCriteria().andNameLike("'%"+msg+"%'");
		List<Gtype> list = ob.selectLike(msg);
		if(list.size()>0) {
			for(Gtype gty : list) {
				gList.add(gty);
				GtypeExample ge = new GtypeExample();
				ge.createCriteria().andPidEqualTo(gty.getId());
				List<Gtype> gtySon = gtym.selectByExample(ge);
				if(gtySon.size() > 0) {
					for(Gtype gtys : gtySon) {
						gList.add(gtys);
					}
				}
			}
		}
		return gList;
	}

	public List<Image> queryImage(int gid) {
		// TODO Auto-generated method stub
		ImageExample ie = new ImageExample();
		ie.createCriteria().andGidEqualTo(gid);
		List<Image> image = im.selectByExample(ie);
		//System.out.println("立即购买：=========="+image.get(0).getPath());
		
		return image;
	}

	public List<Goods> queryGoodsByTid(int tid) {
		// TODO Auto-generated method stub
		
		GoodsExample ge = new GoodsExample();
		ge.createCriteria().andTidEqualTo(tid);
		
		
		return gm.selectByExample(ge);
	}

	public Shop queryShop(int sid) {
		// TODO Auto-generated method stub
		return sm.selectByPrimaryKey(sid);
	}

}
