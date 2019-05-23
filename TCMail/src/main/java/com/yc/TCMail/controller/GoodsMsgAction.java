package com.yc.TCMail.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.TCMail.action.GoodsMsgBiz;
import com.yc.TCMail.action.ShopBiz;
import com.yc.TCMail.bean.Goodsmsg;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.Shop;

@Controller
public class GoodsMsgAction {

	@Resource
	private GoodsMsgBiz  gBiz;
	

}
