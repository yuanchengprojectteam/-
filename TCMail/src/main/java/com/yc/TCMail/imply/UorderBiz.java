package com.yc.TCMail.imply;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yc.TCMail.bean.Car;
import com.yc.TCMail.bean.CarExample;
import com.yc.TCMail.bean.Orderdetail;
import com.yc.TCMail.bean.PageBean;
import com.yc.TCMail.bean.Uorder;
import com.yc.TCMail.bean.UorderExample;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.dao.CarMapper;
import com.yc.TCMail.dao.OrderdetailMapper;
import com.yc.TCMail.dao.UorderMapper;

@Service
@Transactional(rollbackFor=BizException.class)
public class UorderBiz {
	@Resource
	private UorderMapper uom;
	
	@Resource
	private OrderdetailMapper odm;
	
	@Resource
	private CarMapper cm;
	
	private final Integer pageSize = 3;
	public PageBean<Uorder> findItemByPage(int currentPage,User user) {
       //设置分页信息，分别是当前页数和每页显示的总记录数【记住：必须在mapper接口中的方法执行之前设置该分页信息】
       PageHelper.startPage(currentPage, pageSize);
       List<Uorder> allItems = uom.selectUorderByUser(user);       //全部商品
       int countNums = uom.selectUorderByUser(user).size();            //总记录数
       PageBean<Uorder> pageData = new PageBean<Uorder>(currentPage,pageSize, countNums);
       pageData.setItems(allItems);
       return pageData;
	}
	
	public Uorder findById(User user,Integer orderid) {
		Uorder list = uom.selectByOrderId(orderid);
		return list;
	}
	public Uorder findByUorderId(User user,Integer orderid) {
		return  uom.selectByUorderId(orderid);
	}
	
	/*public List<Uorder> findAllOrder(User user) {
		List<Uorder> list = uom.selectUorderByUser(user);
		return list;
	}*/
	
	public PageBean<Uorder> findWaitSendOrder(int currentPage,User user) {
		
		UorderExample example = new UorderExample();
		example.createCriteria().andOrderstatuEqualTo("待收货").andUidEqualTo(user.getId()).andVisiableEqualTo("0");
		PageHelper.startPage(currentPage, pageSize);
		List<Uorder> list = uom.selectByExample(example);
		int countNums = uom.selectByExample(example).size(); 
		PageBean<Uorder> pageData = new PageBean<Uorder>(currentPage, pageSize, countNums);
	    pageData.setItems(list);
		return pageData;
	}
	
	public PageBean<Uorder> findUorderBy(String statu,Integer uid,int currentPage) {
		
		UorderExample example = new UorderExample();
		if("待支付".equals(statu)) {
			example.createCriteria().andPaystatuEqualTo(statu).andUidEqualTo(uid).andVisiableEqualTo("0");
		}else {
			example.createCriteria().andOrderstatuEqualTo(statu).andUidEqualTo(uid);
		}
		PageHelper.startPage(currentPage, pageSize);
		List<Uorder> list = uom.selectByExample(example);
		int countNums = uom.selectByExample(example).size(); 
		PageBean<Uorder> pageData = new PageBean<Uorder>(currentPage, pageSize, countNums);
	    pageData.setItems(list);
		return pageData;
	}
	
	public List<Uorder> findUorderBy(String statu,Integer uid) {
		UorderExample example = new UorderExample();
		if("待支付".equals(statu)) {
			example.createCriteria().andPaystatuEqualTo(statu).andUidEqualTo(uid).andVisiableEqualTo("0");
		}else {
			example.createCriteria().andOrderstatuEqualTo(statu).andUidEqualTo(uid);
		}
		List<Uorder> list = uom.selectByExample(example);
		return list;
	}

	public void updateWithOrderStatu(Uorder uorder) throws BizException {
		UorderExample example = new UorderExample();
		example.createCriteria().andIdEqualTo(uorder.getId());
		Uorder uorder1 = new Uorder();
		uorder1.setOrderstatu("待评价");
		uom.updateByExampleSelective(uorder1, example);
	}

	public void dateleOrder(Integer id) throws BizException{
		UorderExample example = new UorderExample();
		example.createCriteria().andIdEqualTo(id);
		Uorder order = new Uorder();
		order.setVisiable("1");
		uom.updateByExampleSelective(order, example);
	}
	
	public List<Uorder> selectOrderRubbish(Integer uid) {
		UorderExample example = new UorderExample();
		example.createCriteria().andUidEqualTo(uid).andVisiableEqualTo("1");
		return uom.selectByExample(example);
	}

	public Integer addOrderAndDetail(String[] cid, Integer[] num, String[] checked, User user,Double totalprice) throws BizException{
		
		List<Car> carList = new ArrayList<Car>();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Uorder order = new Uorder();
		order.setUid(user.getId());
		order.setOrderstatu("待支付");
		String time=sdf.format(new Date());
		order.setOrdertime(time);
		order.setTotalprice(totalprice);
		order.setVisiable("0");
		System.out.println(user.getId()+"================");
		uom.insertSelective(order);
		UorderExample  example1=new UorderExample();
		example1.createCriteria().andUidEqualTo(user.getId()).andTotalpriceEqualTo(totalprice).andOrderstatuEqualTo("待支付").andVisiableEqualTo("0").andOrdertimeEqualTo(time);
		List<Uorder> orderlist=uom.selectByExample(example1);
		System.out.println("------------------------");
		List<Orderdetail> detailList = new ArrayList<Orderdetail>();
		for(int i = 0;i<cid.length;i++) {
			if(cid[i].indexOf("cid") != -1) {
				CarExample example = new CarExample();
				System.out.println(num[i]);
				Orderdetail detail = new Orderdetail();
				System.out.println(Integer.valueOf(cid[i].substring(3))+"=========cid==========");
				example.createCriteria().andIdEqualTo(Integer.valueOf(cid[i].substring(3))).andUidEqualTo(user.getId());
				List<Car> ret = cm.selectByExample(example);
				carList.add(ret.get(0));
				detail.setNum(num[i]);
				detail.setOrderid(orderlist.get(0).getId());
				System.out.println(order.getId()+"=====================");
				detail.setGid(ret.get(0).getGid());
				detailList.add(detail);
			}
		}
		System.out.println(detailList.get(0).getOrderid()+"=============");
		System.out.println(detailList);
		odm.insertBatch(detailList);
		return orderlist.get(0).getId();
	}
}
