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

	@Select("select * from goods where tid=${tid} and price > ${low} and price < ${top}  ORDER BY price")
	List<Goods> selectScopeOrderBy(@Param("tid")int tid,@Param("low")int low,@Param("top")int top);
	
	//select * 
	
	@Select("select * FROM gtype where `name` LIKE '%${msg}%'")
	List<Gtype> selectLike(@Param("msg")String msg);
}
