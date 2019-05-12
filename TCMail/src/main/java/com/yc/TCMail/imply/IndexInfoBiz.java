package com.yc.TCMail.imply;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.GoodsExample;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.GtypeExample;
import com.yc.TCMail.dao.GoodsMapper;
import com.yc.TCMail.dao.GtypeMapper;

@Service 
public class IndexInfoBiz {
	
	@Resource
	private GtypeMapper gtm;
	
	@Resource
	private GoodsMapper gm;
	
	public <T> List<Goods>  findWithQ(String q) {
		
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
	
}
