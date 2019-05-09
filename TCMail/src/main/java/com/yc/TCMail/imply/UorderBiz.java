package com.yc.TCMail.imply;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.yc.TCMail.bean.Orderdetail;
import com.yc.TCMail.bean.Uorder;
import com.yc.TCMail.bean.UorderExample;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.dao.OrderdetailMapper;
import com.yc.TCMail.dao.UorderMapper;

@Service
@Transactional(rollbackFor=BizException.class)
public class UorderBiz {
	@Resource
	private UorderMapper uom;
	
	private OrderdetailMapper odm;
	
	public List<Uorder> findAllOrder1(User user) {
		Boolean count = true;
		int pageNum =1;
		int pageSize = 2;
		PageHelper.startPage(pageNum, pageSize, count);
		List<Uorder> list = uom.selectUorderByUser(user);
		return list;
	}
	
	public Uorder findById(User user,Integer orderid) {
		Uorder list = uom.selectByOrderId(orderid);
		return list;
	}
	
	public List<Uorder> findAllOrder(User user) {
		List<Uorder> list = uom.selectUorderByUser(user);
		return list;
	}
	
	public List<Uorder> findWaitSendOrder(User user) {
		System.out.println(user.getId()+"=========");
		UorderExample example = new UorderExample();
		example.createCriteria().andOrderstatuEqualTo("待收货").andUidEqualTo(user.getId());
		List<Uorder> list = uom.selectByExample(example);
		//List<Uorder> list = uom.selectUorderByUser(user);
		return list;
	}

	public List<Uorder> findUorderByPaystatu(Uorder uorder,User user){
		UorderExample example = new UorderExample();
		if("待支付".equals(uorder.getPaystatu())) {
			example.createCriteria().andPaystatuEqualTo(uorder.getPaystatu()).andIdEqualTo(user.getId());
			List<Uorder> ret = uom.selectByExample(example);
			return ret;
		}else{
			return null;
		}
	}
	public List<Uorder> findUorderByOrderstatu(Uorder uorder,User user){
		UorderExample example = new UorderExample();
		if("待收货".equals(uorder.getOrderstatu())) {
			example.createCriteria().andOrderstatuEqualTo(uorder.getOrderstatu()).andUidEqualTo(user.getId());
			List<Uorder> ret = uom.selectByExample(example);
			return ret;
		}else{
			return null;
		}
		
	}
	
	public List<Uorder> findUorderByOrderstatu1(Uorder uorder,User user){
		UorderExample example = new UorderExample();
		if("待评价".equals(uorder.getOrderstatu())) {
			example.createCriteria().andOrderstatuEqualTo(uorder.getOrderstatu()).andUidEqualTo(user.getId());
			List<Uorder> ret = uom.selectByExample(example);
			return ret;
		}else{
			return null;
		}
		
	}

	public String updateWithOrderStatu(Uorder uorder) throws BizException {
		UorderExample example = new UorderExample();
		example.createCriteria().andIdEqualTo(uorder.getId());
		Uorder uorder1 = new Uorder();
		uorder1.setOrderstatu("待评价");
		int count = uom.updateByExampleSelective(uorder1, example);
		if(count < 1 ) {
			throw new BizException("系统繁忙,请稍后再试!!!");
		}
		return "您的订单已收货!!!";
	}
}
