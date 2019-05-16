package com.yc.TCMail.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.OrderdetailsOderBy;

public interface OrderBy {

	@Select("select count(gid)as gnum , gid from orderdetail , goods where orderdetail.gid = goods.id and goods.tid = ${val} GROUP BY gid ORDER BY gnum DESC")
	List<OrderdetailsOderBy> selectOrderBy(@Param("val")int val);
	
	//
	@Select("select * from goods where tid=${val} ORDER BY price")
	List<Goods> selectPriceOrderBy(@Param("val")int val);
	
	@Select("select * from goods where tid=${val} ORDER BY commnum DESC")
	List<Goods> selectcommentOrderBy(@Param("val")int val);
	
	@Select("select sum(orderdetail.num) as gnum, goods.id as gid from orderdetail  right OUTER join  goods on  orderdetail.gid = goods.id where goods.sid =${val}  GROUP BY gid ORDER BY gnum DESC")
	List<OrderdetailsOderBy> selectGoodsOrderBy(@Param("val")int val);
	
	@Select("select count(goodsid) as gnum, goods.id as gid from goods left OUTER join favorite on favorite.goodsid=goods.id where  goods.sid=${val}  GROUP BY gid  ORDER BY gnum DESC")
	List<OrderdetailsOderBy> selectGoodsOrderBy1(@Param("val")int val);
	
	@Select("select * from gtype  where id in ( select tid from goods where sid=${val})")
	List<Gtype>  findAll(@Param("val")int val);

	@Select("select * from goods where tid=${tid} and price > ${low} and price < ${top}  ORDER BY price")

	List<Goods> selectScopeOrderBy(@Param("tid")int tid,@Param("low")int low,@Param("top")int top);
	
	//select * 
	
	@Select("select * FROM gtype where `name` LIKE '%${msg}%'")
	List<Gtype> selectLike(@Param("msg")String msg);

}
