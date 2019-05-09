package com.yc.TCMail.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.TCMail.bean.User;
import com.yc.TCMail.bean.UserExample;
import com.yc.TCMail.dao.UserMapper;




@Service
//抛出业务异常（编译期异常）时，回滚
@Transactional(rollbackFor = BizException.class)
public class UserBiz {

	@Resource
	private  UserMapper   uim;
	
	public  User  login(User  u) throws BizException {
		UserExample  example=new UserExample();
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

	public int addUser(String account, String pwd, String phone) {
		UserExample  example=new UserExample();
		User  user=new User();
		user.setAccount(account);
		user.setPhone(phone);
		user.setPwd(pwd);
		SimpleDateFormat  sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date  date=new Date();
		user.setRegtime(sdf.format(date));
		return  uim.insertSelective(user);
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

	public User updateUser(String realname, String account, String name, String sex, String age, String email, String id) {
		UserExample  example=new UserExample();
		User u= new User();
		u.setAccount(account);
		u.setRealname(realname);
		u.setName(name);
		u.setSex(sex);
		u.setEmail(email);
		u.setAge(Integer.valueOf(age));
		
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
		u.setFavTypeId(fav);
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
	
}
