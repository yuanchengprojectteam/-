package com.yc.TCMail.imply;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.TCMail.bean.Address;
import com.yc.TCMail.bean.AddressExample;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.dao.AddressMapper;
import com.yc.TCMail.imply.BizException;

@Service
@Transactional(rollbackFor=BizException.class)
public class AddressBiz {
	
	@Resource
	private AddressMapper addrm;
	
	public List<Address> findAddrByUser(User user) {
		AddressExample example = new AddressExample();
		example.createCriteria().andUidEqualTo(user.getId());
		return addrm.selectByExample(example);
	}
	public Address findAddrById(Address addr) {
		Address ret = addrm.selectByPrimaryKey(addr.getId());
		String[] str = ret.getRecvaddr().split("/");
		ret.setProvince(str[0]);
		ret.setCity(str[1]);
		ret.setDistrict(str[2]);
		return ret;
	}
	
	public String add(Address addr) throws BizException {
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
		int count = addrm.insertSelective(addr);
		System.out.println(count+"========更新==========");
		if(count < 1) {
			throw new BizException("系统繁忙,请稍后再试!");
		}
		return "新增地址成功!!!";
	}
	
	
	public String update(Address addr) throws BizException {
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
		int count = addrm.updateByPrimaryKeySelective(addr);
		if(count < 1) {
			throw new BizException("系统繁忙,请稍后再试!");
		}
		return "地址更新成功!!!";
	}
	
	public String setLevel(Address addr) throws BizException {
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
		int coun = addrm.updateByExampleSelective(addr1, example1);
		if(coun < 1 ) {
			throw new BizException("系统繁忙,请稍后再试!!!");
		}
		return "设置成功";
	}
}
