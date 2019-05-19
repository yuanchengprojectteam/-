<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>WangID通城</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/index.js"></script>
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="js/jquery.SuperSlide.2.1.1.source.js"></script>
</head>
<body>
	<!--侧边-->
	<div class="jdm-toolbar-wrap J-wrap">
		<div class="jdm-toolbar J-toolbar">
			<div class="jdm-toolbar-panels J-panel"></div>
			<div class="jdm-toolbar-tabs J-tab">
				<div data-type="bar"
					class="J-trigger jdm-toolbar-tab jdm-tbar-tab-ger">
					<i class="tab-ico"></i> <em class="tab-text">购物车</em>
				</div>
				<div data-type="bar"
					class="J-trigger jdm-toolbar-tab jdm-tbar-tab-cart">
					<i class="tab-ico"></i> <em class="tab-text">购物车</em>
				</div>
				<div data-type="bar" clstag="h|keycount|cebianlan_h_follow|btn"
					class="J-trigger jdm-toolbar-tab jdm-tbar-tab-follow"
					data-name="follow" data-login="true">
					<i class="tab-ico"></i> <em class="tab-text">我的关注</em>
				</div>
			</div>
			<div class="J-trigger jdm-toolbar-tab jdm-tbar-tab-message"
				data-name="message">
				<a target="_blank" href="#"> <i class="tab-ico"></i> <em
					class="tab-text">我的消息 </em></a>
			</div>
		</div>
		<div class="jdm-toolbar-footer">
			<div data-type="link" id="#top"
				class="J-trigger jdm-toolbar-tab jdm-tbar-tab-top">
				<a href="#" clstag="h|keycount|cebianlan_h|top"> <i
					class="tab-ico"></i> <em class="tab-text">顶部</em>
				</a>
			</div>
		</div>
		<div class="jdm-toolbar-mini"></div>
		<div id="J-toolbar-load-hook" clstag="h|keycount|cebianlan_h|load"></div>
	</div>


	<!--头部-->
	<div id="header">
		<div class="header-box">
			<h3 class="huany">WangID本地购物商城欢迎您的到来！</h3>
			<ul class="header-left">
				<li class="bj"><a class="dib" href="#">贵阳市</a> <i
					class="ci-leftll"> <s class="jt">◇</s>
				</i>
					<div class="bj-1">
						<h3>热门城市：</h3>
						<a href="">北京</a><a href="">上海</a><a href="">天津</a><a href="">重庆</a><a
							href="">河北</a><a href="">山西</a><a href="">河南</a><a href="">辽宁</a><a
							href="">吉林</a><a href="">黑龙江</a><a href="">浙江</a><a href="">江苏</a><a
							href="">山东</a><a href="">安徽</a><a href="">内蒙古</a><a href="">湖北</a><a
							href="">湖南</a><a href="">广东</a><a href="">广西</a><a href="">江西</a><a
							href="">四川</a><a href="">海南</a><a href="">贵州</a><a href="">云南</a><a
							href="">西藏</a><a href="">陕西</a><a href="">甘肃</a><a href="">青海</a><a
							href="">宁夏</a><a href="">新疆</a><a href="">台湾</a><a href="">香港</a><a
							href="">澳门</a><a href="">海外</a><a href="qieh_cs.html">全部+</a>
					</div></li>
			</ul>
			<ul class="header-right">
				<li class="denglu">Hi~<a class="red" href="tologin">请登录!</a> <a
					href="toregister">[免费注册]</a></li>
				<li class="shu"></li>
				<li class="denglu"><a class="ing_ps" href="#">我的收藏</a></li>
				<li class="shu"></li>
				<li class="denglu"><a class="ing_ps ps1" href="#">申请入驻</a></li>
				<li class="shu"></li>
				<li class="denglu"><a class="ing_ps ps2" href="#">个人中心</a></li>
				<li class="shu"></li>
				<li class="shouji bj"><a class="ing_ps ps3" href="#">手机通城</a> <i
					class="ci-right "> <s class="jt">◇</s>
				</i>
					<div class="shouji1">
						<img src="images/mb_wangid.png" class="shouji4">
						<div class="shouji2">
							<p>通城客户端</p>
							<p class="red">首次下单满79元，送79元</p>
						</div>
						<div class="yi">
							<img src="images/mb_wangid.png" class="shouji4">
							<div class="er">
								<p>通城微信公众号</p>
								<p class="red">关注通城公众号的积分，换大礼</p>
							</div>
						</div>
					</div></li>
			</ul>
		</div>
	</div>
	<!--搜索栏-->
	<div class="toub_beij">
		<div class="logo">
			<a href="./"><img src="./images/logo.png"></a>
		</div>
		<div class="search">
			<input type="text" value="家电一折抢" class="text" id="textt">
			<button class="button">搜索</button>
		</div>
		<div class="right">
			<i class="gw-left"></i> <i class="gw-right"></i>
			<div class="sc">
				<i class="gw-count">${carGoods.size() }</i> <i class="sd"></i>
			</div>
			<a href="car">我的购物车</a>
			<div class="dorpdown-layer">
				
					<ul>
					<c:choose>
						<c:when test="${loginedUser != null }">	
						
							<c:forEach items="${carGoods }" var="cg" >
								<li class="meiyou"><img src="${cg.image }"
									width="80px" height="70px">
									<div
										style="display: inline-block; width: 150px; height: 70px; color: black;">
										<a href="#"
											style="word-wrap: break-word; word-break: break-all; font-size: 16px; overflow: hidden; margin-top: 2px;">${cg.name }${cg.size }</a>
									</div>
									<div
										style="display: inline-block; width: 30px; height: 70px; align-content: center;">
										<a href="#" style="font-size: 13px;">购买</a>
									</div> <!-- <span>购买</span> -->
								</li>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<li class="meiyou"><img src="./images/settleup-nogoods.png"
								width="80px" height="70px">
								<div
									style="display: inline-block; width: 150px; height: 70px; color: black;">
									<a href="#"
										style="word-wrap: break-word; word-break: break-all; font-size: 16px; overflow: hidden; margin-top: 2px;">登录后再来看看</a>
								</div>
								<div
									style="display: inline-block; width: 30px; height: 70px; align-content: center;">
									<a href="#" style="font-size: 13px;">购买</a>
								</div> <!-- <span>购买</span> -->
							</li>
						
						</c:otherwise>	
					</c:choose>		
					</ul>
			</div>
		</div>
		<div class="hotwords">
			<a class="biaoti">热门搜索：</a> <a href="#">新款连衣裙</a> <a href="#">四件套</a>
			<a href="#">潮流T恤</a> <a href="#">时尚女鞋</a> <a href="#">乐1</a> <a
				href="#">特步女鞋</a> <a href="#">威士忌</a>
		</div>
	</div>


	<!--轮播图上方导航栏  一栏-->
	<div id="navv">
			<div class="focus">
		<div class="focus-a">
			<div class="fouc-font"><a href="">全部商品分类</a> </div>
		</div>
		<div class="focus-b">
			<ul>
				<li><a href="#">商城首页</a></li>
				<c:forEach items="${typeOne }" var="to">
					<li><a href="#">${to.name }</a></li>
				</c:forEach>
				
			</ul>
		</div>


		<!--左边导航-->
		<div class="dd-inner">
		
		<c:forEach items="${typeOne }" var="to">
			<div class="font-item">
				<div class="item fore1">
					<h3>
						<a class="da_zhu" href="#">${to.name }</a>
						<p>
							<c:forEach items="${to.childType }"  var="ct">
								<a href="#">${ct.name }</a>
							</c:forEach>		
						</p>
					</h3>
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
						
					
						
						<c:forEach items="${typeTwo }" var="tt">
							<dl class="fore1">
								<c:if test="${to.id == tt.pid  }">
										<dt><a href="#">${tt.name }<i>></i></a></dt>	
										
										<dd>
											<c:forEach items="${tt.childType }" var="ttc">		
												<a href="#">${ttc.name }</a>
											</c:forEach>	
										</dd>
										
								</c:if>
							</dl>
						</c:forEach>
						
					</div>
					 <div class="font-right">
						<div>
							<a href="#">
								<img src="./images/562f4971Na5379aba.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9eef9N5bb8d27f.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef02N99d26435.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef10Nd206a236.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef28N00328d44.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef34N7cc61f4c.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef3eN99aef1f0.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef4cN4fe57f9b.jpg">
							</a>
						</div>
					</div>
					<div class="font-righty">
						<a href="#">
							<img src="./images/5673a854N10856704.jpg">
						</a>
						<a href="#">
							<img src="./images/56a0376aN7de1bdcf.jpg">
						</a>
					</div> 
				</div>
			</div>
	</c:forEach>		
			
			

			
			
			
			<!---->
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
			<a href="javascript:void(0)" id="left"><</a> <a
				href="javascript:void(0)" id="right">></a>
		</div>
	</div>

	<!--内容一开始了-->


	<!--快速通道栏-->



	<!--层次-->
	<div class="chengc_jvz">
	
	
	<c:forEach items="${typeOne }" var="ot">
	
		<div class="slideTxtBox">

			<div class="hd">
				<h1>
					<p>${ot.name }</p>
					<p class="yingw_">Office furniture</p>
				</h1>

				<ul>
					<c:forEach items="${typeTwo }" var="tt">
						<c:if test="${ot.id == tt.pid }">
							<li>${tt.name }</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<div class="bd">
			
			<c:forEach items="${typeTwo }" var="tt">
			
			<c:if test="${tt.pid == ot.id }">
				<ul>
					<div class="louc_tup_qieh">
						<div class="js-silder ws-slider">
							<div class="silder-scroll">
								<div class="silder-main">


									<!-- 轮播图 -->
									<div class="silder-main-img">
										<a href="#"><img src="images/liuceng_1.jpg" alt=""></a>
									</div>


								</div>
							</div>
							<div class="js-silder-ctrl">
								<span class="silder-ctrl-prev"></span> <span
									class="silder-ctrl-next"></span>
							</div>
						</div>

						<!--  -->
						<div class="kuas_daoh">
								<c:if test="${tt.pid == ot.id }">
									<a href="#">${tt.name }</a>
								</c:if>
						</div>
					</div>
					<div class="you_lirb">
						<div class="shang_buf">
							<c:forEach items="${typeThree }" var="th">
								<c:if test="${th.sunid == tt.id}">
									<c:forEach items="${th.goodsList }" var="gl">
									
										<div class="you_shangp_lieb ">
											<a href="#"><img class="you_tup_k" src="${gl.image }" width=80px height=80px></a>
											<a href="#" class="_you_neir_biaot">${gl.name } ${gl.color } ${gl.size } </a>
											<span>¥ ${gl.price }</span>
										</div>
									</c:forEach>
								</c:if>
							</c:forEach>
						</div>
						<!-- <div class="xia_buf">
						
					</div> -->
					</div>
				</ul>


