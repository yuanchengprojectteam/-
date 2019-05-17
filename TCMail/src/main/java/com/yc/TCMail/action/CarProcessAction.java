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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
import com.yc.TCMail.bean.Shop;
import com.yc.TCMail.bean.Uorder;
import com.yc.TCMail.bean.UorderExample;
import com.yc.TCMail.bean.User;
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
	
	@RequestMapping("topayOrder")
	public String topayOrder(Model model,String aid,String[] gid,String[] num,String sumprice,@SessionAttribute("loginedUser") User user,HttpServletResponse response) throws AlipayApiException, IOException {
		Uorder order=new Uorder();
		order.setAid(Integer.valueOf(aid.substring(0,aid.length()-1)));
		order.setOrderstatu("待支付");
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
		
		 
        PrintWriter out = response.getWriter();
        //获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
        //设置请求参数
        AlipayTradePagePayRequest aliPayRequest = new AlipayTradePagePayRequest();
        aliPayRequest.setReturnUrl(AlipayConfig.return_url);
        aliPayRequest.setNotifyUrl(AlipayConfig.notify_url);
        //商户订单号，后台可以写一个工具类生成一个订单号，必填
        String order_number = new String(""+o.getId());
       System.out.println("============================================================================"+o.getId());
       System.out.println("============================================================================"+sumprice);
        //付款金额，从前台获取，必填
        String total_amount = new String(sumprice);
        //订单名称，必填
        String subject = new String("订单付款");
        aliPayRequest.setBizContent("{\"out_trade_no\":\"" + order_number + "\","
                + "\"total_amount\":\"" + total_amount + "\","
                + "\"subject\":\"" + subject + "\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
        //请求
        String result = alipayClient.pageExecute(aliPayRequest).getBody();
        System.out.println(result);
        //输出
        //以下写自己的订单代码
        model.addAttribute("result",result);
		return "success";
	}
	
	@RequestMapping("toPay")
	public String toPay(Model model,HttpServletResponse response, HttpServletRequest request,String oid,String aid) throws AlipayApiException, IOException {
		 response.setContentType("text/html;charset=utf-8");
		 
	        //获得初始化的AlipayClient
	        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
	        //设置请求参数
	        AlipayTradePagePayRequest aliPayRequest = new AlipayTradePagePayRequest();
	        aliPayRequest.setReturnUrl(AlipayConfig.return_url);
	        aliPayRequest.setNotifyUrl(AlipayConfig.notify_url);
	        System.out.println(oid+"==================================================================================");
	        //商户订单号，后台可以写一个工具类生成一个订单号，必填
	        String order_number = new String(oid);
	       
	        //付款金额，从前台获取，必填
	        Uorder uorder=um.selectByPrimaryKey(Integer.valueOf(oid));
	        
	        uorder.setAid(Integer.valueOf(aid));
	        um.updateByPrimaryKeySelective(uorder);
	        String total_amount = new String(""+uorder.getTotalprice());
	        //订单名称，必填
	        String subject = new String("订单付款");
	        aliPayRequest.setBizContent("{\"out_trade_no\":\"" + order_number + "\","
	                + "\"total_amount\":\"" + total_amount + "\","
	                + "\"subject\":\"" + subject + "\","
	                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
	        //请求
	        String result = alipayClient.pageExecute(aliPayRequest).getBody();
	        //输出
	        model.addAttribute("result",result);
			return "success";//以下写自己的订单代码
	
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
			//乱码解决，这段代码在出现乱码时使用
			valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
			params.put(name, valueStr);
		}
		
		boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名

		//——请在这里编写您的程序（以下代码仅作参考）——
		
		/* 实际验证过程建议商户务必添加以下校验：
		1、需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号，
		2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额），
		3、校验通知中的seller_id（或者seller_email) 是否为out_trade_no这笔单据的对应的操作方（有的时候，一个商户可能有多个seller_id/seller_email）
		4、验证app_id是否为该商户本身。
		*/
		if(signVerified) {//验证成功
			//商户订单号
			String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");
		
			//支付宝交易号
			String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");
		
			//交易状态
			String trade_status = new String(request.getParameter("trade_status").getBytes("ISO-8859-1"),"UTF-8");
			
			if(trade_status.equals("TRADE_FINISHED")){
				Uorder o=new Uorder();
				o.setPaystatu("已支付");
				um.updateByPrimaryKeySelective(o);
			}else if (trade_status.equals("TRADE_SUCCESS")){
				//判断该笔订单是否在商户网站中已经做过处理
				//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
				//如果有做过处理，不执行商户的业务程序
				
				//注意：
				//付款完成后，支付宝系统发送该交易状态通知
			}
			
			return "success";
			
		}else {//验证失败
			return "fail";
		
			//调试用，写文本函数记录程序运行情况是否正常
			//String sWord = AlipaySignature.getSignCheckContentV1(params);
			//AlipayConfig.logResult(sWord);
		}
		
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
	public String JNJNJ(String[] cid,String[] num,String[] checked,@SessionAttribute("loginedUser") User user,Model model) throws IOException {
		
		int totalprice=0,allnum=0;
		List<Orderdetail> OrDetail=new ArrayList<Orderdetail>();
		List<Shop> shopList=new ArrayList<Shop>();
		List<Goods> goodsList=new ArrayList<Goods>();
		List<Integer> numList=new ArrayList<Integer>();
		for(int i=0;i<checked.length;i++) {
			if("on".equals(checked[i])) {
				allnum+=Integer.valueOf(num[i]);
				Orderdetail odetail=new Orderdetail();
				odetail.setGid(cm.selectByPrimaryKey(Integer.valueOf(cid[i])).getGid());
				odetail.setNum(Integer.valueOf(num[i]));
				Goods g=gm.selectByPrimaryKey(Integer.valueOf(cm.selectByPrimaryKey(Integer.valueOf(cid[i])).getGid()));
				odetail.setGoods(g);
				totalprice +=g.getPrice()*Integer.valueOf(num[i]);
				OrDetail.add(odetail);
				shopList.add(sm.selectByPrimaryKey(g.getSid()));
				goodsList.add(g);
				numList.add(Integer.valueOf(num[i]));
			}
		}
		AddressExample ae=new AddressExample();
		ae.createCriteria().andUidEqualTo(user.getId());
		List<Address> addressList=am.selectByExample(ae);
		Uorder order=new Uorder();
		order.setTotalprice((double) totalprice);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		order.setOrdertime(sdf.format(new Date()));
		order.setUid(user.getId());
		order.setPaystatu("待支付");
		order.setTotalprice((double)totalprice);
		um.insert(order);
		UorderExample ue=new UorderExample();
		ue.createCriteria().andPaystatuEqualTo(order.getPaystatu()).andOrdertimeEqualTo(order.getOrdertime()).andUidEqualTo(order.getUid());
		Uorder uorder= um.selectByExample(ue).get(0);
		System.out.println(uorder+"==========================================================================================");
		int key=uorder.getId();
		for(int i=0;i<OrDetail.size();i++) {
			OrDetail.get(i).setGid(goodsList.get(i).getId());
			OrDetail.get(i).setNum(Integer.valueOf(numList.get(i)));
			OrDetail.get(i).setOrderid(key);
			System.out.println("=================================================="+OrDetail.get(i));
			om.insert(OrDetail.get(i));
		}
		order.setId(key);
		model.addAttribute("Allnum",allnum);
		model.addAttribute("OrderDetail", OrDetail);
		model.addAttribute("Uorder",order);
		model.addAttribute("AddressList", addressList);
		model.addAttribute("ShopList",shopList);
		model.addAttribute("GoodsList",goodsList);
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

