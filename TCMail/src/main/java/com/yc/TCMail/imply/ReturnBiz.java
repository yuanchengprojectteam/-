package com.yc.TCMail.imply;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.TCMail.bean.Orderdetail;
import com.yc.TCMail.bean.Return;
import com.yc.TCMail.bean.Totalreason;
import com.yc.TCMail.bean.TotalreasonExample;
import com.yc.TCMail.bean.Uorder;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.dao.OrderdetailMapper;
import com.yc.TCMail.dao.ReturnMapper;
import com.yc.TCMail.dao.TotalreasonMapper;
import com.yc.TCMail.dao.UorderMapper;

@Service
@Transactional(rollbackFor=BizException.class)
public class ReturnBiz {
	
	@Resource
	private OrderdetailMapper odm;
	
	@Resource
	private UorderMapper um;
	
	@Resource
	private TotalreasonMapper trm;
	/**
	 *   查找退货相关信息
	 */
	public Uorder findAddress(User user,Orderdetail detail) {
		System.out.println(user.getAccount()+"===============");
		Orderdetail od = odm.selectOrderidById(detail.getId());
		return um.selectWithReturn(user,od.getOrderid()).get(0);
	}
	
	public Orderdetail findGoods(Orderdetail detail) {
		System.out.println(detail.getId()+"===============================");
		Orderdetail od = odm.selectByDetailId(detail.getId());
		return od;
	}

	public List<Totalreason> findReason(Return ret,Orderdetail detail) {
		TotalreasonExample example = new TotalreasonExample();
		Orderdetail od = odm.selectByDetailId(detail.getId());
		example.createCriteria().andOrderstatuEqualTo(ret.getStatu()).andTidEqualTo(od.getGoods().getTid());
		return trm.selectByExample(example);
	}
	
	
}
