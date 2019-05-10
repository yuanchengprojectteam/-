<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——评价晒单</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!--  <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
 <script type="text/javascript" src="js/select.js"></script>
</head>
<body>
<!--头部--> 
<jsp:include page="../public/AfterHeader.jsp"></jsp:include>
<!---->
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->

				<jsp:include page="../public/PersonCenterLeft.jsp"></jsp:include>
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="shand_piaot">评价晒单</div>
					<div class="tab_trigger">
						<ul>
							<li><a class="text_shaid" href="#">待评价订单</a><p class="sup">${count}</p></li>
							<li><a class="text_shaid" href="#">待晒单</a></li> 
						</ul>
					</div> 
					<table class="order-tb">
						<colgroup>
							<col class="number-col">
							<col class="consignee-col">
							<col class="amount-col">
							<col class="operate-col">
						</colgroup>
						<thead>
							<tr>
								<th>订单详情</th>
								<th>金额</th>
								<th>收货人</th>
								<th>操作</th>
							</tr>
						</thead>
						
						
						
				<c:forEach items="${orderGoods }" var="o">
						<tbody>
							<tr class="sep-row"><td colspan="4"></td></tr>
							<tr class="tr-th">
								<td colspan="4">
									<span class="gap"></span>
									<span class="dealtime" title="2015-1-19 10:30:42">${o.ordertime }</span>
									<span class="number">订单号：<a href="#" target="_blank">${o.id}</a></span> 
								</td>
							</tr>
					<c:forEach items="${o.details }" var="d">
							<tr class="tr-bd">
								<td rowspan="1">
									<div class="goods-item">
										<div class="p-img">
											<a target="_blank" href="shangp_xiangq.html">
												<img src="${d.goods.image }" alt="">
											</a>
										</div>
										<div class="p-msg">
											<div class="p-name">
												<a target="_blank" href="shangp_xiangq.html">${d.goods.name } ${d.goods.color }${d.goods.size }</a>
											</div>
										</div>
									</div>
									<div class="goods-number">${d.num }件</div>
								</td>
								<td rowspan="1">
									<div class="zhif_jine">
										<p>${d.goods.price }</p>
										<span>${o.paytype }</span>
									</div>
								</td>
								<td rowspan="1">
									<div class="txt_ren">
										<span>${o.user.name }</span>
										<p class="ren_tub"></p>
									</div>
								</td>
								<td rowspan="1">
									<div class="operate">
										<a href="dingd_xiangq.html" target="_blank" class="a-link">订单详情</a><br>
										<a href="comment?oid=${o.id }&id=${d.goods.id}" target="_blank" class="btn-def">评价</a>
									</div>
								</td>
							</tr>
					</c:forEach>
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
<jsp:include page="../public/AfterFoot.jsp"></jsp:include>