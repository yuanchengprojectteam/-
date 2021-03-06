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
					<div class="shand_piaot"><a href="MyOrder" style="cursor:pointer;">我的订单</a></div>
					
					<div class="tab_trigger tab_trigger_wod_dd">
					 	<p class="attrK">实物订单：</p>
						<ul>
							<li><a class="text_shaid" href="OrderDetail?tabCode=AllOrder" id="AllOrder">全部</a></li>
							<li><a class="text_shaid" href="OrderDetail?tabCode=waitpay" id="waitpay" >待支付</a><c:if test="${! empty waitpay}"><p class="sup">${waitpay}</p></c:if></li>
							<li><a class="text_shaid" href="OrderDetail?tabCode=waitsend" id="waitsend">待收货</a><c:if test="${! empty waitsend}"><p class="sup">${waitsend}</p></c:if></li>
							<li><a class="text_shaid" href="OrderDetail?tabCode=waitrate "id="waitrate">待评价</a><c:if test="${!empty waitrate}"><p class="sup">${waitrate}</p></c:if></li> 
						</ul>
					</div> 
					
					<div class="wod_dingd_shuaix">
						<p class="dingd_huis_zhan" ><a href="toAddrManager">我的收获地址</a></p>
                        <p class="dingd_huis_zhan" style="margin-left: 8%"><a href="#">我的优惠信息</a></p>
					</div>
					
					
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
								<th colspan="5">我的物流</th>
							</tr>
						</thead>
						<c:forEach items="${OrderList.items}" var="temp">
							<tbody>
								<tr class="sep-row"><td colspan="4"></td></tr>
								<tr class="tr-th">
									<td colspan="5">
										<span class="gap"></span>
										<span class="dealtime span_30" title="2015-1-19 10:30:42">${temp.ordertime}</span>
										
									</td>
								</tr>
								<tr class="tr-bd">
									<td rowspan="1" colspan="3">
										<div class="goods-item">
											<div class="p-img">
												<a target="_blank" href="shangp_xiangq.html">
													<img src="images/lieb_tupi1.jpg" alt="">
												</a>
											</div>
											<div class="p-msg">
												<div class="p-name" style="margin-left: 10px">
													<a target="_blank" href="shangp_xiangq.html">${temp.orderstatu}</a>
													<p class="yiwanc_hui" style="margin-top: 6px"> 
													<a href="toDetail?orderid=${temp.id}" target="_blank" class="a-link">查看订单详情</a>
													<br></p>
												</div>
											</div>
										</div>
									</td>
									<td colspan="3">
										<div class="operate">
											<a href="javascript:void(0)" target="_blank" class="btn-def" id="${temp.id}" 
											onclick="receive(id)">确认收货</a>
										</div>
									</td>
								</tr> 
							</tbody>
 						
						</c:forEach> 
					</table>
					<div class="gerzx_fany">
					<div style="float: left;">
						<c:choose>
							<c:when test="${OrderList.isMore == 0}">
								<a href="javascript:void(0)" class="shangxy" onclick="alert('已经是尾页了')" >下一页</a>
							</c:when>
							<c:otherwise>
								<a href="OrderDetail?tabCode=${param.tabCode}&&currentPage=${OrderList.nextPage}" class="shangxy">下一页</a>
							</c:otherwise>
						</c:choose>
						<c:choose>
						<c:when test="${OrderList.currentPage == 1}">
								<a href="javascript:void(0)" class="shangxy" onclick="alert('已经是首页了')" >上一页</a>
						</c:when>
						<c:otherwise>
							<a href="OrderDetail?tabCode=${param.tabCode}&&currentPage=${OrderList.prePage}" class="shangxy" >上一页</a>
						</c:otherwise>
						</c:choose>
						
					</div>
					<div style="float: right;margin-right: 10px">
						第&nbsp;<span id="currentPage" style="color: black;">${OrderList.currentPage}</span>&nbsp;页
					</div>
					</div>
					
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div> 
<script type="text/javascript">

 	/* $("#AllOrder").click(function(){
		$.post("AllOrder",function(data){
			$("#wait").html(data.orderstatu)
		});
	});
 	$("#waitpay").click(function(){
		$.post("waitpay",function(data){
			$("#wait").html(data.orderstatu)
		});
	}); */
	function receive(id){
		if(confirm("请确认此操作!")){
			$.post("receiveGoods?id="+id+"",function(data){
				alert(data);
				window.location.reload();
			});
		}
	} 

</script>


<jsp:include page="../public/AfterFoot.jsp"></jsp:include>