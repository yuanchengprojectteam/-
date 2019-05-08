<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
<meta charset="utf-8">
<title>WangID通城——我的订单</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
 <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script>
<!--  <script type="text/javascript" src="js/select.js"></script> -->
 


</head>
<body>
<!--头部--> 
 
<%@include file="AfterHeader.jsp" %>
<!---->
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->
			<div class="tod_tongc_zuoc">
				<div class="zuoc_toux">
					<div class="toux_kuang">
						<div class="userImage">
							<div class="myGome_userPhoto">
								<img src="images/toux.png">
								<a class="edit_photo_bitton" href="profile" target="_blank">编辑</a>
							</div>
						</div>
						<div class="user_name_Level">
							<p class="user_name" title="山的那边是海">山的那边是海</p>
							<p class="userLevel">会员：<span class="levelId icon_plus_nickname"></span></p> 
						</div>
					</div>
					<div class="userInfo_bar">
						<span>资料完成度</span>
						<span class="userInfo_process_bar"><em class="active_bar" style="width: 40px;"> 20%</em></span>
						<a href="ger_xinx.html" target="_blank">完善</a>
					</div>
					<div class="myGome_accountSecurity">
						<span class="fl_ee" style="margin-top:2px;">账户安全 <em class="myGome_account_level"> 低</em> </span>
						<div class="verifiBox fl_ee">
							<div class="shab_1">
								<span class="myGome_mobile" val="mobile"> <em class=" myGome_onActive "></em> </span> 
								<p class="myGome_verifiPop"> <span>您已绑定手机：</span> <span>182****0710</span> <a href="zhangh_anq.html" target="_blank">管理</a></p>
							</div>
							<div class="shab_1">
								<span class="myGome_email" val="email"> <em class=""></em> </span>
								<p class="myGome_verifiPop"> <span>您还未绑定邮箱 </span><a href="zhangh_anq.html" target="_blank">立即绑定</a></p>
							</div>
						</div>
						<a class="fl_ee" href="zhangh_anq.html" target="_blank" style="margin-top:2px;">提升</a>
					</div>
					<div class="user_counts">
						<ul>
							<li>
                                <div class="count_item">
                                    <a href="wod_dingd.html">
                                        <i class="count_icon count_icon01"></i> 待付款
                                        <em id="waitPay">2</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="wod_dingd.html">
                                        <i class="count_icon count_icon02"></i> 待收货
                                        <em id="waitPay">4</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="wod_dingd.html">
                                        <i class="count_icon count_icon03"></i> 待提货
                                        <em id="waitPay">0</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="wod_dingd.html">
                                        <i class="count_icon count_icon04"></i> 待评价
                                        <em id="waitPay">8</em>
                                    </a>
                                </div>
                            </li>
						</ul>
					</div>
				</div>
				<div class="wod_tongc_daoh_lieb">
					<div class="diy_top">
						<ul>
							<h3>订单中心</h3>
							<li><a href="wod_dingd.html">我的订单</a></li>
							<li><a href="shengq_shouh.html">退换货单</a></li>
							<li><a href="pingj_shaid.html">评价晒单</a></li>
						</ul>
						<ul>
							<h3>管理中心</h3>
							<li><a href="wod_shouc.html">我的收藏</a></li>
							<li><a href="#">我的预约</a></li>
							<li><a href="#">我的咨询</a></li>
							<li><a href="#">投诉管理</a></li>
						</ul>
					</div>
					<div class="diy_top">
						<ul>
							<h3>账户设置</h3>
							<li><a href="ger_xinx.html">基本资料</a></li>
							<li><a href="zhangh_anq.html">账户安全</a></li>
							<li><a href="shouh_diz.html">收货地址</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="shand_piaot">我的订单
						<p class="dingd_huis_zhan" style="float: right;margin-right: 5%"><a href="#">订单回收站</a></p>
					</div>
					
					<div class="tab_trigger tab_trigger_wod_dd">
					 	<p class="attrK">实物订单：</p>
						<ul>
							<li><a class="text_shaid" href="OrderDetail?tabCode=AllOrder" id="AllOrder">全部</a></li>
							<li><a class="text_shaid" href="OrderDetail?tabCode=waitpay&paystatu=待支付" id="waitpay">待支付</a><c:if test="${! empty waitpay}"><p class="sup">${waitpay}</p></c:if></li>
							<li><a class="text_shaid" href="OrderDetail?tabCode=waitsend&orderstatu=待收货" id="waitsend">待收货</a><c:if test="${! empty waitsend}"><p class="sup">${waitsend}</p></c:if></li>
							<li><a class="text_shaid" href="OrderDetail?tabCode=waitrate&orderstatu=待评价" id="waitrate">待评价</a><c:if test="${!empty waitrate}"><p class="sup">${waitrate}</p></c:if></li> 
						</ul>
					</div> 
					<br>
					<!--************************************-->
					<table class="order-tb order-tb_1">
						<colgroup>
							<col class="number-col">
							<col class="consignee-col">
							<col class="amount-col">
							<col class="operate-col">
							<col class="dis_col">
						</colgroup>
						<thead>
							<tr>
								<th>我的订单</th>
								<th>金额/支付类型</th>
								<th>订单状态</th>
								<th>收货人</th>
								<th>操作</th> 
							</tr>
						</thead>
						
						
						<c:forEach items="${OrderList}" var="temp">
						
 						<tbody>
							<tr class="sep-row"><td colspan="3"></td></tr>
							<tr class="tr-th">
								<td colspan="5">
									<span class="gap"></span>
									<span class="dealtime span_30" title="2015-1-19 10:30:42">${temp.ordertime}</span>
									<span class="number span_30">订单号：
										<a href="#" target="_blank" >${temp.id}
										</a>
									</span>
									<span class="wod_sc_delete_beij span_30"><a href="#" class="wod_dingd_delete"></a></span>
									
									
								</td>
							</tr>
							
							<tr class="tr-bd">
								<td rowspan="1">
								<c:forEach items="${temp.details}" var="item"> 
									<div class="goods-item" >
										<div class="p-img">
											<a target="_blank" href="shangp_xiangq.html">
												<img src="images/lieb_tupi1.jpg" alt="">
											</a>
										</div>
										<div class="p-msg">
											<div class="p-name" >
											<span class="span_30"><a href="shagnj_dianp.html">${item.goods.shop.name}</a></span><br>
												<a target="_blank" href="shangp_xiangq.html">${item.goods.name} ${item.goods.size} ${item.goods.color} </a>
												<c:choose>
													<c:when test="${temp.orderstatu == '待评价'  || temp.orderstatu == '已评价'}">
													<p class="yiwanc_hui"><a href="toApplyService?id=${item.id}">申请售后</a></p>
													</c:when>
													<c:when test="${temp.orderstatu == '待收货' }">
													<p class="yiwanc_hui"><a href="toApplyService?id=${item.id}">退款/退货</a></p>
													</c:when>
													<c:otherwise>
														<p class="yiwanc_hui"><a href="shengq_shouh.html">联系卖家</a></p>
													</c:otherwise>
												</c:choose>
											</div>
											
										</div>
									</div>
									<div class="goods-number" style="text-align: center;">X${item.num}</div>
									</c:forEach>
								
									
									
								</td>
								
								
								<td rowspan="1" >
									<div class="zhif_jine" >
										<p >总额￥${temp.totalprice}</p>
										<span>${temp.paytype}</span>
									</div>
								</td>
								<td rowspan="1">
									<div class="operate">
										<c:choose>
											<c:when test="${temp.paystatu == '待支付'}">
												<p class="yiwanc_hui" id="wait">${temp.paystatu}</p>
											</c:when>
											<c:otherwise><p class="yiwanc_hui" id="wait">${temp.orderstatu}</p></c:otherwise>
										</c:choose>
										
										<a href="toDetail?orderid=${temp.id}" target="_blank" class="a-link" >订单详情</a><br> 
									</div>
								</td>
								<td rowspan="1">
									<div class="txt_ren" >
										<span>${temp.addr.name}</span>
										<p class="ren_tub"></p>
									</div>
								</td> 
								<td rowspan="1">
								<c:choose>
									<c:when test="${temp.paystatu == '待支付'}">
										<div class="operate">
										<a href="tij_dingd.html" target="_blank" class="btn-def">去付款</a>
									</div>
									</c:when>
									<c:when test="${temp.orderstatu == '待评价' }">
										<div class="operate">
											<a href="tij_dingd.html" target="_blank" class="btn-def">评价晒单</a>
										</div>
									</c:when>
									<c:otherwise>
										<div class="operate">
											<a href="javascript:void(0)" target="_blank" id="${temp.id}" class="btn-def"
											onclick="receive(id)">确认收货</a>
										</div>
									</c:otherwise>
										
									</c:choose>
									
								</td>
							</tr> 
							
						</tbody>
						
						</c:forEach> 
					</table>
						
						
					
					<div class="gerzx_fany">
						<a href="#" class="shangxy">上一页</a>
						<a href="#">1</a>
						<a href="#" class="shangxy">上一页</a>
					</div>
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div> 
<script type="text/javascript">
	/* function toDetail(){
		var id = $("#orderid${temp.id}").val();
		alert(id);
		window.location.href = 'toDetail?orderid='+id+'';
	}
	
 */
 function receive(id){
		if(confirm("请确认此操作!")){
			$.post("receiveGoods?id="+id+"",function(data){
				alert(data);
				window.location.reload();
			});
		}
	} 
 
</script>


<%@include file="AfterHeader.jsp"%>