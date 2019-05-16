package com.yc.TCMail.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.TCMail.bean.Favorite;
import com.yc.TCMail.bean.FavoriteExample;
import com.yc.TCMail.dao.FavoriteMapper;

@Service
//抛出业务异常（编译期异常）时，回滚
@Transactional(rollbackFor = BizException.class)
public class FavBiz {

	@Resource
	FavoriteMapper   fMapper;

	public int  addFav(Integer sid, Integer uid) {
		Favorite    f=new Favorite();
		f.setShopid(sid);
		f.setUid(uid);
		SimpleDateFormat  sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date  date=new Date();
		f.setFtime(sdf.format(date));
		int result=fMapper.insert(f);
		return  result;
	}

	public List<Favorite> BooleanReciver(Integer sid, Integer uid) {
		FavoriteExample  example=new FavoriteExample();
		example.createCriteria().andShopidEqualTo(sid).andUidEqualTo(uid);
		List<Favorite>  f=fMapper.selectByExample(example);
		return  f;
	}
	
	
}
