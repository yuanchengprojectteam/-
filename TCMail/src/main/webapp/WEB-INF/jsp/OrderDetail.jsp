<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head>
<meta charset="utf-8">
<title>WangID通城——订单详情</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
<!-- 
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
 <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
 
</head>
<body>
<!--头部-->

<%@ include file="AfterHeader.jsp" %>
<!--内容-->
<div class="wod_tongc_zhongx">
	<div class="beij_center D_sj">
		<div class="order_state">
			<div class="state_cont">
				<div class="state_lcol">
				    <div class="state_top">订单号：60780242294</div>
				    <h3 class="state_txt ftx_02">等待收货</h3>
				    <br>
				    <span class="remain_time" style="display: none"><b></b></span>
				    <div class="state_btns">
						<a href="pingj.html" class="btn_1">确认收货</a>
					</div>
				    <div class="state_bottom"> 
				        <a class="btn_del" href="shengq_shouh.html"  style="display: inline;">
				            <b></b>
				            取消订单
				        </a>
				    </div>
				</div>
				<!---->
				<div class="state_rcol">
					<div class="state_rtop">
				        <!--提示信息 -->
				        <div class="ftx_03"> 
				           尊敬的客户，您的订单商品已经从库房发出，请您做好收货准备。<br>如果您已收到货物，请点击“确认收货”按钮完成订单。 
				        </div>
				    </div>
				    <!---->
				    <div id="process-04" class="order-process">
			            <div class="node ready">
			            	<i class="node-icon icon-start"></i>
			            	<ul>
			            		<li class="txt1">&nbsp;</li>
			            		<li class="txt2">提交订单</li>
			            		<li id="track_time_0" class="txt3">2017-09-06 <br> 23:08:43</li>
			            	</ul>
			            </div>
	            		<div class="proce done"><ul><li class="txt1"></li></ul></div>
	            		<div class="node ready">
	            			<i class="node-icon icon-pay"></i>
	            			<ul>
		            			<li class="txt1">&nbsp;</li>
		            			<li class="txt2">付款成功</li>
		            			<li id="track_time_4" class="txt3"></li>
	            			</ul>
	            		</div>
	            		<div class="proce done"><ul><li class="txt1">&nbsp;</li></ul></div>
	            		<div class="node ready">
	            			<i class="node-icon icon-store"></i>
	            			<ul>
		            			<li class="txt1">&nbsp;</li>
		            			<li class="txt2">商品出库</li>
		            			<li id="track_time_1" class="txt3"></li>
	            			</ul>
	            		</div>
	            		<div class="proce done"><ul><li class="txt1">&nbsp;</li></ul></div>
	            		<div class="node ready">
	            			<i class="node-icon icon-express"></i>
	            			<ul>
		            			<li class="txt1">&nbsp;</li>
		            			<li class="txt2">等待收货</li>
		            			<li id="track_time_5" class="txt3"></li>
	            			</ul>
	            		</div>
	            		<div class="proce doing" id="procestate"><ul><li class="txt1">派送中</li></ul></div>
	            		<div class="node wait">
	            		<i class="node-icon icon-finish"></i>
		            		<ul>
			            		<li class="txt1" id="promise_time_2"></li>
			            		<li class="txt2">完成</li>
			            		<li class="txt3">&nbsp;</li>
		            		</ul>
	            		</div>
            		</div>
				    <!---->
				</div>
			</div>
		</div>
		<div class="order_state">
			<div class="state_cont">
				<div class="track_lcol">
	                <div class="p-item"> 
						<div class="p-img"><a href="shangp_xiangq.html"><img src="images/xiangqtu_1.jpg" alt=""></a></div>
	                    <div class="p-info">
	                        <ul>
								<li>送货方式：普通快递</li>
	                        	<li>承运人：中通快递</li><li>运费：￥6.00</li><li>承运人电话：95311</li><li>货运单号：452759108171</li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="ac">
	                    <a href="#none" class="btn-9 hide">查看物流</a>
	                </div>
	            </div>
	            <!---->
	            <div class="peis_xingxi">
	            	<!-- 收货人信息 -->
	            	<div class="dl">
					    <div class="dt"> 
							<h4>收货人信息</h4>
					    </div>
					    <div class="dd">
					        <div class="item">
					            <span class="label">收货人：</span>
					            <div class="info-rcol"> 潘中全 </div>
					        </div>
					        <div class="item">
								<span class="label">地址：</span>
					            <div class="info-rcol">贵州贵阳市云岩区城区下合群路达亨大厦1606</div>
					        </div>
					        <div class="item">
								<span class="label">手机号码：</span>
					            <div class="info-rcol">182****0710</div>
					        </div>
			                <div class="item">
								<span class="label">邮箱：</span>
			                	<div class="info-rcol">2***@***</div>
			            	</div>
			            </div>
					</div>
					<!-- 付款信息 -->
					<div class="dl">
					    <div class="dt"> 
							<h4>付款信息</h4>
					    </div>
					    <div class="dd">
					        <div class="item">
					            <span class="label">付款方式：</span>
					            <div class="info-rcol"> 在线支付 </div>
					        </div>
					        <div class="item">
								<span class="label">商品总额：</span>
					            <div class="info-rcol"> ¥48.00</div>
					        </div>
					        <div class="item">
								<span class="label">应支付金额：</span>
					            <div class="info-rcol"> ¥54.00</div>
					        </div> 
			            </div>
					</div> 
 
 

					<!-- 发票信息 -->
					<div class="dl">
					    <div class="dt"> 
							<h4>发票信息</h4>
					    </div>
					    <div class="dd">
					        <div class="item">
					            <span class="label">发票类型：</span>
					            <div class="info-rcol"> 普通发票 </div>
					        </div>
					        <div class="item">
								<span class="label">发票抬头：</span>
					            <div class="info-rcol">个人</div>
					        </div>
					        <div class="item">
								<span class="label">发票内容：</span>
					            <div class="info-rcol"><a href="#">明细</a></div>
					        </div> 
			            </div>
					</div>
					<!-- ** -->
	            </div>
            </div> 
		</div>
		<div class="order_state">
			<div class="state_cont"> 
				<div class="goods-list ">
					<table class="tb-void tb-order">
						<colgroup>
		                    <col class="grap">
		                    <col class="col-goods">
		                    <col class="col-number">
		                    <col class="col-price">
		                    <col class="col-amount">
		                    <col class="col-bean"> 
							<col class="col-ops">
							<col class="grap">
		                </colgroup>
		                <thead>
			                <tr>
			                    <th class="grap"></th>
			                    <th>商品</th>
			                    <th>商品编号</th>
			                    <th>京东价</th>
			                    <th>商品数量</th>
			                    <th>京豆</th>
								<th>操作</th>
                                <th class="grap"></th>
			                </tr>
			            </thead>
			            <tbody>
			            	<tr class="first-tr product-10420557748">
								<td class="grap"></td>
                            	<td>
	                                <div class="p-item">
	                                    <div class="p-img">
											<a href="shangp_xiangq.html" target="_blank">
	                                            <img src="images/lieb_tupi3.jpg">
	                                        </a>
	                                    </div>
	                                    <div class="p-info">
	                                        <div class="p-name">
	                                        	<a href="shangp_xiangq.html" class="a-link" target="_blank" title="威莱登尼 棒球帽男女夏季防晒遮阳帽韩版潮鸭舌帽太阳的后裔平顶帽子 热卖纯色平顶 黑色">威莱登尼 棒球帽男女夏季防晒遮阳帽韩版潮鸭舌帽太阳的后裔平顶帽子 热卖纯色平顶 黑色</a>
	                                        </div> 
	                                        <div class="p-extra">
	                                             <span class="txt">热卖纯色平顶 黑色</span>
	                                        </div>
	                                    </div>
	                                </div>
                            	</td>
                            <td>10420557748</td>
							<td> <span class="f-price"> ¥48.00 </span> </td>
							<td>1</td>
                            <td>0</td>
                            <td>
                            	<div class="p-btns">
                            		<a href="shengq_shouh.html" target="_blank" class="link-btn mt10">申请售后</a><br>
                            		<a class="#" href="pingj.html">评价</a>|
                            		<a class="link-btn mt10" href="pingj_shaid.html" target="_blank">晒单</a><br>
                            		<a href="tij_dingd.html" class="mt10 btn-again" target="_blank"><b></b>立即购买</a>
                            	</div>
                            </td>
							<td class="grap"></td>
                        </tr>
			            </tbody>
					</table>
				</div>
				<div class="goods-total"> 
				    <ul>
						<li>
							<span class="label">商品总额：</span>
							<span class="txt">¥48.00</span>
				        </li> 
				        <li>
				            <span class="label">返　　现：</span>
				            <span class="txt">-¥0.00</span>
				        </li>               
						<li>
				            <span class="label">运　　费：</span>
				            <span class="txt">¥6.00</span>
				        </li>
				        <li class="ftx_01">
				            <span class="label">应付总额：</span>
				            <span class="txt count">¥54.00</span>
				        </li>
				    </ul>
				</div>
			</div>
		</div> 
	</div>
</div>
<%@ include file="AfterFoot.jsp"%>