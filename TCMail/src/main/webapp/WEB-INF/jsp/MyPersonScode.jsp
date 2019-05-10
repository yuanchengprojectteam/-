<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城—专属积分</title>
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
							<li><a href="wod_jifen.html">我的积分</a></li> 
							<li class="dangq_hongx"><a href="zhuans_jifen.html">专属积分</a></li> 
						</ul>
					</div>
					<div class="ger_zx_wod_jif">
						<div class="dis_f">
						<!---->
							<div class="coupon cp-bg-color-3 expiring">
								<div class="coupon-upper">
									<a class="amount"><span class="price-symbol">￥</span>200</a>
									<a class="scope">全店通用</a>
									<a class="lb-shop-name">发行店铺:</a>
									<a class="shop-name" href="#" target="_blank" title="伯爵卓尔男装旗舰店">伯爵卓尔男装旗舰店</a>
									<a class="lb-use-cond">使用条件:</a>
									<a class="use-cond">满1999.00</a>
									<a class="lb-valid-date">有效时间:</a>
									<a class="valid-date">2017.11.11&nbsp;至&nbsp;2017.11.11</a> 
								</div> 
							</div>
							<div class="coupon cp-bg-color-3 expiring">
								<div class="coupon-upper">
									<a class="amount"><span class="price-symbol">￥</span>200</a>
									<a class="scope">全店通用</a>
									<a class="lb-shop-name">发行店铺:</a>
									<a class="shop-name" href="#" target="_blank" title="伯爵卓尔男装旗舰店">伯爵卓尔男装旗舰店</a>
									<a class="lb-use-cond">使用条件:</a>
									<a class="use-cond">满1999.00</a>
									<a class="lb-valid-date">有效时间:</a>
									<a class="valid-date">2017.11.11&nbsp;至&nbsp;2017.11.11</a> 
								</div> 
							</div>
							<div class="coupon cp-bg-color-3 expiring">
								<div class="coupon-upper">
									<a class="amount"><span class="price-symbol">￥</span>200</a>
									<a class="scope">全店通用</a>
									<a class="lb-shop-name">发行店铺:</a>
									<a class="shop-name" href="#" target="_blank" title="伯爵卓尔男装旗舰店">伯爵卓尔男装旗舰店</a>
									<a class="lb-use-cond">使用条件:</a>
									<a class="use-cond">满1999.00</a>
									<a class="lb-valid-date">有效时间:</a>
									<a class="valid-date">2017.11.11&nbsp;至&nbsp;2017.11.11</a> 
								</div> 
							</div>
						</div>
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