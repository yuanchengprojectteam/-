
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
			<div class="mod_main" style="height: 800px">
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
               				<p><a href="shangp_xiangq.html">${g.type.name } ${g.name } ${g.size } ${g.color } 
               				<c:choose>
               					<c:when test="${g.commnum != null} || ${g.commnum != 0}">
               						<span>(已有${g.commnum }人评价)</span>
               					</c:when>
               					<c:otherwise>
               						<span>(还没有人评价)</span>
               					</c:otherwise>
               				</c:choose>
               				
               				
               				</a><p class="p_color_1">￥${g.price }</p></p>
               			</li>
               		</c:forEach>	
               		</ul>
               	</div>
            </div>
		</div>
	</div>
</div>
<script type="text/javascript">
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