<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head>
<meta charset="utf-8"> 
<title>WangID通城——帮助中心</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
 <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script>
 
</head>
<body>
<!--侧边-->
<jsp:include page="../public/rowHeader.jsp"></jsp:include>

<!--帮助中心-->
<div class="bangz_zhongx_beij">
	<div class="beij_center bangz_zhongx_zhong">
		<div class="bangz_zuo_daoh">
			<div class="sideMenu" style="margin:0 auto">
				<h3 class="on"><em></em>书签切换系列</h3>
				<ul>
					<li class="sideMenu_dangq"><a href="#">商家入驻</a></li>
					<li><a href="#">入驻须知</a></li>
				</ul> 
				<h3><em></em>消费者服务</h3> 
				<ul>
					<li><a href="#">商家入驻</a></li>
					<li><a href="#">入驻须知</a></li>
				</ul>
				<h3><em></em>售后服务</h3>
				<ul>
					<li><a href="#">商家入驻</a></li>
					<li><a href="#">入驻须知</a></li>
				</ul> 
				<h3><em></em>支付与账户</h3>
				<ul>
					<li><a href="#">商家入驻</a></li>
					<li><a href="#">入驻须知</a></li>
				</ul>
				<h3><em></em>通城公告</h3>
				<ul>
					<li><a href="#">商家入驻</a></li>
					<li><a href="#">入驻须知</a></li>
				</ul> 
			</div><!-- sideMenu End --> 
		</div>
		<div class="bangz_you_neir">
			<div class="bangz_dangq_weiz"><p>帮助中心  >  商家帮助  >  商家入驻</p></div>
			<div class="bangz_zhongx_neir_kuang">
				<p>文字</p>
				<div class="bangz_zhongx_neir_tup">
					<img src="images/ruz_tongc.jpg">
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	jQuery(".sideMenu").slide({
		titCell:"h3", //鼠标触发对象
		targetCell:"ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
		effect:"slideDown", //targetCell下拉效果
		delayTime:300 , //效果时间
		triggerTime:150, //鼠标延迟触发时间（默认150）
		defaultPlay:true,//默认是否执行效果（默认true）
		returnDefault:true, //鼠标从.sideMen移走后返回默认状态（默认false）
		trigger:"click",
		});

</script>
<jsp:include page="../public/AfterFoot.jsp"></jsp:include>


</body>
</html>
