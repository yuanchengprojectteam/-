package com.yc.TCMail.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.Point;
import com.yc.TCMail.bean.Shop;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.bean.UserExample;
import com.yc.TCMail.dao.PointMapper;
import com.yc.TCMail.dao.UserMapper;
import com.yc.TCMail.util.HbUtil;




@Service
//抛出业务异常（编译期异常）时，回滚
@Transactional(rollbackFor = BizException.class)
public class UserBiz {

	@Resource
	private  UserMapper   uim;
	@Resource
	private  PointMapper  pim;
	@Autowired
	HbUtil hbUtil;
	
	public  User  login(User  u) throws BizException {
		UserExample  example=new UserExample();
		if(u.getAccount()==null) {
			throw  new  BizException("用户名不能为空");
		}
		if(u.getPwd()==null) {
			throw  new  BizException("密码不能为空！");
		}
		example.createCriteria()
					.andAccountEqualTo(u.getAccount())
					.andPwdEqualTo(u.getPwd());
		List<User>  list=uim.selectByExample(example);
		if(list.size()<1) {
			throw  new  BizException("用户名或密码错误！");
		}
		return   list.get(0);
	}
	
	public  String   selectPhone(String  account) throws BizException {
		UserExample  example=new UserExample();
		example.createCriteria()
					.andAccountEqualTo(account);
		List<User> list=uim.selectByExample(example);
		if(list.size()<1) {
			throw  new  BizException("用户名不存在！");
		}
		return   list.get(0).getPhone();
	}

	public int updatePwd(String phone, String pwd) {
		UserExample  example=new UserExample();
		example.createCriteria()
			.andPhoneEqualTo(phone);
		List<User> list=uim.selectByExample(example);
		User  u=list.get(0);
		u.setPwd(pwd);
		return uim.updateByPrimaryKey(u);
	}

	public int addUser(String account, String pwd, String phone) throws BizException {
		UserExample  example=new UserExample();
		User  user=new User();
		if(account ==null) {
			throw  new BizException("用户名不能为空");
		}
		if(pwd==null) {
			throw  new BizException("密码不能为空");
		}
		if(phone==null) {
			throw  new BizException("电话号码不能为空");
		}
		user.setAccount(account);
		user.setPhone(phone);
		user.setPwd(pwd);
		SimpleDateFormat  sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date  date=new Date();
		user.setRegtime(sdf.format(date));
		user.setType("普通用户");
		user.setImage("http://beijing.aliyuncs.com/UploadFile/header/h1.jpg");
		uim.insertSelective(user);
		example.createCriteria().andAccountEqualTo(account);
		List<User> list=uim.selectByExample(example);
		Point  p=new Point();
		p.setUid(list.get(0).getId());
		p.setNum(0);
		pim.insertSelective(p);
		return  1;
	}

	public List<User> checkphone(String phone) throws BizException {
		UserExample  example=new UserExample();
		example.createCriteria()
					.andPhoneEqualTo(phone);
		List<User> list=uim.selectByExample(example);
		return  list;
	}

	public List<User> checkaccount(String account) throws BizException {
		UserExample  example=new UserExample();
		example.createCriteria()
					.andAccountEqualTo(account);
		List<User> list=uim.selectByExample(example);
		
		return  list;
	}

	public User updateUser(String realname, String account, String name, String sex, int age, String email, String id) {
		UserExample  example=new UserExample();
		User u= new User();
		u.setAccount(account);
		u.setRealname(realname);
		u.setName(name);
		u.setSex(sex);
		u.setEmail(email);
		u.setAge(age);
		
		example.createCriteria()
			.andIdEqualTo(Integer.valueOf(id));
		  uim.updateByExampleSelective(u, example);
		  return   uim.selectByPrimaryKey(Integer.valueOf(id));
		
	}

	public User updateUserMore(int id, String marrayInformation,String familynum, String income, String edu, String job, String fav) {
		UserExample  example=new UserExample();
		User u=new User();
		u.setMarry(marrayInformation);
		u.setIncome(income);
		u.setEdu(edu);
		u.setJob(job);
		u.setFavtypeid(fav);
		u.setFamilynum(Integer.valueOf(familynum));
		
		example.createCriteria()
			.andIdEqualTo(id);
		uim.updateByExampleSelective(u, example);
		return  uim.selectByPrimaryKey(id);
		
	}

	public void updatePhone(String phone, int id) {
		UserExample example=new UserExample();
		User  u=new User();
		u.setPhone(phone);
		example.createCriteria()
			.andIdEqualTo(id);
		uim.updateByExampleSelective(u, example);
	}

	public int changeType(String phone,String email) {
		UserExample  example=new UserExample();
		example.createCriteria()
					.andPhoneEqualTo(phone);
		List<User> list=uim.selectByExample(example);
		User u=list.get(0);
		u.setType("管理员");
		u.setEmail(email);
		example.createCriteria()
		.andIdEqualTo(u.getId());
	uim.updateByExampleSelective(u, example);
	return  u.getId();
	}

	public User selectUser(Integer uid) {
		return   uim.selectByPrimaryKey(uid);
	}

	
}
