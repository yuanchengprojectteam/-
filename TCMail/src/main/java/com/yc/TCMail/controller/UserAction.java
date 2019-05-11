package com.yc.TCMail.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.aliyun.oss.ClientException;
import com.aliyun.oss.OSSException;
import com.yc.TCMail.action.BizException;
import com.yc.TCMail.action.GTypeBiz;
import com.yc.TCMail.action.UserBiz;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.dao.UserMapper;
import com.yc.TCMail.imply.carImply;
import com.yc.TCMail.util.HbUtil;
import com.yc.TCMail.util.HttpUtil;
import com.yc.TCMail.util.OssUtil;

@Controller
@SessionAttributes("loginedUser")
public class UserAction {
	@Autowired
	private EntityManagerFactory emf;

	@Autowired
	OssUtil oss;

	@Autowired
	HbUtil hb;
	
	@Autowired
	carImply ci;

	@Resource
	private UserBiz uBiz;

	@Resource
	private GTypeBiz gbiz;

	@Resource
	private UserMapper uMapper;
	private Cookie cookie1;
	private Cookie cookie2;

	@ModelAttribute
	public void init(Model model) {
		List<Gtype> list = gbiz.AllType();
		model.addAttribute("types", list);
	
	}

	@PostMapping("login")
	public String Login(@ModelAttribute @Valid User u, Errors errors, Model model, String isRemerber,
			HttpServletRequest request, HttpServletResponse response) {
		cookie1 = new Cookie("name", u.getAccount());
		cookie2 = new Cookie("pwd", u.getPwd());
		if ("on".equals(isRemerber)) {

			cookie1.setMaxAge(60 * 60 * 24 * 7);
			cookie2.setMaxAge(60 * 60 * 24 * 7);
			response.addCookie(cookie1);
			response.addCookie(cookie2);

		} else {
			cookie1.setMaxAge(0);
			cookie2.setMaxAge(0);
			response.addCookie(cookie1);
			response.addCookie(cookie2);
		}
		if (errors.hasErrors()) {
			return "redirect: login";
		}
		try {
			User dbui = uBiz.login(u);
			model.addAttribute("loginedUser", dbui);
			model.addAttribute("cglist",ci.selectCarGoods(dbui.getId(),0));
			System.out.println(ci.selectCarGoods(dbui.getId(),0));
			return "PersonCenter";
		} catch (BizException e) {
			e.printStackTrace();
			model.addAttribute("msg", e.getMessage());
			return "login";
		}
	}

	@RequestMapping("send")
	public void getIdentifyCode(String phone, String code) {
		System.out.println("code:" + code + "-------------");
		System.out.println("phone:" + phone);
		HttpUtil.SMS(code, phone);
	}
	
	@RequestMapping("PhoneUpdate")
public void PhoneUpdate(String phone,int id,	HttpServletResponse response) throws IOException {
		uBiz.updatePhone(phone, id);
		response.getWriter().write("yes".toCharArray());
	}

	@PostMapping("getphone")
	public void getphone(String account, HttpServletResponse resp, HttpServletRequest request)
			throws BizException, IOException {
		request.setAttribute("account", account);
		String phone = uBiz.selectPhone(account);
		resp.getWriter().write(phone.toCharArray());
	}

	@RequestMapping(path = "checkPhone", produces = "text/html;charset=utf-8")
	public void checkPhone(String phone, HttpServletResponse response) throws BizException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		if (uBiz.checkphone(phone).size() > 0) {
			response.getWriter().write("no".toCharArray());
		} else {
			response.getWriter().write("yes".toCharArray());
		}

	}

	@RequestMapping("checkAccount")
	public void checkAccount(String account, HttpServletResponse response) throws BizException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		if (uBiz.checkaccount(account).size() > 0) {
			response.getWriter().write("no".toCharArray());
		} else {
			response.getWriter().write("yes".toCharArray());
		}
	}

	@PostMapping(path = "change", produces = "text/html;charset=utf-8")
	public String change(String phone, String nPwd, HttpServletResponse response) {

		int result = uBiz.updatePwd(phone, nPwd);
		Cookie cookie2 = new Cookie("pwd", nPwd);
		cookie2.setMaxAge(60 * 60 * 24 * 7);
		response.addCookie(cookie2);
		return "PersonCenter";
	}

	@PostMapping("register")
	public void Register(String account, String pwd, String phone, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		int result = uBiz.addUser(account, pwd, phone);
		request.getRequestDispatcher("tologin").forward(request, response);
	}

	@RequestMapping("saveUser")
	public String saveUser(String id, String realname, String account, String name, String sex, String age,
			String email, Model model, HttpServletResponse response) {
		String[] str = sex.split(",");
		sex = str[0];
		User u = uBiz.updateUser(realname, account, name, sex, age, email, id);
		model.addAttribute("loginedUser", u);
		cookie1 = new Cookie("name", u.getAccount());
		cookie2 = new Cookie("pwd", u.getPwd());
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		return "PersonInfo";
	}

	@PostMapping("saveHeader")
	public void setHeader(@RequestParam("file") MultipartFile file, @SessionAttribute("loginedUser") User u,
			Model model, HttpServletResponse resp) throws OSSException, ClientException, IOException {
		String path = oss.upload(file, 1);
		u.setImage(path);
		hb.Before();
		User user = hb.getSession().get(User.class, u.getId());
		user.setImage(path);
		hb.getSession().save(user);
		hb.getTransaction().commit();
		model.addAttribute("loginedUser", user);
		resp.getWriter().write(path);
	}

	@RequestMapping("saveMoreInformation")
	public String saveMoreInformation(int id, String marry, String familynum, String income, String edu, String job,
			String[] favorite, Model model) {
		String fav = "";
		for (String s : favorite) {
			fav = fav + s + ",";
		}
		System.out.println("marrayInformation=====" + marry);
		User user = uBiz.updateUserMore(id, marry, familynum, income, edu, job, fav);
		model.addAttribute("loginedUser", user);
		return "MorePersonInfo";
	}

}
