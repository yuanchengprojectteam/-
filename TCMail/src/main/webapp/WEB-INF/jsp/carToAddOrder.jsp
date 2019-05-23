<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 
<head> 
<meta charset="utf-8">
<title>WangID通城——提交订单——结算页</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<script src="js/jquery-1.11.3.min.js" ></script>
<!--  <script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
 <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script>
<!--  <script type="text/javascript" src="js/select.js"></script> -->
 


</head>
<body>
<!--头部--> 
 
<!--头部-->
<div id="header">
	<div class="header-box">
		<h3 class="huany">WangID本地购物商城欢迎您的到来！</h3>
		<ul class="header-left">
			<li class="bj">
				<a class="dib" href="#">贵阳市</a>
				<i class="ci-leftll">
					<s class="jt">◇</s>
				</i>
				<div class="bj-1">
					<h3>热门城市：</h3>
					<a href="">北京</a><a href="">上海</a><a href="">天津</a><a href="">重庆</a><a href="">河北</a><a href="">山西</a><a href="">河南</a><a href="">辽宁</a><a href="">吉林</a><a href="">黑龙江</a><a href="">浙江</a><a href="">江苏</a><a href="">山东</a><a href="">安徽</a><a href="">内蒙古</a><a href="">湖北</a><a href="">湖南</a><a href="">广东</a><a href="">广西</a><a href="">江西</a><a href="">四川</a><a href="">海南</a><a href="">贵州</a><a href="">云南</a><a href="">西藏</a><a href="">陕西</a><a href="">甘肃</a><a href="">青海</a><a href="">宁夏</a><a href="">新疆</a><a href="">台湾</a><a href="">香港</a><a href="">澳门</a><a href="">海外</a><a href="qieh_cs.html">全部+</a>
				</div>
			</li>					
		</ul>
		<ul class="header-right">
			<li class="denglu dengl_hou">
				<div>
					<a class="red" href="PersonCenter">Hi~${sessionScope.loginedUser.name }</a>
					<i class="icon_plus_nickname"></i>
					<i class="ci-leftll">
						<s class="jt">◇</s>
					</i>
				</div>
				<div class="dengl_hou_xial_k">
					<div class="zuid_xiao_toux">
						<a href="#"><img src="images/toux.png"></a>
					</div>
					<div class="huiy_dengj"> 
						<a class="tuic_" href="tologin">退出</a>
					</div>
					<div class="toub_zil_daoh">
						<a href="#">待处理订单</a>
						<a href="#">我的收藏</a>
						<a href="#">个人资料</a> 
					</div>
				</div>
				</li> 
			<li class="shu"></li>
			<li class="denglu"><a class="ing_ps" href="#">我的收藏</a></li>
			<li class="shu"></li>
			<li class="denglu"><a class="ing_ps ps1" href="toapplybecomeshop">申请入驻</a></li>
			<li class="shu"></li>
			<li class="denglu"><a class="ing_ps ps2" href="http://wpa.qq.com/msgrd?v=3&uin=1371490392&site=qq&menu=yes" >客户服务</a></li>
			<li class="shu"></li>
			<li class="shouji bj">
				<a class="ing_ps ps3" href="#">手机通城</a>
				<i class="ci-right ">
					<s class="jt">◇</s>
				</i>
				<div class="shouji1">
					<img src="images/mb_wangid.png" class="shouji4">
					<div class="shouji2">
						<p>通城客户端</p>
						<p class="red">首次下单满79元，送79元</p>
					</div>
					<div class="yi">
						<img src="images/mb_wangid.png" class="shouji4">
						<div class="er">
							<p>通城微信公众号</p>
							<p class="red">关注通城公众号的积分，换大礼</p>
						</div>
					</div>
				</div>
			</li> 
		</ul>
	</div>
</div>
<!--提交订单——结算页-->
<div class="beij_center">
	<div class="dengl_logo">
		<div>
			<img src="images/logo_1.png">
			<h1>结算页</h1>
		</div>
		<div class="stepflex stepflex_2">
		 	<dl class="normal done ">
                <dt class="s-num">1</dt>
                <dd class="s-text">1.我的购物车<s></s><b></b></dd>
            </dl> 
		 	<dl class="normal doing">
                <dt class="s-num">2</dt>
                <dd class="s-text">2.填写核对订单信息<s></s><b></b></dd>
            </dl> 
		 	<dl class="normal ">
                <dt class="s-num">3</dt>
                <dd class="s-text">3.成功提交订单<s></s><b></b></dd>
            </dl>
		</div>
	</div>
