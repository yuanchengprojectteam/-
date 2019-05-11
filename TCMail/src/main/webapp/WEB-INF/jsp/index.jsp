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
						<!-- <p>
							<a href="#">五金</a>
							<a href="#">家具</a>
							<a href="#">家装</a>
							<a href="#">厨具</a>
						</p> -->
					</h3> 
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
						<dl class="fore1">
							<!-- <dt><a href="">大家电<i>></i></a></dt> -->							
							<dd>
								<c:forEach items="${types.childType}" var="ctype">
									<a href="">${ctype.name}</a>
								</c:forEach>
								<%-- <a href="">${types.childtype.}</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
								<a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a> --%>
							</dd>
						</dl>
						<!-- <dl class="fore1">
							<dt><a href="">生活电器<i>></i></a></dt>							
							<dd>
								<a href="">取暖电器</a><a href="">净化器</a><a href="">扫地机器人</a><a href="">吸尘器</a><a href="">加湿器</a><a href="">挂烫机/熨斗</a><a href="">电风扇</a>
								<a href="">冷风扇</a><a href="">插座</a><a href="">电话机</a><a href="">净水器</a><a href="">饮水机</a>
								<a href="">除湿机</a><a href="">干衣机清洁机</a><a href="">收录/音机</a><a href="">生活电器配件</a><a href="">其它生活电器</a>
							</dd>
						</dl>  
						<dl class="fore1">
							<dt><a href="">厨房电器<i>></i></a></dt>							
							<dd>
								<a href="">电压力锅</a><a href="">豆浆机</a><a href="">面包机</a><a href="">咖啡机</a><a href="">微波炉料理/榨汁机</a><a href="">电烤箱</a><a href="">电磁炉</a>
								<a href="">电饼铛/烧烤盘</a><a href="">煮蛋器酸奶机</a><a href="">电水壶/热水瓶</a><a href="">电炖锅</a><a href="">多用途锅</a><a href="">果蔬解毒机</a><a href="">养生壶/煎药壶</a><a href="">其它厨房电器</a>
							</dd>
						</dl>
						<dl class="fore1">
							<dt><a href="">个护健康<i>></i></a></dt>							
							<dd>
								<a href="">剃须刀剃/脱毛器</a><a href="">口腔护理</a><a href="">电吹风</a><a href="">美容器</a><a href="">理发器卷/直发器</a><a href="">按摩椅</a><a href="">按摩器</a>
								<a href="">足浴盆</a><a href="">血压计</a><a href="">健康秤/厨房秤</a><a href="">血糖仪</a><a href="">体温计</a><a href="">计步器/脂肪检测仪</a><a href="">脂肪检测仪其它健康电器</a>
							</dd>
						</dl>
						<dl class="fore1">
							<dt><a href="">五金家装<i>></i></a></dt>						
							<dd>
								<a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a><a href="">烟机/灶具</a>
								<a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
							</dd>
						</dl> -->
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

<!--内容一开始了-->
<div class="bend_beij">

	
<!--快速通道栏-->
<div class="kuanjlan">
	<ul class="clearfix">
            <li>
                <div class="list-li-box">
                    <a class="list-img" href="#" data-code="index01004-1" target="_blank">
                        <img src="images/meinv_1.jpg">
                        <span class="list-bg"></span>
                        <div class="list-cont">
                            <p class="cont-item"><span>羽饰</span></p>
                            <p class="cont-tile">秋季来点羽毛元素</p>
                            <p class="cont-info">让你更加美丽迷人</p>
                        </div>
                    </a>
                </div>
                
            </li>
            <li>
                <div class="list-li-box">
                    <a class="list-img" href="#" data-code="index01004-2" target="_blank">
                        <img src="images/meinv_2.jpg">
                        <span class="list-bg"></span>
                        <div class="list-cont">
                            <p class="cont-item"><span>原宿风</span></p>
                            <p class="cont-tile">个性夸张美衣</p>
                            <p class="cont-info">潮流原宿风</p>
                        </div>
                    </a>
                </div>
                
            </li>
            <li>
                <div class="list-li-box">
                    <a class="list-img" href="#" data-code="index01004-3" target="_blank">
                        <img src="images/meinv_3.jpg">
                        <span class="list-bg"></span>
                        <div class="list-cont">
                            <p class="cont-item"><span>皮裤</span></p>
                            <p class="cont-tile">高腰修身皮裤</p>
                            <p class="cont-info">轻松享受女神感觉</p>
                        </div>
                    </a>
                </div>
                
            </li>
            <li>
                <div class="list-li-box">
                    <a class="list-img" href="#" data-code="index01004-4" target="_blank">
                        <img src="images/meinv_4.jpg">
                        <span class="list-bg"></span>
                        <div class="list-cont">
                            <p class="cont-item"><span>服装</span></p>
                            <p class="cont-tile">变身女神范儿</p>
                            <p class="cont-info">几种搭配轻松打造</p>
                        </div>
                    </a>
                </div>
            </li>
        </ul>
