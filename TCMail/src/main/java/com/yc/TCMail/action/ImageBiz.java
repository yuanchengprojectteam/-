package com.yc.TCMail.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.TCMail.bean.Image;
import com.yc.TCMail.bean.ImageExample;
import com.yc.TCMail.dao.ImageMapper;

@Service
//抛出业务异常（编译期异常）时，回滚
@Transactional(rollbackFor = BizException.class)
public class ImageBiz {

	@Resource
	private  ImageMapper   iMapper;

	public List<Image> findByShop(Integer sid) {
		ImageExample   example=new ImageExample();
		example.createCriteria().andSidEqualTo(sid);
		return iMapper.selectByExample(example);
	}
	
	
}
