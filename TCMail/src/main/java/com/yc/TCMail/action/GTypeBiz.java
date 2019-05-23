package com.yc.TCMail.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.GtypeExample;
import com.yc.TCMail.dao.GtypeMapper;
import com.yc.TCMail.dao.OrderBy;

@Service
@Transactional(rollbackFor = BizException.class)
public class GTypeBiz {
	@Resource
	private  GtypeMapper   gtm;
	@Resource
	private  OrderBy  ob;
	public  List<Gtype>  AllType(){

		GtypeExample  example=new GtypeExample();
		
		return gtm.selectByExample(example);
	}

	public List<Gtype> findAll(Integer sid) {
		List<Gtype> list=ob.findAll(sid);
		return list;
	}

}
