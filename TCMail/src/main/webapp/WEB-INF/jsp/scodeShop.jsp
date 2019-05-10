<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head>
<meta charset="utf-8">
<title>WangID通城——积分商城</title>
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
<!--导航-->
<div class="toub_beij">
	<div class="logo"><a href="./"><img src="./images/logo_1.png"></a><span class="jifen_shagnc_zi">积分商城</span></div>
	<div class="jif_shangc_daoh">
		<ul>
			<li><a href="jifen_shangc.html" class="df">首页</a></li>
			<li><a href="#">积分兑换</a></li>
			<li><a href="#">积分攻略</a></li>
			<li><a href="#">我的积分</a></li>
		</ul>
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
</div>          
<!--内容--> 

<div class="jif_shangc_neir_b">
	<div class="beij_center">
		<div class="di_xiaob">
			<div class="zuo_jif">
				<div class="dianq_jif">
					<div class="jifen_zhuz"><span>81</span></div>
					<div class="jifanniu"><a href="#">我的积分</a></div>
					<p class="jf_tis">购买特定商品可获得积分</p>
					<div class="henx_fk"><img src="images/web/df.png"></div>
				</div>
				<div class="jif_shangp_daoh">
					<h1>全部商品</h1>
					<ul>
						<li><a href="#">服饰内衣</a></li>
						<li><a href="#">数码家电 </a></li>
						<li><a href="#">零食冲饮 </a></li>
						<li><a href="#">母婴用品</a></li>
						<li><a href="#">洗护美妆</a></li>
						<li><a href="#">居家百货</a></li>
						<li><a href="#">鞋包配饰</a></li>
						<li><a href="#">生鲜滋补</a></li>
						<li><a href="#">居家百货</a></li>
						<li><a href="#">鞋包配饰</a></li>
						<li><a href="#">生鲜滋补</a></li> 
					</ul>
				</div>
			</div>
			<div class="you_banner_neir">
				<div class="jif_banner">
					<div id="slideBox_jif" class="slideBox_jif">
						<div class="hd">
							<ul><li>1</li><li>2</li><li>3</li></ul>
						</div>
						<div class="bd">
							<ul>
								<li><a href="#" target="_blank"><img src="images/web/jif_banner.png" /></a></li>
								<li><a href="#" target="_blank"><img src="images/web/jif_banner.png" /></a></li>
								<li><a href="#" target="_blank"><img src="images/web/jif_banner.png" /></a></li>
							</ul>
						</div> 
						<!-- 下面是前/后按钮代码，如果不需要删除即可 -->
						<a class="prev" href="javascript:void(0)"></a>
						<a class="next" href="javascript:void(0)"></a>

					</div>

					<script type="text/javascript">
					jQuery(".slideBox_jif").slide({mainCell:".bd ul",autoPlay:true});
					</script> 
				</div>
				<div class="jif_shangc_shangp_lieb">
					<div class="jif_sp_biaot"><h1>商品列表</h1></div>
					<div class="dp_lieb_kuan">
						<div class="shnagp_list_v1">
							<ul class="sdgvv_d">
								<li class="jif_haod">
									<div class="lieb_neir_kuang">
										<div class="lieb_img">
											<a href="#"><img src="images/lieb_tupi1.jpg"></a> 
										</div> 
										<div class="shangp_biaot_"><a href="#" class="jif_mz_hangg">荣耀8青春版 全网通 标配版 3GB+32GB 流光金</a></div>
										<div class="lieb_dianp_mingc">
											 <div class="jif_sp_jiag"><p class="jia_g_p1">¥29.90</p><p class="jia_g_p2">¥50.90</p></div>
											 <div class="jif_duih"><p>积分兑换</p><p>-￥30.00</p></div>
										</div>
									</div>
								</li>
								<li>
									<div class="lieb_neir_kuang">
										<div class="lieb_img">
											<a href="#"><img src="images/lieb_tupi1.jpg"></a> 
										</div> 
										<div class="shangp_biaot_"><a href="#" class="jif_mz_hangg">荣耀8青春版 全网通 标配版 3GB+32GB 流光金</a></div>
										<div class="lieb_dianp_mingc">
											 <div class="jif_sp_jiag"><p class="jia_g_p1">¥29.90</p><p class="jia_g_p2">¥50.90</p></div>
											 <div class="jif_duih"><p>积分兑换</p><p>-￥30.00</p></div>
										</div>
									</div>
								</li>
								<li>
									<div class="lieb_neir_kuang">
										<div class="lieb_img">
											<a href="#"><img src="images/lieb_tupi1.jpg"></a> 
										</div> 
										<div class="shangp_biaot_"><a href="#" class="jif_mz_hangg">荣耀8青春版 全网通 标配版 3GB+32GB 流光金</a></div>
										<div class="lieb_dianp_mingc">
											 <div class="jif_sp_jiag"><p class="jia_g_p1">¥29.90</p><p class="jia_g_p2">¥50.90</p></div>
											 <div class="jif_duih"><p>积分兑换</p><p>-￥30.00</p></div>
										</div>
									</div>
								</li>
								<li>
									<div class="lieb_neir_kuang">
										<div class="lieb_img">
											<a href="#"><img src="images/lieb_tupi1.jpg"></a> 
										</div> 
										<div class="shangp_biaot_"><a href="#" class="jif_mz_hangg">荣耀8青春版 全网通 标配版 3GB+32GB 流光金</a></div>
										<div class="lieb_dianp_mingc">
											 <div class="jif_sp_jiag"><p class="jia_g_p1">¥29.90</p><p class="jia_g_p2">¥50.90</p></div>
											 <div class="jif_duih"><p>积分兑换</p><p>-￥30.00</p></div>
										</div>
									</div>
								</li>
								<li>
									<div class="lieb_neir_kuang">
										<div class="lieb_img">
											<a href="#"><img src="images/lieb_tupi1.jpg"></a> 
										</div> 
										<div class="shangp_biaot_"><a href="#" class="jif_mz_hangg">荣耀8青春版 全网通 标配版 3GB+32GB 流光金</a></div>
										<div class="lieb_dianp_mingc">
											 <div class="jif_sp_jiag"><p class="jia_g_p1">¥29.90</p><p class="jia_g_p2">¥50.90</p></div>
											 <div class="jif_duih"><p>积分兑换</p><p>-￥30.00</p></div>
										</div>
									</div>
								</li>
								<li>
									<div class="lieb_neir_kuang">
										<div class="lieb_img">
											<a href="#"><img src="images/lieb_tupi1.jpg"></a> 
										</div> 
										<div class="shangp_biaot_"><a href="#" class="jif_mz_hangg">荣耀8青春版 全网通 标配版 3GB+32GB 流光金</a></div>
										<div class="lieb_dianp_mingc">
											 <div class="jif_sp_jiag"><p class="jia_g_p1">¥29.90</p><p class="jia_g_p2">¥50.90</p></div>
											 <div class="jif_duih"><p>积分兑换</p><p>-￥30.00</p></div>
										</div>
									</div>
								</li>
								<li>
									<div class="lieb_neir_kuang">
										<div class="lieb_img">
											<a href="#"><img src="images/lieb_tupi1.jpg"></a> 
										</div> 
										<div class="shangp_biaot_"><a href="#" class="jif_mz_hangg">荣耀8青春版 全网通 标配版 3GB+32GB 流光金</a></div>
										<div class="lieb_dianp_mingc">
											 <div class="jif_sp_jiag"><p class="jia_g_p1">¥29.90</p><p class="jia_g_p2">¥50.90</p></div>
											 <div class="jif_duih"><p>积分兑换</p><p>-￥30.00</p></div>
										</div>
									</div>
								</li>
								<li>
									<div class="lieb_neir_kuang">
										<div class="lieb_img">
											<a href="#"><img src="images/lieb_tupi1.jpg"></a> 
										</div> 
										<div class="shangp_biaot_"><a href="#" class="jif_mz_hangg">荣耀8青春版 全网通 标配版 3GB+32GB 流光金</a></div>
										<div class="lieb_dianp_mingc">
											 <div class="jif_sp_jiag"><p class="jia_g_p1">¥29.90</p><p class="jia_g_p2">¥50.90</p></div>
											 <div class="jif_duih"><p>积分兑换</p><p>-￥30.00</p></div>
										</div>
									</div>
								</li>
								<li>
									<div class="lieb_neir_kuang">
										<div class="lieb_img">
											<a href="#"><img src="images/lieb_tupi1.jpg"></a> 
										</div> 
										<div class="shangp_biaot_"><a href="#" class="jif_mz_hangg">荣耀8青春版 全网通 标配版 3GB+32GB 流光金</a></div>
										<div class="lieb_dianp_mingc">
											 <div class="jif_sp_jiag"><p class="jia_g_p1">¥29.90</p><p class="jia_g_p2">¥50.90</p></div>
											 <div class="jif_duih"><p>积分兑换</p><p>-￥30.00</p></div>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="page clearfix">
					<div class="p-wrap" id="J_bottomPage">
				        <span class="p-num">
							<a class="pn-prev disabled" href="undefined&amp;ms=5"><i>&lt;</i><em>上一页</em></a>
							<a href="#" class="curr_3">1</a>
				            <b class="pn-break hide"> …</b>
				            <a href="/#" class="hide ">-2</a>
				            <a href="/#" class="hide ">-1</a>
				            <a href="#" class="hide ">0</a>
				            <a href="#" class="hide curr_3">1</a>
				            <a href="#" class=" ">2</a>
				            <a href="#" class=" ">3</a>
				            <b class="pn-break "> …</b>
				            <a href="#" class="">166</a>
							<a class="pn-next" href="#">下一页<i>&gt;</i></a>
						</span>
				        <span class="p-skip">
				            <em>共<b>166</b>页&nbsp;&nbsp;到第</em>
				            <input class="input-txt" value="1">
				            <em>页</em>
				            <a class="btn btn-default" href="javascript:page_jump();">确定</a>
				        </span> 
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../public/AfterFoot.jsp"></jsp:include>
</body>
</html>
