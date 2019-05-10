
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>  
<meta charset="utf-8">
<title>WangID通城——我的通城（个人中心首页）</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--   <script src="js/jquery-1.11.3.min.js" ></script> -->
<script src="js/index.js" ></script>
<script type="text/javascript" src="js/jquery1.42.min.js"></script> 

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
 <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> 
 
</head>
<body>
<jsp:include page="../public/AfterHeader.jsp"></jsp:include>
<!---->
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">

			<!--侧边导航-->
			
				<jsp:include page="../public/PersonCenterLeft.jsp"></jsp:include>
				

			<!--左边内容-->
			<div class="mod_main">
				<div class="mt">
                    <h3>我的订单</h3>
                    <div class="extra-r"><a href="wod_dingd.html">查看全部订单</a></div>
                </div>
                <div class="tb_order">
                	<table width="100%">
	                	<tbody class="fore0">
		                	<tr>
			                	<td><div class="img-list"><a href="shangp_xiangq.html" target="_blank"><img src="images/lieb_tupi1.jpg" title="女大学生这么穿才能吸引异性目光"></a></div></td>
			                	<td><div class="u-name">潘中全</div></td>
			                	<td>￥129.00<br>在线支付</td>
			                	<td><span class="ftx-03">2017-09-22 <br> 17:16:00</span></td>
			                	<td><span class="ftx-03">已完成</span></td>
			                	<td class="order-doi"><a target="_blank" href="dingd_xiangq.html" >查看</a></td>
		                	</tr>
	                	</tbody>
	                	<tbody class="fore0">
		                	<tr>
			                	<td><div class="img-list"><a href="shangp_xiangq.html" target="_blank"><img src="images/lieb_tupi2.jpg" title="女大学生这么穿才能吸引异性目光"></a></div></td>
			                	<td><div class="u-name">潘中全</div></td>
			                	<td>￥129.00<br>在线支付</td>
			                	<td><span class="ftx-03">2017-09-22 <br> 17:16:00</span></td>
			                	<td><span class="ftx-03">已完成</span></td>
			                	<td class="order-doi"><a target="_blank" href="dingd_xiangq.html" >查看</a></td>
		                	</tr>
	                	</tbody>
	                	<tbody class="fore0">
		                	<tr>
			                	<td><div class="img-list"><a href="shangp_xiangq.html" target="_blank"><img src="images/lieb_tupi3.jpg" title="女大学生这么穿才能吸引异性目光"></a></div></td>
			                	<td><div class="u-name">潘中全</div></td>
			                	<td>￥129.00<br>在线支付</td>
			                	<td><span class="ftx-03">2017-09-22 <br> 17:16:00</span></td>
			                	<td><span class="ftx-04">等待收货</span></td>
			                	<td class="order-doi"><a target="_blank" href="dingd_xiangq.html" >查看</a></td>
		                	</tr>
	                	</tbody>
                	</table>
                </div>
			</div>
			<div class="mod_main mod_main1">
				<div class="mt">
                    <h3>我收藏的商品</h3>
                    <div class="extra-r"><a href="wod_shouc.html">查看更多</a></div>
                </div>
               	<div class="follow">
               		<ul>
               			<li><a class="follow_tup_kuang" href="shangp_xiangq.html"><img src="images/lieb_tupi2.jpg"></a><p>暂无售价</p></li>
               			<li><a class="follow_tup_kuang" href="shangp_xiangq.html"><img src="images/lieb_tupi1.jpg"></a><p>￥25.00</p></li>
               			<li><a class="follow_tup_kuang" href="shangp_xiangq.html"><img src="images/lieb_tupi3.jpg"></a><p>暂无售价</p></li>
               			<li><a class="follow_tup_kuang" href="shangp_xiangq.html"><img src="images/lieb_tupi2.jpg"></a><p>暂无售价</p></li>
               			<li><a class="follow_tup_kuang" href="shangp_xiangq.html"><img src="images/lieb_tupi3.jpg"></a><p>暂无售价</p></li>
               			<li><a class="follow_tup_kuang" href="shangp_xiangq.html"><img src="images/lieb_tupi1.jpg"></a><p>暂无售价</p></li>
               		</ul>
               	</div>
            </div>
            <div class="mod_main mod_main1 mod_main2">
				<div class="mt">
                    <h3>我的购物车</h3>
                    <div class="extra-r"><a href="car">查看更多</a></div>
                </div>
               	<div class="follow">
               		<ul>
               		<c:forEach items="${cglist }" var="g">
               			<li>
               				<a class="follow_tup_kuang" href="shangp_xiangq.html"><img src="images/xiangqtu_1.jpg"></a>
               				<p><a href="shangp_xiangq.html">${g.type.name } ${g.name } ${g.size } ${g.color }<span>(已有${g.commnum }人评价)</span></a><p class="p_color_1">￥${g.price }</p></p>
               			</li>
               		</c:forEach>	
               		</ul>
               	</div>
            </div>
		</div>
	</div>
</div>
<jsp:include page="../public/AfterFoot.jsp"></jsp:include>