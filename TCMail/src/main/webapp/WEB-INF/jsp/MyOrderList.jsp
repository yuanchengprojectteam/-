<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
<meta charset="utf-8">
<title>WangID通城——我的订单</title>
<link rel="stylesheet" type="text/css" href="../../css/index.css">
<link rel="stylesheet" type="text/css" href="../../css/ziy.css">
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
					<div class="shand_piaot"><a href="MyOrder" style="cursor:pointer;">我的订单</a>
						<p class="dingd_huis_zhan" style="float: right;margin-right: 5%"><a href="toRubbishCar">订单回收站</a></p>
					</div>
					
					<div class="tab_trigger tab_trigger_wod_dd">
					 	<p class="attrK">实物订单：</p>
						<ul>
							<li><a class="text_shaid" href="OrderDetail?tabCode=AllOrder" id="AllOrder">全部</a></li>
							<li><a class="text_shaid" href="OrderDetail?tabCode=waitpay" id="waitpay">待支付</a><c:if test="${! empty waitpay}"><p class="sup">${waitpay}</p></c:if></li>
							<li><a class="text_shaid" href="OrderDetail?tabCode=waitsend" id="waitsend">待收货</a><c:if test="${! empty waitsend}"><p class="sup">${waitsend}</p></c:if></li>
							<li><a class="text_shaid" href="OrderDetail?tabCode=waitrate" id="waitrate">待评价</a><c:if test="${!empty waitrate}"><p class="sup">${waitrate}</p></c:if></li> 
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
						
						
						<c:forEach items="${OrderList.items}" var="temp">
						
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
									<span class="wod_sc_delete_beij span_30">
									<a href="javascript:void(0)" class="wod_dingd_delete" id="${temp.id}" onclick="deteleOrder(id)"></a>
									</span>
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
														<p class="yiwanc_hui">
														<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1371490392&site=qq&menu=yes">
														  <img border="0" src="http://wpa.qq.com/pa?p=2:1371490392:51" 
														  alt="点击这里给我发消息" title="联系卖家"/>
														  </a>
														</p>
														
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
								<%-- <c:forEach items="${temp.details}" var="item">  --%>
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
									<%-- </c:forEach> --%>
									
								</td>
							</tr> 
							
						</tbody>
						
						</c:forEach> 
					</table>
						
						
					
					<div class="gerzx_fany">
					
					<!-- <span>每页</span>
					<select onclick="page()" id="select">
						<option value="3" selected="selected">3</option>
						<option value="5" >5</option>
						<option value="6" >6</option>
					</select>
					<span>订单</span> -->
													
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
	/* function toDetail(){
		var id = $("#orderid${temp.id}").val();
		alert(id);
		window.location.href = 'toDetail?orderid='+id+'';
	}
	
 */
 function receive(id){
		if(confirm("请确认此操作!")){
			$.post("receiveGoods?id="+id+"",function(data){
				alert(data.msg);
				window.location.reload();
			});
		}
} 
 function deteleOrder(id){
	 if(confirm("请确认此操作!")){
		 $.post("dateleOrder?id="+id+"",function(data){
				alert(data.msg);
				window.location.reload();
		});
		
	 }
	 
 }
/*  $(".shangxy").click("changePage",function(e){
	 var operate = e.target.id;
	 var currentPage = $("#currentPage").html();
	 var pageSize = $("select option:selected").val(); 
	 if(operate == 'add'){
		var currentPage =  Number(currentPage) + 1;
	 }else{
		 var currentPage = Number(currentPage) - 1; 
	 }
	 $.post("pageOrder",function(){
		 
	 })
 } */
</script>


<jsp:include page="../public/AfterFoot.jsp"></jsp:include>