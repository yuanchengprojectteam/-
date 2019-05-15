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
						<a class="da_zhu" href="">${types.name}</a>
						
					</h3> 
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
					<c:forEach items="${types.childType}" var="ctype">
						<dl class="fore1">
							<dt><a href="showStyle1?gtype=${ctype.name}">${ctype.name}<i>></i></a></dt>
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
		<li><a href=""><img src="./images/banner.jpg"></a></li>
		<li><a href=""><img src="./images/banner1.jpg"></a></li>
		<li><a href=""><img src="./images/banner.jpg"></a></li>
		<li><a href=""><img src="./images/banner1.jpg"></a></li>
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



<!--层次-->
<div class="chengc_jvz">
<c:forEach items="${GtypeList}" var="types">
	<div class="slideTxtBox">
		<div class="hd">
			<h1>
				${types.name}
			</h1>
			<ul>
			<c:forEach items="${types.childType}" var="ctype">
			<li >${ctype.name}</li>
			</c:forEach>
			</ul>
		</div>
		
		<div class="bd">
		<c:forEach items="${types.childType}" var="ctype">
		
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
					<c:forEach items="${ ctype.gsonType}" var="gtype">
					<c:forEach items="${ gtype.goodsList}" var="temp">
					<div class="you_shangp_lieb">
						<a href="#"><img  class="you_tup_k" src="${temp.image}"></a>
						<a href="#" class="_you_neir_biaot">${temp.name} ${temp.size } ${temp.color }</a>
						<span>¥ ${temp.price }</span>
					</div>
					</c:forEach>
					</c:forEach>
				</div>
			</ul>
		</c:forEach>
			
			
		</div>
	</div>
	
	</c:forEach>
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
			<c:forEach items="${newList}" var="temp">
				<div class="tes_xiaot_neir">
					<a href="#">
						<h1><img class="tes_xiaot_dongh" src="${temp.image }"></h1>
						<h2>${temp.name}</h2>
						<span>¥ ${temp.price }</span>
					</a>
				</div>
			</c:forEach>
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
					<c:forEach items="${newList}" var="temp">
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="${temp.image }" /></a></div>
							<div class="title"><a href="#" target="_blank">${temp.name }</a><span>¥ ${temp.price }</span></div>
						</li>
					</c:forEach>
						
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

</body>
</html>