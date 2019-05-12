<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!DOCTYPE html>
<html>  
<head> 
<meta charset="utf-8">
<title>WangID通城</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
 <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script> 
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script>
</head>
<body>

<jsp:include page="../public/BeforeHeader.jsp"></jsp:include>
		
			
		<!--左边导航-->
		<div class="dd-inner">
		<c:forEach items="${GtypeList}" var="types">
			<div class="fore-2">
				<div class="item fore1">
					 <h3>
						<a class="da_zhu" href="#">${types.name}</a>
						
					</h3> 
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
					<c:forEach items="${types.childType}" var="ctype">
						<dl class="fore1">
							<dt><a href="">${ctype.name}<i>></i></a></dt>
								<dd>
								<c:forEach items="${ ctype.gsonType}" var="gtype">	
									<a href="">${gtype.name}</a>
									</c:forEach>	
								</dd>
							</dl>	
					</c:forEach>
					</div>
					
				</div>
			</div>
			</c:forEach>
		</div>
		
		
	</div>
</div>

<!--轮播图-->
<div id="lunbo">
	<ul id="one">
		<li><a href=""><img src="../../images/banner.jpg"></a></li>
		<li><a href=""><img src="../../images/banner1.jpg"></a></li>
		<li><a href=""><img src="../../images/banner.jpg"></a></li>
		<li><a href=""><img src="../../images/banner1.jpg"></a></li>
	</ul>
	<ul id="two">
		<li class="on">1</li>
		<li>2</li>
		<li>3</li>
		<li>4</li>
	</ul>
	<!--轮播图左右箭头-->
	<div class="slider-page">
		<a href="javascript:void(0)" id="left"><</a>
		<a href="javascript:void(0)" id="right">></a>
	</div>
</div>

<!--内容一开始了-->
<div class="bend_beij">

	



<!--层次-->
<div class="chengc_jvz">
	<div class="slideTxtBox">
		<div class="hd">
			<h1>
				<p>办公家具</p>
			</h1>
			<ul><li>精品热卖</li><li>卧室家具</li><li>灯饰照明</li><li>五金工具</li><li>厨房卫浴</li><li>办公文教</li></ul>
		</div>
		<div class="bd">
			<ul>
				<div class="louc_tup_qieh">
				  	<div class="js-silder ws-slider">
				        <div class="silder-scroll">
				            <div class="silder-main">
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/liuceng_1.jpg" alt=""></a>
				                </div>
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/2.png" alt=""></a>
				                </div>
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/3.png" alt=""></a>
				                </div>
				            </div>
				        </div>
				        <div class="js-silder-ctrl">
				            <span class="silder-ctrl-prev"></span>
				            <span class="silder-ctrl-next"></span>
				        </div>
				    </div>
				    
				</div>
				<div class="you_lirb">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			
			
		</div>
	</div>
</div>





 
<script type="text/javascript">jQuery(".slideTxtBox").slide();</script>
<script type="text/javascript">jQuery(".slideTxtBox2").slide();</script>
<script type="text/javascript">jQuery(".slideTxtBox3").slide();</script>
<script type="text/javascript">jQuery(".slideTxtBox4").slide();</script>



<!--特色商品/ 热门商品-->

<div class="tes_shnagp_beij">
	<div class="tes_shangp">
		<div class="neir_biaot">
			<p>特色商品</p>
			<p class="yingw">featured</p>
			<a href="#">MORE+</a>
		</div>
		<div class="tes_shangp_neir_k">
			<div class="tes_dat">
				<a href="#">
					<h1><img class="tes_dat_dongh" src="images/te_se_shangp_da.jpg"></h1>
					<h2>苹果手机iPhone6(32G)全网</h2>
					<span>¥ 4999 .00</span>
				</a>
			</div>
			<div class="tes_xiaot_beij">
				<div class="tes_xiaot_shang">
					<div class="tes_xiaot_neir">
						<a href="#">
							<h1><img class="tes_xiaot_dongh" src="images/tes_shangp_xiao.jpg"></h1>
							<h2>海尔(Haier) BCD452WDPF 452</h2>
							<span>¥ 506 .00</span>
						</a>
					</div>
					<div class="tes_xiaot_neir tes_xiaot_wubian_kuang">
						<a href="#">
							<h1><img class="tes_xiaot_dongh" src="images/tes_shangp_xiao2.jpg"></h1>
							<h2>海尔(Haier) BCD452WDPF 452</h2>
							<span>¥ 506 .00</span>
						</a>
					</div>
				</div>
				<div class="tes_xiaot_shang tes_xiaot_xia">
					<div class="tes_xiaot_neir">
						<a href="#">
							<h1><img class="tes_xiaot_dongh" src="images/tes_shangp_xiao3.jpg"></h1>
							<h2>海尔(Haier) BCD452WDPF 452</h2>
							<span>¥ 506 .00</span>
						</a>
					</div>
					<div class="tes_xiaot_neir tes_xiaot_wubian_kuang">
						<a href="#">
							<h1><img class="tes_xiaot_dongh" src="images/tes_shangp_xiao4.jpg"></h1>
							<h2>海尔(Haier) BCD452WDPF 452</h2>
							<span>¥ 506 .00</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="rem_shangp">
		<div class="neir_biaot">
			<p>热门商品</p>
			<p class="yingw">Hot commodity</p>
			<a href="#">MORE+</a>
		</div>
		<div class="rem_shangp_beij_k">
			<!---->
			<div class="picScroll_left">
				<div class="hd"> 
					<ul></ul> 
				</div>
				<div class="bd">
					<ul class="picList">
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/rem_shangp.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 506 .00</span></div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/rem_shangp1.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 7940 .00</span></div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/rem_shangp.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 506 .00</span></div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/rem_shangp1.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 7940 .00</span></div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/rem_shangp1.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 506 .00</span></div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/rem_shangp1.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 7940 .00</span></div>
						</li>
					</ul>
				</div>
			</div>
			<!---->
		</div>
	</div>
</div>

<script type="text/javascript">
		jQuery(".picScroll_left").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:2 ,trigger:"click"});
		</script>

<jsp:include page="../public/BeforeFoot.jsp"></jsp:include>