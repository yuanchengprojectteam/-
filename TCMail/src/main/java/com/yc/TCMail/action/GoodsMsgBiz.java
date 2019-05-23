package com.yc.TCMail.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.TCMail.bean.Goodsmsg;
import com.yc.TCMail.bean.GoodsmsgExample;
import com.yc.TCMail.bean.GtypeExample;
import com.yc.TCMail.dao.GoodsmsgMapper;
import com.yc.TCMail.dao.UserMapper;

@Service
//抛出业务异常（编译期异常）时，回滚
@Transactional(rollbackFor = BizException.class)
public class GoodsMsgBiz {
	@Resource
	private  GoodsmsgMapper  gm;

	public List<Goodsmsg> Allgoods() {
		GoodsmsgExample example=new GoodsmsgExample();
		
		return gm.selectByExample(example);
	}

	public int selectSid(String id) {
		GoodsmsgExample example=new GoodsmsgExample();
		example.createCriteria().andIdEqualTo(Integer.valueOf(id));
		List<Goodsmsg> list= gm.selectByExample(example);
		return  list.get(0).getSid();
	}
	
	
}
