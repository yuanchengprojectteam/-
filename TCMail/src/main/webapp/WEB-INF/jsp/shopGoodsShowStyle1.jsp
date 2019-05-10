<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head>
<meta charset="utf-8">
<title>WangID通城——商家店铺</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
 <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script>
 
</head> 
<body>
<jsp:include page="../public/rowHeader.jsp"></jsp:include>
<!--店铺-->
<div class="dianp_logo_beij">
	<div class="dianp_logo_img">
		<img src="images/dianp_logo_beij.jpg">
	</div>
	<div class="beij_center dianp_xianq_fud_beij">
		<div class="dianp_mingx">
			<div class="dianp_minc">
				<p>智汇礼品官方旗舰店</p>
				<div class="services-stars f_f1"> 
                    <span class="star"><i style="width:81.2819333333%">星星</i></span>
                    <span class="score">4.0</span>分
                </div>
                <div class="dianp_sc">
                	<a href="#" class="btn-collect"><i class="sprite-enter"></i>收藏店铺</a>
                </div>
                <div class="dianp_sc">
                	<a href="#" class="btn-collect"><i class="sprite_3"></i>联系商家</a>
                </div>
                <div class="jingr_guanw_anniu">
                	<a href="#">进入官网</a>
                </div>
			</div>
			<div class="dianp_diz">
				<div class="zuo_diz"><p>地址：贵州省贵阳市云岩区大亨大厦16层</p></div>
				<div class="zuo_diz_2">
					<span>电话：0852-8667011</span>
					<span>联系人：潘中全</span>
					<span>营业时间：09:00至18:00</span>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="dianp_daoh_beij">
	<div class="beij_center">
		<div class="dp_daoh_ul">
			<ul>
				<li class="dp_dh_li"><a href="shagnj_dianp.html" class="lin_color">首页</a></li>
				<li class="dp_dh_li">
					<a href="shagnj_lieb.html" class="lin_color">全部商品<i class="ci-leftll"><s class="jt">◇</s></i></a>
					<div class="quanb_shangp_lieb">
						<dl>
							<dt><a href="#">工艺礼品专区</a></dt>
							<dd>
								<ul> 
									<li><a href="#">扇子</a></li>
									<li><a href="#">刀剑</a></li>
									<li><a href="#">香炉</a></li>
									<li><a href="#">摆件</a></li>
								</ul>
							</dd>
						</dl>
						<dl>
							<dt><a href="#">美妆礼品</a></dt>
							<dd>
								<ul>
									<li><a href="#">化妆镜</a></li>
									<li><a href="#">指甲刀</a></li>
									<li><a href="#">修脚刀</a></li>
									<li><a href="#">梳子</a></li>
									<li><a href="#">首饰盒</a></li>
									<li><a href="#">掏耳朵工具</a></li>
									<li><a href="#">美妆工具</a></li>
								</ul>
							</dd>
						</dl>
						<dl>
							<dt><a href="#">礼品文具专区</a></dt>
							<dd>
								<ul>
									<li><a href="#">日记本/笔记本</a></li>
									<li><a href="#">同学录</a></li>
									<li><a href="#">文房四宝</a></li>
									<li><a href="#">笔类</a></li>
								</ul>
							</dd>
						</dl>
						<dl>
							<dt><a href="#">礼盒专区</a></dt>
							<dd>
								<ul>
									<li><a href="#">礼品盒</a></li> 
								</ul>
							</dd>
						</dl>
						<dl>
							<dt><a href="#">婚庆节庆</a></dt>
							<dd>
								<ul>
									<li><a href="#">婚房布置</a></li>
									<li><a href="#">婚庆摆件</a></li>
									<li><a href="#">喜糖盒</a></li>
									<li><a href="#">手捧花</a></li>
								</ul>
							</dd>
						</dl> 
						<dl>
							<dt><a href="#">情侣礼物专区</a></dt>
							<dd>
								<ul>
									<li><a href="#">送女友/送老婆</a></li>
									<li><a href="#">送男友/老公</a></li>
									<li><a href="#">情侣专区</a></li> 
								</ul>
							</dd>
						</dl>
						<dl>
							<dt><a href="#">教师节礼物</a></dt>
							<dd>
								<ul> 
								<li></li>
								</ul>
							</dd>
						</dl>
					</div>
				</li>
				<li class="dp_dh_li"><a href="#" class="lin_color">分销商品</a></li>
				<li class="dp_dh_li"><a href="#" class="lin_color">化妆镜</a></li>
				<li class="dp_dh_li"><a href="#" class="lin_color">摆件</a></li>
				<li class="dp_dh_li"><a href="#" class="lin_color">连衣裙</a></li>
				<li class="dp_dh_li"><a href="shagnj_dianp_jies.html" class="lin_color">店铺简介</a></li>
			</ul>
		</div>
	</div>
