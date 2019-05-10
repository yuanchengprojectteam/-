package com.yc.TCMail.imply;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.aliyun.oss.ClientException;
import com.aliyun.oss.OSSException;
import com.yc.TCMail.bean.Orderdetail;
import com.yc.TCMail.bean.Retgoods;
import com.yc.TCMail.bean.RetgoodsExample;
import com.yc.TCMail.bean.Totalreason;
import com.yc.TCMail.bean.TotalreasonExample;
import com.yc.TCMail.bean.Uorder;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.dao.OrderdetailMapper;
import com.yc.TCMail.dao.RetgoodsMapper;
import com.yc.TCMail.dao.TotalreasonMapper;
import com.yc.TCMail.dao.UorderMapper;
import com.yc.TCMail.util.OssUtil;

@Service
@Transactional(rollbackFor=BizException.class)
public class RetgoodsBiz {
	
	@Resource
	private OrderdetailMapper odm;
	
	@Resource
	private UorderMapper um;
	
	@Resource
	private TotalreasonMapper trm;
	
	@Resource
	private RetgoodsMapper retm;
	
	@Resource
	private OssUtil oss;
	
	/**
	 *   查找退货相关信息
	 */
	public Uorder findAddress(User user,Orderdetail detail) {
		System.out.println(user.getAccount()+"===============");
		Orderdetail od = odm.selectOrderidById(detail.getId());
		return um.selectWithReturn(user,od.getOrderid()).get(0);
	}
	
	public String isRetGoods(Orderdetail detail) {
		RetgoodsExample example = new RetgoodsExample();
		example.createCriteria().andOdetailidEqualTo(detail.getId());
		List<Retgoods> list = retm.selectByExample(example);
		if(list.size()<1) {
			return null;
		}else {
			return "该商品"+list.get(0).getStatu()+",请勿重复操作...";
		}
	}
	
	public Orderdetail findGoods(Orderdetail detail) {
		Orderdetail od = odm.selectByDetailId(detail.getId());
		od.setRetPrice(od.getGoods().getPrice()*od.getNum());
		return od;
	}

	public List<Totalreason> findReason(Retgoods ret,Orderdetail detail) {
		TotalreasonExample example = new TotalreasonExample();
		Orderdetail od = odm.selectByDetailId(detail.getId());
		example.createCriteria().andOrderstatuEqualTo(ret.getStatu()).andTidEqualTo(od.getGoods().getTid());
		return trm.selectByExample(example);
	}

	public String appleRet(Retgoods ret,MultipartFile file) throws BizException {
		RetgoodsExample example = new RetgoodsExample();
		example.createCriteria().andOdetailidEqualTo(ret.getOdetailid());
		List<Retgoods> list = retm.selectByExample(example);
		if(list.size()<1) {
			String rimage;
			try {
				rimage = oss.upload(file, 0);
				ret.setRimage(rimage);
				ret.setDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
				ret.setStatu("已申请退款");
				int count = retm.insertSelective(ret);
				if(count < 1) {
					throw new BizException("系统繁忙,请稍后再试!");
				}
			} catch (Exception e) {
				e.printStackTrace();
				throw new BizException("系统繁忙,请稍后再试!");
			}
			return "退款申请成功,请耐心等待!";
		}else {
			return "提交失败,该商品"+list.get(0).getStatu();
		}
		
		
	}
	
	
}
