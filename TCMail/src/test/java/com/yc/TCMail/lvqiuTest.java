package com.yc.TCMail;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.PageBean;
import com.yc.TCMail.bean.Uorder;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.dao.GtypeMapper;
import com.yc.TCMail.dao.UorderMapper;
import com.yc.TCMail.imply.IndexGtypeBiz;
import com.yc.TCMail.imply.IndexInfoBiz;
import com.yc.TCMail.imply.UorderBiz;

@RunWith(SpringRunner.class)
@SpringBootTest
public class lvqiuTest {

	@Autowired
	private UorderMapper uoMapper;
	@Resource
	private GtypeMapper gtm;
	
	@Resource
	private UorderBiz uoBiz;
	
	@Resource
	private IndexInfoBiz iiBiz;
	@Resource
	private IndexGtypeBiz igBiz;
	
	@Test
	public void selectGtype1() {
		
		System.out.println(gtm.selectAllGtypes().get(0).getChildType().get(0).getGsonType().get(0).getGoodsList());
	}
	
	@Test
	public void selectGtype() {
		Gtype gtype = new Gtype();
		gtype.setName("电脑数码");
		System.out.println(gtm.selectAllGtypes().get(0).getChildType().get(0).getGsonType().size());
	}
	
	@Test
	public void select1() {
		User user = new User();
		user.setId(1);
		System.out.println(iiBiz.findCarByUser(user).get(0).getGoods().getName());
	}
	
	@Test
	public void select2() {
		User user = new User();
		user.setId(1);
		user.setAccount("吕球");
		PageBean<Uorder> ret =uoBiz.findItemByPage(2,user);
		//System.out.println(uoBiz.findAllOrder1(user));
		System.out.println(ret.getItems().get(0));
		System.out.println(ret.getCurrentPage());
	}
	
	@Test 
	public void selectFour() {
		User u = new User();
		u.setAccount("吕球");
		
		//getIsMore 1  有下一页
		System.out.println(uoBiz.findItemByPage(3, u).getIsMore()+"getIsMore================");
		System.out.println(uoBiz.findItemByPage(1, u).getTotalPage()+"getTotalPage================");
		System.out.println(uoBiz.findItemByPage(1, u).getTotalNum()+"getTotalNum================");
		//System.out.println(uoMapper.selectUorderByUser(u).get(0).getDetails().get(0).getGid());
		//System.out.println(uoMapper.selectUorderByUser(u).get(0).getDetails().get(0).getGid()+"===========================");
		//System.out.println(uoMapper.selectUorderByUser(u).get(0).getDetails().get(0).getGoods().getShop().getAddr());
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