</div>
<div class="beij_center">
	<div class="checkout-tit">
		<span class="tit-txt">填写并核对订单信息</span>
	</div>
	<div class="checkout_steps">
		<div class="step-tit">
            <h3>收货人信息</h3> 
            <div class="extra_r">
            	<a href="#" class="ftx-05 J_consignee_global">新增收货地址</a> 
            </div>
        </div>
        <div class="jies_y_shouh_diz shiq_1">
        	<ul>
        	<c:forEach items="${newOrderList.addrList}" var="addr">
        		<c:choose >
        	<c:when test="${addr.level == 1 }">
        		<li class="cur">
	        			<div class="dangq_xuanz_diz">默认收货地址</div>
	        			<input type="hidden" id="dizhi${addr.id }" value="${addr.recvaddr } ${addr.detailaddr }">
	        			<input type="hidden" id="dianhua${addr.id }" value="${addr.name }">
	        			<span>${addr.name }</span>
	        			<span>${addr.recvaddr } ${addr.detailaddr }</span>
	        			<span>${addr.phone }</span>
	        			<%-- <div class="bianji_yv_shanc">
	        				<a href="#" onclick="addtodetail(${addr.id })" >设为默认</a>
	        				<a href="#">编辑</a>
	        			</div> --%>
	        		</li>
        	</c:when>
        	<c:otherwise>
        			<li>
	        			<input type="hidden" id="dizhi${addr.id }" value="${addr.recvaddr } ${addr.detailaddr }">
	        			<input type="hidden" id="dianhua${addr.id }" value="${addr.name }">
	        			<span></span>
	        			<span>${addr.recvaddr } ${addr.detailaddr }</span>
	        			<span>${addr.phone }</span>
	        			<div class="bianji_yv_shanc">
	        				<a href="#" onclick="addtodetail(${addr.id })" >设为收货地址</a>
	        				<a href="#">编辑</a>
	        			</div>
	        		</li>
        	</c:otherwise>
        	</c:choose>
        	</c:forEach>
        	
        	</ul>
        	<div class="addr-switch cur_e">
                <p><span>更多地址</span><b></b></p>
                <p class="jiant_xiangs"><span>收起更多 </span><b></b></p>
            </div> 
        </div>
        <div class="jies_y_shouh_diz shiq_2">
        	<ul>
        		<li class="zhif_fangs cur"><div class="dangq_xuanz_diz">在线支付</div></li>
        		<li class="zhif_fangs"><div class="dangq_xuanz_diz">货到付款</div></li>
        		<div class="addr-switch addr_switch_1 cur_e_1">
	                <p><span>更多 </span><b></b></p>
	                <p><span>收起 </span><b></b></p>
	            </div> 
        	</ul>  
        </div>
        
        
 
        <div class="step-tit">
            <h3>送货清单</h3> 
            <div class="extra_r">
            	<a href="#" class="ftx-05 J_consignee_global">价格说明</a>
            	<a href="car" class="ftx-05 J_consignee_global">返回修改购物车</a> 
            </div>
        </div>
        <div class="shopping_list">
        	<div class="dis_modes">
        		<div class="mode_item_tit">
                    <h4>配送方式</h4> 
                </div>
                <div>
                	<div class="jies_y_shouh_diz jies_y_shouh_diz_kuaid">
			        	<ul>
			        		<li class="zhif_fangs cur"><div class="dangq_xuanz_diz">申通快递</div></li>
			        		<li class="zhif_fangs"><div class="dangq_xuanz_diz">圆通快递</div></li> 
			        	</ul>  
			        </div>
                </div>
                <div class="peis_shij">
                	<p>配送时间： </p><span>工作日、双休日与节假日均可送货</span>
                </div>
                <div class="maij_liuy">
                	<p>给商家留言</p>
                	<input type="text" name="msg" value="" placeholder="最多不能超过30字！">
                </div>
        	</div>
        	<div class="goods_list">
        	<c:forEach items="${newOrderList.details}" var="detail">
        		
        		<div class="goods_list_neik">
        		<h4 class="vendor_name_h">商家：${detail.goods.shop.name}</h4>
        		<%-- <c:set var="f" value="0" />
        		<c:forEach items="${ShopList }" var="s">
        			<c:if test="${s.id == g.sid && f == 0 }">
        				<h4 class="vendor_name_h">商家：${s.name }</h4>
        				<c:set var="f" value="1" />
        			</c:if>
        		</c:forEach>	 --%>
        			
        			
        			
        			<div class="goods_item">
        				<div class="p_img"><a href="#"><img src="images/lieb_tupi1.jpg"></a></div>
        				<div class="goods_msg">
        					<div class="p_name">
        						<a href="goodsDetail?gid=${detail.goods.id }">${detail.goods.name } ${detail.goods.color }  ${detail.goods.size }</a>
        					</div>
        					<div class="p_price">
        						<span class="jq_price">￥ ${detail.goods.price }</span>
        						
        						<span>x${detail.num }</span>
        						
        		
        					</div>
        				</div>
        			</div>
        		</div>
        	
        	</c:forEach>
        	</div>	
  
        </div>
        <div class="fap_beij">
			<div class="step-tit">
	            <h3>发票信息</h3>  
	        </div>
	        <div class="kaif_p">
	        	<span>普通发票（电子)</span>
	        	<span>个人</span>
	        	<span> 明细 </span>
	        	<span> <a href="#">修改</a> </span>
	        </div>
		</div>

	</div>
   	
	
	
	<!--收费明细-->
	<div class="order_summary">
		<div class="qianq_mx">
		
		
		
				<div class="jiaq_meih">
					<span class="xiangq_leib"><em class="goumai_ges">${totalNum}</em> 件商品，总商品金额：</span>
					<em class="goum_zongj">￥${newOrderList.totalprice}</em>
				</div>
				<div class="jiaq_meih">
					<span class="xiangq_leib">返现：</span>
					<em class="goum_zongj">￥00.00</em>
				</div>
				<div class="jiaq_meih">
					<span class="xiangq_leib">运费：</span>
					<em class="goum_zongj">￥00.00</em>
				</div>
				<div class="jiaq_meih">
					<span class="xiangq_leib">服务费：</span>
					<em class="goum_zongj">￥00.00</em>
				</div>
			
			
			
		</div>
	</div>
	
	
	<form action="toPay" method="post" id="payFrom">
	<div class="trade_foot_detail_com">
		<div class="dsgs">
			<div class="qianq_mx">
				<div class="jiaq_meih">
					<span class="xiangq_leib"> 应付总额：</span>
					<em class="goum_zongj zhongf_jine">￥${newOrderList.totalprice}</em>
				</div> 
			</div>
		</div>
		<input type="hidden" name="oid" value="${newOrderList.id }">
		<div class="zuiz_diz">
		<c:forEach items="${newOrderList.addrList}" var="addr">
			<c:if test="${addr.level == '1' }">
				<span id="jsdz">寄送至：<span>${addr.recvaddr } ${addr.detailaddr }</span> </span>
			<span id="shr"> 收货人：<span>${addr.name }</span></span>
			<input type="hidden" name="aid" value="${addr.id }" id="addressid">
			</c:if>
		</c:forEach>
			
		</div>
	</div>
		
		<div class="tij_dingd_ann">
			<a href="#" onclick="payFrom.submit()">提交订单</a>
		</div>
	</form>