</c:if>
</c:forEach>







			</div>
		</div>
		
</c:forEach>		
		
		
	</div>







	<script type="text/javascript">
		jQuery(".slideTxtBox").slide();
	</script>
	<script type="text/javascript">
		jQuery(".slideTxtBox2").slide();
	</script>
	<script type="text/javascript">
		jQuery(".slideTxtBox3").slide();
	</script>
	<script type="text/javascript">
		jQuery(".slideTxtBox4").slide();
	</script>



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
						<h1>
							<img class="tes_dat_dongh" src="${first.image }">
						</h1>
						<h2>${first.name }${first.size }${first.color }</h2> <span>¥ ${first.price }</span>
					</a>
				</div>
				<div class="tes_xiaot_beij">
					<div class="tes_xiaot_shang">
						<c:forEach items="${specialGoodsUp }" var="up">
								<div class="tes_xiaot_neir">
									<a href="#">
										<h1>
											<img class="tes_xiaot_dongh" src="${up.image }"   >
										</h1>
										<h2>${up.name } ${up.size } ${up.color }</h2> <span>¥ ${up.price }</span>
									</a>
								</div>
						</c:forEach>
					</div>
					<div class="tes_xiaot_shang tes_xiaot_xia">
						<c:forEach items="${specialGoodsDown }" var="sd">
							<div class="tes_xiaot_neir">
								<a href="#">
									<h1>
										<img class="tes_xiaot_dongh" src="${sd.image }">
									</h1>
									<h2>${sd.name }${sd.size }${sd.color }</h2> <span>¥ ${sd.price }</span>
								</a>
							</div>
						</c:forEach>
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
							<c:forEach items="${hotGoods }" var="hg">
									<li>
										<div class="pic">
											<a href="#" target="_blank"><img
												src="${hg.image }" /></a>
										</div>
										<div class="title">
											<a href="#" target="_blank">${hg.name }</a><span>¥
												${hg.price }</span>
										</div>
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
		jQuery(".picScroll_left").slide({
			titCell : ".hd ul",
			mainCell : ".bd ul",
			autoPage : true,
			effect : "left",
			autoPlay : true,
			vis : 2,
			trigger : "click"
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
						<p>客服电话</p>
						<span>400-6677-937</span>
					</div>
					<div class="kef_dianh kef_dianh_youx">
						<p>意见收集邮箱</p>
						<p>Ask@wangid.com</p>
					</div>
				</div>
				<div class="lieb_daoh lieb_daoh_you">
					<div class="erw_ma_beij">
						<div class="erw_m">
							<h1>
								<img src="images/mb_wangid.png">
							</h1>
							<span>扫码下载通城客户端</span>
						</div>
						<div class="erw_m">
							<h1>
								<img src="images/mb_wangid.png">
							</h1>
							<span>扫码下载通城客户端</span>
						</div>
					</div>
				</div>
			</div>
			<div class="beia_hao">
				<p>京ICP备：14012449号 黔ICP证：B2-20140009号</p>
				<p class="gonga_bei">京公网安备：11010602030054号</p>
				<div class="renz_">
					<span></span> <span class="span1"></span> <span class="span2"></span>
					<span class="span3"></span>
				</div>
			</div>
		</div>
	</div>
</body>
</html>