</div>

<!--lieb-->
<div class="beij_center">
	<div class="lib_ds">
		<div class="zuob_dh_ds">
			<div class="quanb_flei_d">全部分类</div>
			<div id="firstpane" class="menu_list"> 
				<h3 class="menu_head current_df">哲学</h3>
				<div style="display:block" class="menu_body">
					<a href="#">科学技术哲学</a>
					<a href="#">宗教学</a>
					<a href="#">美学</a>
					<a href="#">伦理学</a>
					<a href="#">逻辑学</a>
					<a href="#">外国哲学</a>
					<a href="#">中国哲学</a>
					<a href="#">马克思主义哲学</a>
				</div>
				
				<h3 class="menu_head">经济学</h3>
				<div style="display:none" class="menu_body">
					<a href="#">应用经济学</a>
					<a href="#">理论经济学</a>
					<a href="#">国民经济学</a>
					<a href="#">区域经济学</a>
					<a href="#">产业经济学</a>
					<a href="#">国际贸易学</a>
					<a href="#">劳动经济学</a>
					<a href="#">政治经济学</a>
				</div>
				<h3 class="menu_head">根深蒂固</h3>
				<div style="display:none" class="menu_body">
					<a href="#">应用经济学</a>
					<a href="#">理论经济学</a>
					<a href="#">国民经济学</a> 
					<a href="#">政治经济学</a>
				</div> 
				<h3 class="menu_head">上衣</h3>
				<div style="display:none" class="menu_body">
					<a href="#">应用经济学</a> 
					<a href="#">劳动经济学</a>
					<a href="#">政治经济学</a>
				</div> 
				<h3 class="menu_head">潮流</h3>
				<div style="display:none" class="menu_body">
					<a href="#">应用经济学</a>
					<a href="#">理论经济学</a>
					<a href="#">国民经济学</a>
					<a href="#">区域经济学</a> 
					<a href="#">劳动经济学</a>
					<a href="#">政治经济学</a>
				</div> 
			</div> 
		</div>
		<div class="sdu_you">
			<div class="xians_fangs">
				<div class="dsfd_d">
					<span>显示：</span>
					<span><a href="shagnj_lieb.html" class="losd_14 da_15 df_15"></a></span>
					<span><a href="shagnj_lieb1.html" class="losd_14 ds_15"></a></span> 
				</div>
				<div class="dsfd_d">
					<span>排序：</span>
					<span class="dgf_zy"><a href="#" class="lod_ds">人气</a><em class="df"></em></span>
					<span class="dgf_zy"><a href="#" class="lod_ds">销量</a><em></em></span>
					<span class="dgf_zy"><a href="#" class="lod_ds">新品</a><em></em></span>
					<span class="dgf_zy"><a href="#" class="lod_ds">价格</a><em></em></span>
					<span class="dgf_zy"><a href="#" class="lod_ds">收藏</a><em></em></span>
				</div>
				<div class="dp_lirb_fany">
					<span>1/4</span>
					<a href="#">上一页</a>
					<a href="#">上一页</a>
				</div>
			</div>
			<div class="dp_lieb_kuan">
				<div class="shnagp_list_v1">
					<ul class="sdgvv_d">
						<li>
							<div class="lieb_neir_kuang">
								<div class="lieb_img">
									<a href="#"><img src="images/lieb_tupi1.jpg"></a>
									<div class="p_focus"><a class="J_focus" href="#"><i></i>关注</a></div>
								</div>
								<div class="lieb_text">
									<div class="p_price">
						              	<strong class="J_price"><em>¥</em><i>1099.00</i><em class="shangp_yuanj zuo_ji">¥</em><i class="shangp_yuanj">1099.00</i></strong> 
						            </div>
								</div>
								<div class="shangp_biaot_"><a href="#">荣耀8青春版 全网通 标配版 3GB+32GB 流光金</a></div>
								<div class="lieb_dianp_mingc">
									<div class="zuo_mingc">
										<p><a class="lianpu_minc" href="#">古竣服装专营店</a><a class="mis" href="#">点我交谈</a></p>
										<div class="p_icons">
											<i class="icon_grou_1" data-tips="本地商品"><img src="images/bend.png"></i>
											<i class="icon_grou_2" data-tips="商品特价出售">特价</i>
										</div>
									</div>
									<div class="you_pingj">
										<p>已有评价</p>
										<span><a href="#"><em>100+</em></a> 人</span>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="lieb_neir_kuang">
								<div class="lieb_img">
									<a href="#"><img src="images/lieb_tupi1.jpg"></a>
									<div class="p_focus"><a class="J_focus" href="#"><i></i>关注</a></div>
								</div>
								<div class="lieb_text">
									<div class="p_price">
						              	<strong class="J_price"><em>¥</em><i>1099.00</i><em class="shangp_yuanj zuo_ji">¥</em><i class="shangp_yuanj">1099.00</i></strong> 
						            </div>
								</div>
								<div class="shangp_biaot_"><a href="#">荣耀8青春版 全网通 标配版 3GB+32GB 流光金</a></div>
								<div class="lieb_dianp_mingc">
									<div class="zuo_mingc">
										<p><a class="lianpu_minc" href="#">古竣服装专营店</a><a class="mis" href="#">点我交谈</a></p>
										<div class="p_icons">
											<i class="icon_grou_1" data-tips="本地商品"><img src="images/bend.png"></i>
											<i class="icon_grou_2" data-tips="商品特价出售">特价</i>
										</div>
									</div>
									<div class="you_pingj">
										<p>已有评价</p>
										<span><a href="#"><em>100+</em></a> 人</span>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="lieb_neir_kuang">
								<div class="lieb_img">
									<a href="#"><img src="images/lieb_tupi1.jpg"></a>
									<div class="p_focus"><a class="J_focus" href="#"><i></i>关注</a></div>
								</div>
								<div class="lieb_text">
									<div class="p_price">
						              	<strong class="J_price"><em>¥</em><i>1099.00</i><em class="shangp_yuanj zuo_ji">¥</em><i class="shangp_yuanj">1099.00</i></strong> 
						            </div>
								</div>
								<div class="shangp_biaot_"><a href="#">荣耀8青春版 全网通 标配版 3GB+32GB 流光金</a></div>
								<div class="lieb_dianp_mingc">
									<div class="zuo_mingc">
										<p><a class="lianpu_minc" href="#">古竣服装专营店</a><a class="mis" href="#">点我交谈</a></p>
										<div class="p_icons">
											<i class="icon_grou_1" data-tips="本地商品"><img src="images/bend.png"></i>
											<i class="icon_grou_2" data-tips="商品特价出售">特价</i>
										</div>
									</div>
									<div class="you_pingj">
										<p>已有评价</p>
										<span><a href="#"><em>100+</em></a> 人</span>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="lieb_neir_kuang">
								<div class="lieb_img">
									<a href="#"><img src="images/lieb_tupi1.jpg"></a>
									<div class="p_focus"><a class="J_focus" href="#"><i></i>关注</a></div>
								</div>
								<div class="lieb_text">
									<div class="p_price">
						              	<strong class="J_price"><em>¥</em><i>1099.00</i><em class="shangp_yuanj zuo_ji">¥</em><i class="shangp_yuanj">1099.00</i></strong> 
						            </div>
								</div>
								<div class="shangp_biaot_"><a href="#">荣耀8青春版 全网通 标配版 3GB+32GB 流光金</a></div>
								<div class="lieb_dianp_mingc">
									<div class="zuo_mingc">
										<p><a class="lianpu_minc" href="#">古竣服装专营店</a><a class="mis" href="#">点我交谈</a></p>
										<div class="p_icons">
											<i class="icon_grou_1" data-tips="本地商品"><img src="images/bend.png"></i>
											<i class="icon_grou_2" data-tips="商品特价出售">特价</i>
										</div>
									</div>
									<div class="you_pingj">
										<p>已有评价</p>
										<span><a href="#"><em>100+</em></a> 人</span>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="lieb_neir_kuang">
								<div class="lieb_img">
									<a href="#"><img src="images/lieb_tupi2.jpg"></a>
									<div class="p_focus"><a class="J_focus" href="#"><i></i>关注</a></div>
								</div>
								<div class="lieb_text">
									<div class="p_price">
						              	<strong class="J_price"><em>¥</em><i>1099.00</i><em class="shangp_yuanj zuo_ji">¥</em><i class="shangp_yuanj">1099.00</i></strong> 
						            </div>
								</div>
								<div class="shangp_biaot_"><a href="#">荣耀8青春版 全网通 标配版 3GB+32GB 流光金</a></div>
								<div class="lieb_dianp_mingc">
									<div class="zuo_mingc">
										<p><a class="lianpu_minc" href="#">古竣服装专营店</a><a class="mis" href="#">点我交谈</a></p>
										<div class="p_icons">
											<i class="icon_grou_1" data-tips="本地商品"><img src="images/bend.png"></i>
											<i class="icon_grou_2" data-tips="商品特价出售">特价</i>
										</div>
									</div>
									<div class="you_pingj">
										<p>已有评价</p>
										<span><a href="#"><em>100+</em></a> 人</span>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="lieb_neir_kuang">
								<div class="lieb_img">
									<a href="#"><img src="images/lieb_tupi3.jpg"></a>
									<div class="p_focus"><a class="J_focus" href="#"><i></i>关注</a></div>
								</div>
								<div class="lieb_text">
									<div class="p_price">
						              	<strong class="J_price"><em>¥</em><i>1099.00</i><em class="shangp_yuanj zuo_ji">¥</em><i class="shangp_yuanj">1099.00</i></strong> 
						            </div>
								</div>
								<div class="shangp_biaot_"><a href="#">荣耀8青春版 全网通 标配版 3GB+32GB 流光金</a></div>
								<div class="lieb_dianp_mingc">
									<div class="zuo_mingc">
										<p><a class="lianpu_minc" href="#">古竣服装专营店</a><a class="mis" href="#">点我交谈</a></p>
										<div class="p_icons">
											<i class="icon_grou_1" data-tips="本地商品"><img src="images/bend.png"></i>
											<i class="icon_grou_2" data-tips="商品特价出售">特价</i>
										</div>
									</div>
									<div class="you_pingj">
										<p>已有评价</p>
										<span><a href="#"><em>100+</em></a> 人</span>
									</div>
								</div>
							</div>
						</li>
					</ul>
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

<script type="text/javascript">
$(document).ready(function(){

	$("#firstpane .menu_body:eq(0)").show();
	$("#firstpane h3.menu_head").click(function(){
		$(this).addClass("current_df").next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
		$(this).siblings().removeClass("current_df");
	});
	
	$("#secondpane .menu_body:eq(0)").show();
	$("#secondpane h3.menu_head").mouseover(function(){
		$(this).addClass("current_df").next("div.menu_body").slideDown(500).siblings("div.menu_body").slideUp("slow");
		$(this).siblings().removeClass("current_df");
	});
	
});
</script>
 
<jsp:include page="../public/BeforeFoot.jsp"></jsp:include>