</div>

<script type="text/javascript">
	/* function addtodetail(id){
		$("#jsdz").html("寄送至："+$("input[id^='dizhi"+id+"']")[0].value);
		$("#addressid")[0].value=id;
		$("#shr").html(" 收货人："+$("input[id^='dianhua"+id+"']")[0].value);
	} */




	$(function(){
		$(".shiq_1 ul li").hide().first().show()
		$(".cur_e p").hide().first().show()
		$(".cur_e p:first").click(
			function(){
				$(".shiq_1 ul li").show()
				$(".cur_e p").hide().last().show()
			}
		)
		$(".cur_e p:last").click(
			function(){
				$(".shiq_1 ul li").hide().first().show()
		$(".cur_e p").hide().first().show()
			}
		)
	})
	$(function(){
		$(".shiq_2 ul li").hide().first().show()
		$(".cur_e_1 p").hide().first().show()
		$(".cur_e_1 p:first").click(
			function(){
				$(".shiq_2 ul li").show()
				$(".cur_e_1 p").hide().last().show()
			}
		)
		$(".cur_e_1 p:last").click(
			function(){
				$(".shiq_2 ul li").hide().first().show()
		$(".cur_e_1 p").hide().first().show()
			}
		)
	})
	//cur 
</script>

<jsp:include page="../public/AfterFoot.jsp"></jsp:include>
