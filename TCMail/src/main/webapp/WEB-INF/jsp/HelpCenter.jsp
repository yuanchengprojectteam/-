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
<%@include file="rowHeader.jsp" %>

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
<!--底部-->
<div class="dib_beij">
	<div class="dib_jvz_beij">
		<div class="shangp_baoz">
			<p>本地购物&nbsp;&nbsp;看得见的商品</p>
			<p class="beng1">正品行货&nbsp;&nbsp;购物无忧</p>
			<p class="beng2">低价实惠&nbsp;&nbsp;帮你省钱</p>
			<p class="beng3">本地直发&nbsp;&nbsp;专业配送</p>
		</div>
		<div class="zhongj_youx">
			<div class="lieb_daoh">
				<h4>物流配送</h4>
				<ul>
					<li><a href="#">配送查询</a></li>
					<li><a href="#">配送服务</a></li>
					<li><a href="#">配送费用</a></li>
					<li><a href="#">配送时效</a></li>
					<li><a href="#">签收与验货</a></li>
				</ul>
			</div>
			<div class="lieb_daoh">
				<h4>支付与账户</h4>
				<ul>
					<li><a href="#">货到付款</a></li>
					<li><a href="#">在线支付</a></li>
					<li><a href="#">门店支付</a></li> 
					<li><a href="#">账户安全</a></li>
				</ul>
			</div>
			<div class="lieb_daoh">
				<h4>购物帮助</h4>
				<ul>
					<li><a href="#">购物保障</a></li>
					<li><a href="#">购物流程</a></li>
					<li><a href="#">焦点问题</a></li>
					<li><a href="#">联系我们</a></li> 
				</ul>
			</div>
			<div class="lieb_daoh">
				<h4>售后服务</h4>
				<ul>
					<li><a href="#">退换货服务</a></li>
					<li><a href="#">退款说明</a></li>
					<li><a href="#">专业维修</a></li>
					<li><a href="#">延保服务</a></li>
					<li><a href="#">家电回收</a></li>
				</ul>
			</div>
			<div class="lieb_daoh">
				<div class="kef_dianh">
					<p>客服电话</p><span>400-6677-937</span>
				</div>
				<div class="kef_dianh kef_dianh_youx">
					<p>意见收集邮箱</p><p>Ask@wangid.com</p>
				</div>
			</div> 
			<div class="lieb_daoh lieb_daoh_you">
				<div class="erw_ma_beij">
					<div class="erw_m">
						<h1><img src="images/mb_wangid.png"></h1>
						<span>扫码下载通城客户端</span>
					</div>
					<div class="erw_m">
						<h1><img src="images/mb_wangid.png"></h1>
						<span>扫码下载通城客户端</span>
					</div>
				</div>
			</div> 
		</div>
		<div class="beia_hao">
			<p>京ICP备：14012449号 黔ICP证：B2-20140009号  </p>
			<p class="gonga_bei">京公网安备：11010602030054号</p>
			<div class="renz_">
				<span></span>
				<span class="span1"></span>
				<span class="span2"></span>
				<span class="span3"></span>
			</div>
		</div>
	</div>
</div>
 


</body>
</html>
