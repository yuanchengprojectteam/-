package com.yc.TCMail.dao;

import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.GoodsExample;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;


public interface GoodsMapper {
	
	List<Goods> selectWithTime();
	List<Goods> selectGoodsBySunId(@Param("id")Integer id);
	Goods selectGoods(Integer id);
	List<Goods> selectGoodsByTid(Integer id);
	
	List<Goods> getHotGoods();

	Goods selectGoods();



    long countByExample(GoodsExample example);




    int deleteByExample(GoodsExample example);




    int deleteByPrimaryKey(Integer id);




    int insert(Goods record);




    int insertSelective(Goods record);


 
  

    List<Goods> selectByExample(GoodsExample example);





    Goods selectByPrimaryKey(Integer id);




    int updateByExampleSelective(@Param("record") Goods record, @Param("example") GoodsExample example);




    int updateByExample(@Param("record") Goods record, @Param("example") GoodsExample example);




    int updateByPrimaryKeySelective(Goods record);




    int updateByPrimaryKey(Goods record);
    
	List<Goods> getSpecialGoodsUp();
	
	List<Goods> getSpecialGoodsDown();
	
	Goods getSpecialGoodsFirst();
}