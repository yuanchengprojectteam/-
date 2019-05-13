package com.yc.TCMail.imply;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.dao.GtypeMapper;

@Service
@Transactional(rollbackFor=BizException.class)
public class IndexGtypeBiz {
	
	@Resource
	private GtypeMapper gtm;
	
	public  List<Gtype> findAllGtype() {
	
		return gtm.selectAllGtypes();
	}
	
	
	
	

}
