package com.yc.TCMail.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.OrderdetailsOderBy;

public interface OrderBy {

	@Select("select count(gid)as gnum , gid from orderdetail , goods where orderdetail.gid = goods.id and goods.tid in (${val}) GROUP BY gid ORDER BY gnum DESC")
	List<OrderdetailsOderBy> selectOrderBy(@Param("val")String val);
	
	//
	@Select("select * from goods where tid in (${val}) ORDER BY price")
	List<Goods> selectPriceOrderBy(@Param("val")String val);
	
	@Select("select * from goods where tid in (${val}) ORDER BY commnum DESC")
	List<Goods> selectcommentOrderBy(@Param("val")String val);

	@Select("select * from goods where tid in (${tid}) and price > ${low} and price < ${top}  ORDER BY price")
	List<Goods> selectScopeOrderBy(@Param("tid")String tid,@Param("low")int low,@Param("top")int top);
	
	//select * 
	
	@Select("select * FROM gtype where `name` LIKE '%${msg}%'")
	List<Gtype> selectLike(@Param("msg")String msg);
	
	@Select("select * from goods where tid in(${tid}) ORDER BY commnum DESC")
	List<Goods> queryAllGoods(@Param("tid")String tid);
}
