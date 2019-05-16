package com.yc.TCMail.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.cache.spi.support.AbstractReadWriteAccess.Item;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.GoodsExample;
import com.yc.TCMail.bean.OrderdetailsOderBy;
import com.yc.TCMail.bean.PageBean;
import com.yc.TCMail.dao.GoodsMapper;
import com.yc.TCMail.dao.OrderBy;
import com.yc.TCMail.dao.OrderdetailMapper;

@Service
//抛出业务异常（编译期异常）时，回滚
@Transactional(rollbackFor = BizException.class)
public class GoodsBiz {
	
	@Resource
	private  GoodsMapper   gMapper;
	@Resource
	private  OrderdetailMapper  oMapper;
	@Resource
	private  OrderBy  ob;
	
	
	public List<Goods> selectShopGoods(Integer id,String  oreason) {
		System.out.println("+++++OREASON"+oreason);
		GoodsExample  example=new GoodsExample();
		List<Goods> list = new ArrayList<Goods>();
		example.createCriteria().andSidEqualTo(id);
		example.setOrderByClause("`"+oreason+"`DESC,id DESC");
		list=  gMapper.selectByExample(example);
		return list;	
	}
	public  ArrayList<Goods>  selectByOrdernum(Integer id,String  oreason){
		System.out.println("+++++OREASON"+oreason);
		GoodsExample  example=new GoodsExample();
		ArrayList<Goods> list = new ArrayList<Goods>();
		List<OrderdetailsOderBy> list1 = ob.selectGoodsOrderBy(id);
		for(int i=0;i<list1.size();i++) {
			int gid = list1.get(i).getGid();
			Goods good = gMapper.selectByPrimaryKey(gid);
			list.add(good);
		}
		return  list;
	}
	public  ArrayList<Goods>  selectByFav(Integer id,String  oreason){
		System.out.println("+++++OREASON"+oreason);
		GoodsExample  example=new GoodsExample();
		ArrayList<Goods> list = new ArrayList<Goods>();
		List<OrderdetailsOderBy> list1 = ob.selectGoodsOrderBy1(id);
		for(int i=0;i<list1.size();i++) {
			int gid = list1.get(i).getGid();
			Goods good = gMapper.selectByPrimaryKey(gid);
			list.add(good);
		}
		return  list;
	}
	public int CountAll(Integer sid) {
		GoodsExample   example=new GoodsExample();
		example.createCriteria().andSidEqualTo(sid);
		List<Goods>list= gMapper.selectByExample(example);
		return  list.size();
	}
}
