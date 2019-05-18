<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<!--侧边-->
<div class="jdm-toolbar-wrap J-wrap">                
	<div class="jdm-toolbar J-toolbar">                    
		<div class="jdm-toolbar-panels J-panel"></div>                                       
		<div class="jdm-toolbar-tabs J-tab">
			<div data-type="bar" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-ger">                                
				<i class="tab-ico"></i>
				<em class="tab-text">购物车</em>                                                  
			</div>                           
			<div data-type="bar" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-cart">                                
				<i class="tab-ico"></i>
				<em class="tab-text">购物车</em>                                                  
			</div>                           
			<div data-type="bar" clstag="h|keycount|cebianlan_h_follow|btn" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-follow" data-name="follow" data-login="true">                                
				<i class="tab-ico"></i>
				<em class="tab-text">我的关注</em>                                                  
			</div>                                             
		</div>                          
		<div class="J-trigger jdm-toolbar-tab jdm-tbar-tab-message" data-name="message"><a target="_blank" href="#">
			<i class="tab-ico"></i>                                
			<em class="tab-text">我的消息                                
			</em></a>                                                
		</div>            
	</div>                    
	<div class="jdm-toolbar-footer">                        
		<div data-type="link" id="#top" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-top">                                
			<a href="#" clstag="h|keycount|cebianlan_h|top">                                
				<i class="tab-ico"></i>
				<em class="tab-text">顶部</em>                                
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
			<li class="bj">
				<a class="dib" href="#">贵阳市</a>
				<i class="ci-leftll">
					<s class="jt">◇</s>
				</i>
				<div class="bj-1">
					<h3>热门城市：</h3>
					<a href="">北京</a><a href="">上海</a><a href="">天津</a><a href="">重庆</a><a href="">河北</a><a href="">山西</a><a href="">河南</a><a href="">辽宁</a><a href="">吉林</a><a href="">黑龙江</a><a href="">浙江</a><a href="">江苏</a><a href="">山东</a><a href="">安徽</a><a href="">内蒙古</a><a href="">湖北</a><a href="">湖南</a><a href="">广东</a><a href="">广西</a><a href="">江西</a><a href="">四川</a><a href="">海南</a><a href="">贵州</a><a href="">云南</a><a href="">西藏</a><a href="">陕西</a><a href="">甘肃</a><a href="">青海</a><a href="">宁夏</a><a href="">新疆</a><a href="">台湾</a><a href="">香港</a><a href="">澳门</a><a href="">海外</a><a href="qieh_cs.html">全部+</a>
				</div>
			</li>					
		</ul>
		<ul class="header-right">
			<li class="denglu">Hi~<a class="red" href="dengl.html">请登录!</a> <a href="zhuc.html">[免费注册]</a></li> 
			<li class="shu"></li>
			<li class="denglu"><a class="ing_ps" href="#">我的收藏</a></li>
			<li class="shu"></li>
			<li class="denglu"><a class="ing_ps ps1" href="#">申请入驻</a></li>
			<li class="shu"></li>
			<li class="denglu"><a class="ing_ps ps2" href="#">客户服务</a></li>
			<li class="shu"></li>
			<li class="shouji bj">
				<a class="ing_ps ps3" href="#">手机通城</a>
				<i class="ci-right ">
					<s class="jt">◇</s>
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
				</div>
			</li> 
		</ul>
	</div>
