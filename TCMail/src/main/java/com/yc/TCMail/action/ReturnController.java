package com.yc.TCMail.action;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.aliyun.oss.ClientException;
import com.aliyun.oss.OSSException;
import com.yc.TCMail.bean.Orderdetail;
import com.yc.TCMail.bean.Retgoods;
import com.yc.TCMail.bean.Totalreason;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.imply.BizException;
import com.yc.TCMail.imply.RetgoodsBiz;
import com.yc.TCMail.util.OssUtil;

@Controller
public class ReturnController {
	
	@Resource
	private RetgoodsBiz retBiz;
	
	
	
	@RequestMapping("toApplyService")
	public String toApplyService(Orderdetail detail,@SessionAttribute("loginedUser") User user,Model model) {
		model.addAttribute("IsRetGoods",retBiz.isRetGoods(detail));
		model.addAttribute("RetGoodsList",retBiz.findGoods(detail));
		return "applyAfterService";
	}
	
	@PostMapping("retReason")
	@ResponseBody
	public List<Totalreason> retReason(Retgoods ret,Integer odetailid) {
		Orderdetail detail = new Orderdetail();
		detail.setId(odetailid);
		return retBiz.findReason(ret,detail);
	}
	
	@PostMapping("applyRet")             
	@ResponseBody
	public String applyRet(@RequestParam("file") MultipartFile file,Retgoods ret) {
		try {
			return retBiz.appleRet(ret,file);
		} catch (BizException e) {
			e.printStackTrace();
			return e.getMessage();
		}
	}
	
	
}
