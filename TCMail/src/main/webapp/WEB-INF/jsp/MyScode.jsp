<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城—我的积分</title>
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
					<div class="wt">
						<ul>
							<li class="dangq_hongx"><a href="wod_jifen.html">我的积分</a></li> 
							<li><a href="zhuans_jifen.html">专属积分</a></li> 
						</ul>
					</div>
					<div class="ger_zx_wod_jif">
						<div class="bei_h">
							<div class="qianq_d"><p>当前可用积分</p><h1>2500</h1></div>
							<div class="qianq_d qianq_d_sda"><p>将要过期的积分</p><h1 class="color_hong">0</h1><span>您的积分将在每年年底过期！</span></div>
							<div class="qianq_d"><a href="jifen_shangc.html" class="fanh_annniu">前往兑换超级礼品</a></div>
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
									<th>来源/用途</th>
									<th>积分变化</th>
									<th>日期</th>
									<th>备注</th>
								</tr>
							</thead>
							<tbody>
								<tr class="sep-row"><td colspan="4"></td></tr>
								<tr class="tr-th">
									<td colspan="4">
										<span class="gap"></span> 
										<span class="number">订单号：<a href="#" target="_blank">62938990890</a></span> 
									</td>
								</tr>
								<tr class="tr-bd">
									<td rowspan="1">
										<div class="goods-item">
											<div class="p-img">
												<a target="_blank" href="#">
													<img src="images/lieb_tupi3.jpg" alt="">
												</a>
											</div>
											<div class="p-msg">
												<div class="p-name">
													<a target="_blank" href="#">红豆居家情侣睡衣男女春秋纯棉长袖条纹卡通家居服套装119 麻灰 170/92A</a>
												</div>
											</div>
										</div>
										<div class="goods-number">x1</div>
									</td>
									<td rowspan="1">
										<div class="zhif_jine">
											<h1 class="jif_jia">+15</h1>
										</div>
									</td>
									<td rowspan="1">
										<div class="txt_ren">
											<span>2017/11/07</span> 
										</div>
									</td>
									<td rowspan="1">
										<div class="operate">
											<span class="a-link">交易获得</span><br> 
										</div>
									</td>
								</tr>
							</tbody>
							<tbody>
								<tr class="sep-row"><td colspan="4"></td></tr>
								<tr class="tr-th">
									<td colspan="4">
										<span class="gap"></span> 
										<span class="number">订单号：<a href="#" target="_blank">62938990890</a></span> 
									</td>
								</tr>
								<tr class="tr-bd">
									<td rowspan="1">
										<div class="goods-item">
											<div class="p-img">
												<a target="_blank" href="#">
													<img src="images/lieb_tupi3.jpg" alt="">
												</a>
											</div>
											<div class="p-msg">
												<div class="p-name">
													<a target="_blank" href="#">红豆居家情侣睡衣男女春秋纯棉长袖条纹卡通家居服套装119 麻灰 170/92A</a>
												</div>
											</div>
										</div>
										<div class="goods-number">x1</div>
									</td>
									<td rowspan="1">
										<div class="zhif_jine">
											<h1 class="jif_jian">+200</h1>
										</div>
									</td>
									<td rowspan="1">
										<div class="txt_ren">
											<span>2017/11/07</span> 
										</div>
									</td>
									<td rowspan="1">
										<div class="operate">
											<span class="a-link">购买商品</span><br> 
										</div>
									</td>
								</tr>
							</tbody> 
						</table>
						<div class="gerzx_fany">
							<a href="#" class="shangxy">上一页</a>
							<a href="#">1</a>
							<a href="#" class="shangxy">上一页</a>
						</div>
					</div>
				</div>
			</div> 
		</div>
	</div>
</div>
<script type="text/javascript">
$(function(){
	$("#date").selectDate()
	
	$("#days").focusout(function(){
		var year = $("#year option:selected").html()
		var month = $("#month option:selected").html()
		var day = $("#days option:selected").html()
		console.log(year+month+day)
	})
	
})

</script>
<jsp:include page="../public/AfterFoot.jsp"></jsp:include>