</div>
<!--搜索栏-->
<div class="toub_beij">
	<div class="logo"><a href="./"><img src="./images/logo.png"></a></div>
	<div class="search">
		<input type="text" value="家电一折抢" class="text" id="textt">
		<button class="button">搜索</button>
	</div>
	<div class="right">
		<i class="gw-left"></i>
		<i class="gw-right"></i>
		<div class="sc">
			<i class="gw-count">0</i>
			<i class="sd"></i>
		</div>
		<a href="gouw_che.html">我的购物车</a>
		<div class="dorpdown-layer">
			<ul>
				<li class="meiyou">
					<img src="./images/settleup-nogoods.png">
					<span>购物车中还没有商品，赶紧选购吧！</span> 
				</li>
			</ul>
		</div>
	</div>
	<div class="hotwords">
		<a class="biaoti">热门搜索：</a>
		<a href="#">新款连衣裙</a>
		<a href="#">四件套</a>
		<a href="#">潮流T恤</a>
		<a href="#">时尚女鞋</a>
		<a href="#">乐1</a>
		<a href="#">特步女鞋</a>
		<a href="#">威士忌</a>
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
				<li><a href="#">本地生活</a></li>
				<li><a href="#">团购专区</a></li>
				<li><a href="#">积分商城 </a></li>
				<li><a href="#">分销系统</a></li>
				<li><a href="#">办公耗材</a></li>
				<li><a href="#">饰品礼品</a></li>
				<li><a href="#">休闲娱乐</a></li>
			</ul>
		</div>


		<!--左边导航-->
		<div class="dd-inner">
			<div class="font-item">
				<div class="item fore1">
					<h3>
						<a class="da_zhu" href="#">办公家具</a>
						<p>
							<a href="#">五金</a>
							<a href="#">家具</a>
							<a href="#">家装</a>
							<a href="#">厨具</a>
						</p>
					</h3>
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
						<dl class="fore1">
							<dt><a href="">大家电<i>></i></a></dt>							
							<dd>
								<a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
								<a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
							</dd>
						</dl>
						<dl class="fore1">
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
						</dl>
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
			<div class="fore-2">
				<div class="item fore1">
					<h3>
						<a class="da_zhu" href="#">电脑数码</a>
						<p>
							<a href="#">手机</a>
							<a href="#">电脑</a>
							<a href="#">办公</a>
							<a href="#">钟表</a>
						</p>
					</h3>
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
						<dl class="fore1">
							<dt><a href="">电脑数码<i>></i></a></dt>							
							<dd>
								<a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
								<a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
							</dd>
						</dl>
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
				</div>
			</div>
			<div class="fore-3">
				<div class="item fore1">
					<h3>
						<a class="da_zhu" href="#">服饰鞋帽</a>
						<p>
							<a href="#">男装</a>
							<a href="#">女装</a>
							<a href="#">童装</a>
							<a href="#">内衣</a>
						</p>
					</h3>
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
						<dl class="fore1">
							<dt><a href="">服饰鞋帽<i>></i></a></dt>							
							<dd>
								<a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
								<a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
							</dd>
						</dl>
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
				</div>
			</div>
			<div class="fore-4">
				<div class="item fore1">
					<h3>
						<a class="da_zhu" href="#">汽车用品</a>
						<p>
							<a href="#">汽车配件</a>
							<a href="#">礼品</a>
							<a href="#">家政服务</a>
						</p>
					</h3>
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
						<dl class="fore1">
							<dt><a href="">汽车用品<i>></i></a></dt>							
							<dd>
								<a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
								<a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
							</dd>
						</dl>
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
				</div>
			</div>
			<div class="fore-5">
				<div class="item fore1">
					<h3>
						<a class="da_zhu" href="#">食品保健</a>
						<p>
							<a href="#">美食</a>
							<a href="#">酒类</a>
							<a href="#">生鲜</a>
							<a href="#">特产</a>
						</p>
					</h3>
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
						<dl class="fore1">
							<dt><a href="">食品保健<i>></i></a></dt>							
							<dd>
								<a href="">食品保健</a><a href="">食品保健</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
								<a href="">烟机/食品保健</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
							</dd>
						</dl>
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
				</div>
			</div>
			<div class="fore-6">
				<div class="item fore1">
					<h3>
						<a class="da_zhu" href="#">美酒鲜花</a>
						<p>
							<a href="#">手机</a>
							<a href="#">电脑</a>
							<a href="#">办公</a>
							<a href="#">钟表</a>
						</p>
					</h3>
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
						<dl class="fore1">
							<dt><a href="">美酒鲜花<i>></i></a></dt>							
							<dd>
								<a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
								<a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
							</dd>
						</dl>
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
				</div>
			</div>
			<div class="fore-7">
				<div class="item fore1">
					<h3>
						<a class="da_zhu" href="#">图书</a>
						<p>
							<a href="#">图书</a>
							<a href="#">图书</a>
							<a href="#">办公</a>
							<a href="#">电子书</a>
						</p>
					</h3>
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
						<dl class="fore1">
							<dt><a href="">图书<i>></i></a></dt>							
							<dd>
								<a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
								<a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
							</dd>
						</dl>
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
				</div>
			</div>
			
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
		<a href="javascript:void(0)" id="left"><</a>
		<a href="javascript:void(0)" id="right">></a>
	</div>
</div>

<!--内容一开始了-->

<!--快速通道栏-->



<!--层次-->


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

<!--底部-->
<jsp:include page="../public/BeforeFoot.jsp"></jsp:include>