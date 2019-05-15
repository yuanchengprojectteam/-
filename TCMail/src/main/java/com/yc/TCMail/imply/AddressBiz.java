package com.yc.TCMail.imply;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.yc.TCMail.bean.Address;
import com.yc.TCMail.bean.AddressExample;
import com.yc.TCMail.bean.PageBean;
import com.yc.TCMail.bean.Uorder;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.dao.AddressMapper;
import com.yc.TCMail.imply.BizException;

@Service
@Transactional(rollbackFor=BizException.class)
public class AddressBiz {
	
	@Resource
	private AddressMapper addrm;
	private final Integer pageSize = 5;
	
	public PageBean<Address> findAddrByUser(int currentPage,User user) {
		AddressExample example = new AddressExample();
		example.createCriteria().andUidEqualTo(user.getId());
		PageHelper.startPage(currentPage, pageSize);
		List<Address> ret = addrm.selectByExample(example);
		int countNums = addrm.selectByExample(example).size();
		PageBean<Address> pageData = new PageBean<Address>(currentPage,pageSize, countNums);
	    pageData.setItems(ret);
		return pageData;
	}
	public Address findAddrById(Address addr) {
		Address ret = addrm.selectByPrimaryKey(addr.getId());
		String[] str = ret.getRecvaddr().split("/");
		ret.setProvince(str[0]);
		ret.setCity(str[1]);
		ret.setDistrict(str[2]);
		return ret;
	}
	
	public void add(Address addr) throws BizException {
		System.out.println("=========================================");
		if("".equals(addr.getName()) && addr.getName().trim().isEmpty()) {
			throw new BizException("收货人不能为空!!!");
		}
		if("".equals(addr.getRecvaddr()) && addr.getRecvaddr().trim().isEmpty()) {
			throw new BizException("请选择收货地址!!!");
		}
		if("".equals(addr.getDetailaddr())  && addr.getDetailaddr().trim().isEmpty()) {
			throw new BizException("请填写详细地址!!!");
		}
		if("".equals(addr.getPhone()) && addr.getPhone().trim().isEmpty()) {
			throw new BizException("收货人电话不能为空!!!");
		}
		addrm.insertSelective(addr);
	}
	
	
	public void update(Address addr) throws BizException {
		if("".equals(addr.getName()) && addr.getName().trim().isEmpty()) {
			throw new BizException("收货人不能为空!!!");
		}
		if("".equals(addr.getRecvaddr()) && addr.getRecvaddr().trim().isEmpty()) {
			throw new BizException("请选择收货地址!!!");
		}
		if("".equals(addr.getDetailaddr())  && addr.getDetailaddr().trim().isEmpty()) {
			throw new BizException("请填写详细地址!!!");
		}
		if("".equals(addr.getPhone()) && addr.getPhone().trim().isEmpty()) {
			throw new BizException("收货人电话不能为空!!!");
		}
		addrm.updateByPrimaryKeySelective(addr);
		
	}
	
	public void setLevel(Address addr) throws BizException {
		AddressExample example = new AddressExample();
		example.createCriteria().andLevelEqualTo("1");
		List<Address> ret = addrm.selectByExample(example);
		if(ret.size() != 1) {
			throw new BizException("系统繁忙,请稍后再试!!!");
		}
		int count = addrm.updateLevel("0");
		if(count < 1 ) {
			throw new BizException("系统繁忙,请稍后再试!!!");
		}
		AddressExample example1 = new AddressExample();
		example1.createCriteria().andIdEqualTo(addr.getId());
		Address addr1 = new Address();
		addr1.setLevel("1");
		addrm.updateByExampleSelective(addr1, example1);
		
	}
}
