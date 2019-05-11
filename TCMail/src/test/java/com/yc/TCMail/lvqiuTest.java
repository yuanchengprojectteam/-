package com.yc.TCMail;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.dao.GtypeMapper;

@RunWith(SpringRunner.class)
@SpringBootTest
public class lvqiuTest {

	
	@Resource
	private GtypeMapper gtm;
	
	@Test
	public void selectGtype() {
		Gtype gtype = new Gtype();
		gtype.setName("电脑数码");
		System.out.println(gtm.selectAllGtypes());
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