</div>


<!--层次-->
<div class="chengc_jvz">
	<div class="slideTxtBox">
		<div class="hd">
			<h1>
				<p>办公家具</p>
				<p class="yingw_">Office furniture</p>
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
				    <div class="kuas_daoh">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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

<div class="chengc_jvz">
	<div class="slideTxtBox2">
		<div class="hd">
			<h1>
				<p>手机数码</p>
				<p class="yingw_">Mobile phone digital</p>
			</h1>
			<ul><li>电脑整机</li><li>热门手机</li><li>智能数码</li><li>游戏组装</li><li>硬件存储</li><li>摄影产品</li></ul>
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
				    <div class="kuas_daoh kuas_daoh_2">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_2">
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_2">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_2">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_2">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_2">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_2">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_2">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_2">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_2">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_2">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_2">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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

<div class="chengc_jvz">
	<div class="slideTxtBox3">
		<div class="hd">
			<h1>
				<p>服饰鞋帽</p>
				<p class="yingw_">Shoes and hats</p>
			</h1>
			<ul><li>精品热卖</li><li>精品热卖 </li><li>女装</li><li>男装</li><li>内衣</li><li>时尚套装</li></ul>
		</div>
		<div class="bd">
			<ul>
				<div class="louc_tup_qieh">
				  	<div class="js-silder ws-slider">
				        <div class="silder-scroll">
				            <div class="silder-main">
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/mm_yif.jpg" alt=""></a>
				                </div>
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/2.png" alt=""></a>
				                </div>
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/mm_yif.jpg" alt=""></a>
				                </div>
				            </div>
				        </div>
				        <div class="js-silder-ctrl">
				            <span class="silder-ctrl-prev"></span>
				            <span class="silder-ctrl-next"></span>
				        </div>
				    </div>
				    <div class="kuas_daoh kuas_daoh_3">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_3">
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_3">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_3">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_3">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_3">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_3">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_3">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_3">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_3">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_3">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_3">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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


<div class="chengc_jvz">
	<div class="slideTxtBox4">
		<div class="hd">
			<h1>
				<p>汽车用品</p>
				<p class="yingw_">Automobile</p>
			</h1>
			<ul><li>精品热卖</li><li>汽车品牌</li><li>维修保养</li><li>汽车装饰</li><li>车载电器</li><li>汽车服务</li></ul>
		</div>
		<div class="bd">
			<ul>
				<div class="louc_tup_qieh">
				  	<div class="js-silder ws-slider">
				        <div class="silder-scroll">
				            <div class="silder-main">
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/qiche_tu.jpg" alt=""></a>
				                </div>
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/mm_yif.jpg" alt=""></a>
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
				    <div class="kuas_daoh kuas_daoh_4">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_4">
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_4">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_4">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_4">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_4">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_4">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_4">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_4">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_4">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_4">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_4">
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
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
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
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
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



<!--广告图-->
<div class="guangg_tu">
	<a href="#"><img src="images/guang_tu.jpg"></a>
</div>


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