package com.yc.TCMail.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.yc.TCMail.bean.Address;
import com.yc.TCMail.bean.AddressExample;
import com.yc.TCMail.bean.Car;
import com.yc.TCMail.bean.Favorite;
import com.yc.TCMail.bean.Goods;
import com.yc.TCMail.bean.Orderdetail;
import com.yc.TCMail.bean.Result;
import com.yc.TCMail.bean.Shop;
import com.yc.TCMail.bean.Uorder;
import com.yc.TCMail.bean.UorderExample;
import com.yc.TCMail.bean.User;
import com.yc.TCMail.imply.BizException;
import com.yc.TCMail.imply.UorderBiz;
import com.yc.TCMail.imply.carImply;
import com.yc.TCMail.config.AlipayConfig;
import com.yc.TCMail.dao.AddressMapper;
import com.yc.TCMail.dao.CarMapper;
import com.yc.TCMail.dao.GoodsMapper;
import com.yc.TCMail.dao.OrderdetailMapper;
import com.yc.TCMail.dao.ShopMapper;
import com.yc.TCMail.dao.UorderMapper;
import com.yc.TCMail.util.HbUtil;

@Controller
public class CarProcessAction {
	
	@Autowired
	HbUtil hb;
	@Autowired
	carImply ci;
	
	@Autowired
	UorderBiz uoBiz;
	
	private AlipayClient alipayClient;
	private AlipayTradePagePayRequest alipayRequest;
	
	
	@Autowired
	CarMapper cm;
	
	@Autowired
	GoodsMapper gm;
	
	@Autowired
	AddressMapper am;
	
	@Autowired
	ShopMapper sm; 
	
	@Autowired
	UorderMapper um;
	
	@Autowired
	OrderdetailMapper om;
	
	@Resource
	GoodsBiz gBiz;
	
	@RequestMapping("notify")
	public String Notify() {
		return "notify_url";
	}
	
	@RequestMapping("success")
	public String success() {
		return "success";
	}
	
	@RequestMapping("fail")
	public String fail() {
		return "fail";
	}
	
	
	@ModelAttribute
	public void init() {
		 alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
		 alipayRequest = new AlipayTradePagePayRequest();
		alipayRequest.setReturnUrl(AlipayConfig.return_url);
		alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
	}
	
	@RequestMapping("topayOrder")
	public String test(Model model,String aid,String[] gid,String[] num,String sumprice,@SessionAttribute("loginedUser") User user) throws AlipayApiException{
		Uorder order=new Uorder();
		order.setAid(Integer.valueOf(aid.substring(0,aid.length()-1)));
		order.setPaystatu("待支付");
		order.setPaytype("支付宝");
		order.setTotalprice((double)Integer.valueOf(sumprice.substring(0, sumprice.length()-3)));
		order.setUid(user.getId());
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		order.setOrdertime(sdf.format(new Date()));
		um.insert(order);
		UorderExample ue=new UorderExample();
		ue.createCriteria().andUidEqualTo(user.getId()).andOrdertimeEqualTo(order.getOrdertime()).andTotalpriceEqualTo(order.getTotalprice());
		Uorder o=(Uorder) um.selectByExample(ue).get(0);
		for(int i=0;i<gid.length;i++) {
			Orderdetail od=new Orderdetail();
			od.setGid(Integer.valueOf(gid[i]));
			od.setOrderid(o.getId());
			od.setNum(Integer.valueOf(num[i]));
			om.insert(od);
		}
		
		alipayRequest.setBizContent("{\"out_trade_no\":\""+o.getId() +"\"," 
				+ "\"total_amount\":\""+ o.getTotalprice() +"\"," 
				+ "\"subject\":\""+ "PayOrder" +"\"," 
				+ "\"body\":\""+ "body" +"\"," 
				+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
		
		String result = alipayClient.pageExecute(alipayRequest).getBody();
		
		model.addAttribute("result", result);
		
		return "success";
	}
	
	@RequestMapping("car")
	public String car(@SessionAttribute("loginedUser") User user,Model model) {
		model.addAttribute("CarList", ci.selectCarByUser(user));
		try {
			List<Goods> ret = gBiz.selectGoodsBrowseRecord(user);
			if(ret != null) {
				model.addAttribute("BrowseRecord",ret);
			}
		} catch (com.yc.TCMail.action.BizException e) {
			e.printStackTrace();
		}
		return "Car";
	}
	
	@PostMapping("operateOfCar")
	@ResponseBody
	public Result operateOfCar(Integer operate,Integer id,Integer num) {
		try {
			return ci.operateCar(operate,id,num);
		} catch (BizException e) {
			e.printStackTrace();
			return Result.failure("系统繁忙,请稍后再试~");
		}
	}
	
	@RequestMapping("toPay")
	public String toPay(Model model,HttpServletResponse response, HttpServletRequest request,int oid,int aid) throws AlipayApiException, IOException {
		 response.setContentType("text/html;charset=utf-8");
		 Uorder uorder=um.selectByPrimaryKey(Integer.valueOf(oid));
	        uorder.setAid(Integer.valueOf(aid));
	        um.updateByPrimaryKeySelective(uorder);
	        
	        alipayRequest.setBizContent("{\"out_trade_no\":\"" + oid + "\","
	                + "\"total_amount\":\"" + uorder.getTotalprice() + "\","
	                + "\"subject\":\"" + "OrderToPay" + "\","
	                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
	        String result = alipayClient.pageExecute(alipayRequest).getBody();
	        model.addAttribute("result",result);
			return "success";
	}
	
	
	@RequestMapping("getAliReturn")
	public String AliReturn(HttpServletRequest request) throws UnsupportedEncodingException, AlipayApiException {
		Map<String,String> params = new HashMap<String,String>();
		Map<String,String[]> requestParams = request.getParameterMap();
		for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i]
						: valueStr + values[i] + ",";
			}
			valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
			params.put(name, valueStr);
		}
		
		boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名


		if(signVerified) {
			Uorder o=new Uorder();
			o.setPaystatu("已支付");
			um.updateByPrimaryKeySelective(o);

		}
		return "PersonCenter";
}
	

	
	
	
	@PostMapping("delfromCar")
	public void delFromCar(Car car,HttpServletResponse resp) {
		System.out.println(car);
		try {
			Car carl=hb.getSession().load(Car.class,car.getId());
			hb.getTransaction().begin();
			hb.getSession().delete(carl);
			hb.getTransaction().commit();
			resp.getWriter().write("already delete from car");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("nraaa")
	public String JNJNJ(String[] cid,Integer[] num,String[] checked,
			@SessionAttribute("loginedUser") User user,Model model,Double totalprice,Integer totalNum) throws IOException {
		Integer orderid = null;
		try {
			orderid = uoBiz.addOrderAndDetail(cid,num,checked,user,totalprice);
		} catch (BizException e) {
			e.printStackTrace();
			model.addAttribute("failure", "系统繁忙,请稍后再试~");
		}
		model.addAttribute("newOrderList", uoBiz.findByUorderId(user, orderid));
		model.addAttribute("totalNum", totalNum);
		AddressExample example=new AddressExample();
		example.createCriteria().andUidEqualTo(user.getId()).andLevelEqualTo("1");
		return "carToAddOrder";
	}
	
	@RequestMapping("addToFav")
	public void addToFav(Goods goods,String cid,@SessionAttribute("loginedUser") User user,HttpServletResponse resp) throws IOException {
		
		Favorite fav=new Favorite();
		fav.setGoodsid(goods.getId());
		SimpleDateFormat sim= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		fav.setFtime(sim.format(new Date()));
		fav.setUid(user.getId());
		Goods good=hb.getSession().load(Goods.class, goods.getId());
		System.out.println(good);
		Shop shop=(Shop) hb.getCriteria(Shop.class).add(Restrictions.eqOrIsNull("id",good.getSid())).list().get(0);
		fav.setShopid(shop.getId());
		hb.getSession().delete(hb.getCriteria(Car.class).add(Restrictions.eqOrIsNull("id",Integer.valueOf(cid))).list().get(0));
		hb.getSession().beginTransaction();
		hb.getSession().save(fav);
		
		hb.getTransaction().commit();
		
		resp.getWriter().write("add success!");
	}
	
	@PostMapping("deleteFCar")
	public void deleteFCar(@RequestParam("srt")String str,HttpServletResponse resp) throws IOException {
		String[] cid=str.split(":");
		hb.getTransaction().begin();
		for(int i=0;i<cid.length-1;i++) {
			Car carl=hb.getSession().load(Car.class,cid[i]);
			hb.getSession().delete(carl);
		}
		hb.getTransaction().commit();
		resp.getWriter().write("already delete from car");
	}
	
	@RequestMapping("canAddNum")
	public void canAddNum(@RequestParam("num")String num,String id,HttpServletResponse resp) throws IOException {
		Goods goods= hb.getSession().load(Goods.class,Integer.parseInt(id));
		if(goods.getNum()<Integer.parseInt(num)){
			resp.getWriter().write("no");
		}else {
			resp.getWriter().write("ok");
		}
	}
	
	
}

