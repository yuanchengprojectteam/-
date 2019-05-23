package com.yc.TCMail.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.yc.TCMail.bean.Car;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Gtype;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.dao.GoodsMapper;
import com.yc.TCMail.imply.IndexGtypeBiz;
import com.yc.TCMail.imply.IndexInfoBiz;
import com.yc.TCMail.imply.UorderBiz;

@Controller
public class IndexInfoController {
	
	@Resource
	private IndexGtypeBiz igBiz;
	
	@Resource
	private IndexInfoBiz iiBiz;
	
	@RequestMapping("ditu")
	public String DiTu() {
		
		return "ditu";
	}

	@Resource
	private GoodsMapper gm;
	
	
	/*@RequestMapping("index")
	public String toIndex(Model model,HttpServletRequest request) {  //,@SessionAttribute("loginedUser") User user
		model.addAttribute("GtypeList", igBiz.findAllGtype());
		List<Car> ret = iiBiz.findCarByUser((User)request.getSession().getAttribute("loginedUser"));
		model.addAttribute("carList", ret);
		model.addAttribute("carNum", ret.size());
		model.addAttribute("newList", gm.selectWithTime());
		return "index";
	}*/
	
	@PostMapping("query")
	public String findWithQ(String q,Model model) {
		model.addAttribute("GtypeList", igBiz.findAllGtype());
		model.addAttribute("GoodsList", iiBiz.findWithQ(q));
		return "AfterSerchShowStyle1";
	}
	
	
	@PostMapping("showGoods")
	@ResponseBody
	public List<Goods> findGoodsById(Gtype gtype) {
		return iiBiz.findGoodsById(gtype);
	}
	
	
	
}
