<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
<meta charset="utf-8">
<title>WangID通城——购物车</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!-- <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  
<script type="text/javascript" src="../../js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="../../js/jquery-2.1.4.js"></script>

<script type="text/javascript"
	src="js/jquery.SuperSlide.2.1.1.source.js"></script>
<script type="text/javascript" src="js/select.js"></script>

</head>
<body>
	<!--头部-->

	<!--头部-->
	<div id="header">
		<div class="header-box">
			<h3 class="huany">WangID本地购物商城欢迎您的到来！</h3>
			<ul class="header-left">
				<li class="bj"><a class="dib" href="ger_zhongx.html">北京</a> <i
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
				<li class="denglu dengl_hou">
					<div>
						<a class="red" href="dengl.html">Hi~山的那边是海</a> <i
							class="icon_plus_nickname"></i> <i class="ci-leftll"> <s
							class="jt">◇</s>
						</i>
					</div>
					<div class="dengl_hou_xial_k">
						<div class="zuid_xiao_toux">
							<a href="shez_toux.html"><img src="images/toux.png"></a>
						</div>
						<div class="huiy_dengj">
							<a class="tuic_" href="index.html">退出</a>
						</div>
						<div class="toub_zil_daoh">
							<a href="wod_dingd.html">待处理订单</a> <a href="wod_shouc.html">我的收藏</a>
							<a href="ger_xinx.html">个人资料</a>
						</div>
					</div>
				</li>
				<li class="shu"></li>
				<li class="denglu"><a class="ing_ps" href="wod_shouc.html">我的收藏</a></li>
				<li class="shu"></li>
				<li class="denglu"><a class="ing_ps ps1"
					href="toapplybecomeshop">申请入驻</a></li>
				<li class="shu"></li>
				<li class="denglu"><a class="ing_ps ps2" target="_blank"
					href="http://wpa.qq.com/msgrd?v=3&uin=1371490392&site=qq&menu=yes">客户服务</a></li>
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
	<!---->
	<div class="yiny yiny_gouwc">
		<div class="beij_center">
			<div class="dengl_logo">
				<img src="images/logo_1.png">
				<h1>购物车</h1>
			</div>
		</div>
	</div>
	<div class="container">

		<div class="cart-login-tip fl" id="idnotlogin" act-not-login-info=""
			style="display: none;">
			您还没有登录！登录后购物车的商品将保存到您账号中。 <a class="cart-login-btn" href="dengl.html">
				立即登录 </a>
		</div>
	</div>

	<div class="beij_center">
		<div class="cart-main-header clearfix">
			<div class="cart-col-1">
				<input type="checkbox" id="up" onclick="checkAll()"
					class="jdcheckbox">
			</div>
			<div class="cart-col-2">全选</div>
			<!-- $page.site 主站 团购 抢购   style -->
			<div class="cart-col-3">商品信息</div>
			<div class="cart-col-4">
				<div class="cart-good-real-price">小计</div>
			</div>
			<div class="cart-col-5">数量</div>
			<div class="cart-col-6">
				<div class="cart-good-amount">单价</div>
			</div>
			<div class="cart-col-7">操作</div>
		</div>
	</div>
	<div class="container">
		<c:forEach items="${cglistcar }" var="g">
			<div class="cart-shop-header">
				<div class="cart-col-1">
					<!-- <input type="checkbox"  name="c1" class="jdcheckbox" > -->
				</div>
				<div class="cart-col-2">
					<span class="gouw_c_dianp">${g.shop.name }</span>
				</div>
			</div>
			<div class="cart-shop-goods dangq_honh">
				<div class="cart-shop-good">
					<div class="cart-col-1">
						<br /> <input type="checkbox" name="c1" value="${g.car.id }"
							class="jdcheckbox">
					</div>
					<div class="cart-col-2" style="height: 82px;">
						<a href="shangp_xiangq.html" target="_blank" class="g-img"><img
							src="${g.image }" alt=""></a>
					</div>
					<div class="fl houj_c">
						<div class="cart-dfsg">
							<div class="cart-good-name">
								<a href="goodsDetail" target="_blank">${g.type.name }
									${g.name } ${g.size } ${g.color }</a>
							</div>
						</div>
						<div class="cart-good-pro"></div>
						<div class="cart-col-4">
							<div class="cart-good-real-price ">
								<!--主品-->
								¥&nbsp;<em id="thisgoods${g.car.id }">${g.price }</em>
							</div>
							<div class="red"></div>
						</div>
						<div class="cart-col-5">
							<div class="gui-count cart-count"">
								<input id="min_${u.id}" name="" type="button" value="-" class="gui-count-btn gui-count-add"">
								<input id="text_box_${g.car.id}" name="num" onchange="can(this)" type="text" value="${g.car.num }"
									style="width: 48px; height: 20px; font-size: 12px; text-align: center; float: left" />
								<input id="add_${g.car.id}" name=""   type="button" value="+"
									 class="gui-count-btn gui-count-sub gui-count-disabled">
								<input type="hidden" name="goods_${g.id }"  value="${g.id }">
							</div>
						</div>
						<div class="cart-col-6 ">
							<div class="cart-good-amount">¥&nbsp;${g.price }</div>
							<!-- 重量展示(只展示全球百货的重量) -->
						</div>
					</div>
					<div class="cart-col-7">
						<div class="cart-good-fun delfixed">
							<a href="#" onclick="deleteFromCar('${g.car.id}')">删除</a>
						</div>
						<div class="cart-good-fun">
							<a href="#" onclick="addToFav(${g.id})">移入收藏夹</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<div class="jies_beij">
		<div class="beij_center over_dis">
			<div class="cart-col-1 cart_jies">
				<input type="checkbox" class="jdcheckbox">
			</div>
			<div class="qianm_shanc_yvf">
				<span onclick="checkAll()">全选</span> <a href="#"
					onclick="deleteFCar()">删除</a>
			</div>
			<div class="jies_ann_bei">
				<p>
					已选 <em id="goodsnum">0</em> 件商品 总计（不含运费）：<span id="payMoney">￥0.00</span>
				</p>
				<a href="addOrder" class="order_btn">去结算</a>
			</div>
		</div>
	</div>

	<div class="beij_center">
		<div class="investment_f">
			<div class="investment_title">
				<div class="ds_dg on_d">为您推荐</div>
				<div class="ds_dg">最近预览</div>
			</div>
			<div class="investment_con">
				<!---->
				<div class="picScroll_left_s" style="display: block;">
					<div class="hd">
						<a class="next next_you"></a>
						<ul></ul>
						<a class="prev prev_zuo"></a>
					</div>
					<div class="bd">
						<ul class="picList">
							<li>
								<div class="pic">
									<a href="shangp_xiangq.html" target="_blank"><img
										src="images/lieb_tupi3.jpg" /></a>
								</div>
								<div class="title">
									<a href="shangp_xiangq.html" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
									<div class="jiage_gouw">
										<span>¥2499.00</span>
									</div>
									<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
								</div>
							</li>
							<li>
								<div class="pic">
									<a href="shangp_xiangq.html" target="_blank"><img
										src="images/shangq_3.jpg" /></a>
								</div>
								<div class="title">
									<a href="shangp_xiangq.html" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
									<div class="jiage_gouw">
										<span>¥2499.00</span>
									</div>
									<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
								</div>
							</li>
							<li>
								<div class="pic">
									<a href="shangp_xiangq.html" target="_blank"><img
										src="images/big_3.jpg" /></a>
								</div>
								<div class="title">
									<a href="shangp_xiangq.html" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
									<div class="jiage_gouw">
										<span>¥2499.00</span>
									</div>
									<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
								</div>
							</li>
							<li>
								<div class="pic">
									<a href="shangp_xiangq.html" target="_blank"><img
										src="images/xiangqtu_1.jpg" /></a>
								</div>
								<div class="title">
									<a href="shangp_xiangq.html" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
									<div class="jiage_gouw">
										<span>¥2499.00</span>
									</div>
									<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
								</div>
							</li>
							<li>
								<div class="pic">
									<a href="shangp_xiangq.html" target="_blank"><img
										src="images/lieb_tupi3.jpg" /></a>
								</div>
								<div class="title">
									<a href="shangp_xiangq.html" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
									<div class="jiage_gouw">
										<span>¥2499.00</span>
									</div>
									<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
								</div>
							</li>
							<li>
								<div class="pic">
									<a href="shangp_xiangq.html" target="_blank"><img
										src="images/big_3.jpg" /></a>
								</div>
								<div class="title">
									<a href="shangp_xiangq.html" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
									<div class="jiage_gouw">
										<span>¥2499.00</span>
									</div>
									<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
								</div>
							</li>
							<li>
								<div class="pic">
									<a href="shangp_xiangq.html" target="_blank"><img
										src="images/lieb_tupi1.jpg" /></a>
								</div>
								<div class="title">
									<a href="shangp_xiangq.html" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
									<div class="jiage_gouw">
										<span>¥2499.00</span>
									</div>
									<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
								</div>
							</li>
							<li>
								<div class="pic">
									<a href="shangp_xiangq.html" target="_blank"><img
										src="images/lieb_tupi2.jpg" /></a>
								</div>
								<div class="title">
									<a href="shangp_xiangq.html" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
									<div class="jiage_gouw">
										<span>¥2499.00</span>
									</div>
									<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
								</div>
							</li>
							<li>
								<div class="pic">
									<a href="shangp_xiangq.html" target="_blank"><img
										src="images/lieb_tupi3.jpg" /></a>
								</div>
								<div class="title">
									<a href="shangp_xiangq.html" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
									<div class="jiage_gouw">
										<span>¥2499.00</span>
									</div>
									<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!---->
				<div class="picScroll_left_s" style="display: none;">
					<div class="picScroll_left_s_dsl">
						<div class="dfgc">
							<ul class="picList">
								<li>
									<div class="pic">
										<a href="shangp_xiangq.html" target="_blank"><img
											src="images/lieb_tupi3.jpg" /></a>
									</div>
									<div class="title">
										<a href="shangp_xiangq.html" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
										<div class="jiage_gouw">
											<span>¥2499.00</span>
										</div>
										<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
									</div>
								</li>
								<li>
									<div class="pic">
										<a href="shangp_xiangq.html" target="_blank"><img
											src="images/big_3.jpg" /></a>
									</div>
									<div class="title">
										<a href="shangp_xiangq.html" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
										<div class="jiage_gouw">
											<span>¥2499.00</span>
										</div>
										<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
									</div>
								</li>
								<li>
									<div class="pic">
										<a href="shangp_xiangq.html" target="_blank"><img
											src="images/lieb_tupi1.jpg" /></a>
									</div>
									<div class="title">
										<a href="shangp_xiangq.html" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
										<div class="jiage_gouw">
											<span>¥2499.00</span>
										</div>
										<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
									</div>
								</li>
								<li>
									<div class="pic">
										<a href="shangp_xiangq.html" target="_blank"><img
											src="images/big_3.jpg" /></a>
									</div>
									<div class="title">
										<a href="shangp_xiangq.html" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
										<div class="jiage_gouw">
											<span>¥2499.00</span>
										</div>
										<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
									</div>
								</li>
								<li>
									<div class="pic">
										<a href="shangp_xiangq.html" target="_blank"><img
											src="images/shangq_3.jpg"></a>
									</div>
									<div class="title">
										<a href="shangp_xiangq.html" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
										<div class="jiage_gouw">
											<span>¥2499.00</span>
										</div>
										<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
									</div>
								</li>
								<li>
									<div class="pic">
										<a href="shangp_xiangq.html" target="_blank"><img
											src="images/shangq_3.jpg"></a>
									</div>
									<div class="title">
										<a href="shangp_xiangq.html" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
										<div class="jiage_gouw">
											<span>¥2499.00</span>
										</div>
										<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
	
	
	$(document).ready(function(){
  		for(var i=0;i<$("input[id^='min_']").size();i++){//sub
  			$("input[id^='min_']").eq(i).attr('disabled',true);
  	  		$("input[id^='min_']").eq(i).click(function(){
  	  			$(this).next().val(parseInt($(this).next().val())-1);
  	  			
  	  			if($(this).next().val()==1){
	  				$(this).attr('disabled',true);
	  			}
  	  		});
	  		
	  	  	$("input[id^='add_']").eq(i).click(function(){
		  		$(this).prev().val(parseInt($(this).prev().val())+1);
		  		
		  		
		  		var id=$(this).next().val();
		  		$.ajax({
		  			url:"canAddNum?id="+id,
		  			data:"num="+num,
		  			type:"post",
		  			success: function(data){
		  				if("ok"==data){
		  					$(this).prev().prev().attr('disabled',true);
		  				}
		  			}
		  		})
		  		if($(this).prev().val()>1){
		  			$(this).prev().prev().attr('disabled',false);
		  		}
		  	});
	  	 }
  	})

$(function(){
		
    /*tab标签切换*/
    function tabs(tabTit,on,tabCon){
	$(tabCon).each(function(){
	  $(this).children().eq(0).show();
	 
	  });
	$(tabTit).each(function(){
	  $(this).children().eq(0).addClass(on);
	  });
     $(tabTit).children().click(function(){
        $(this).addClass(on).siblings().removeClass(on);
         var index = $(tabTit).children().index(this);
         $(tabCon).children().eq(index).show().siblings().hide();
    });
     }
  tabs(".investment_title","on_d",".investment_con");
  
})
var time=0;
function checkAll(){
	if(time==0){
		$("input[name^='c']").prop("checked",true);
		time++;
		return;
	}
	if(time==1){
		$("input[name^='c']").prop("checked",false);
		time--;
		return;
	}
	
}
function deleteFromCar(obj){
	
	$.ajax({
		url:"delfromCar",
		data:"id="+obj,
		type:"post",
		success: function(data){
			window.location.reload();
		}
	})
}
function addToFav(gid){
	$.ajax({
		url:"addToFav",
		type:"POST",
		data:"id="+gid,
		success:function(data){
			alert(data);
			window.location.reload();
		}
	})
}

var price;
function deleteFCar(){
	var str='';
	$.each($("input[name^='c']"),function(i,n){
		if(n.checked==true){
			deleteFromCar(n.value);
		}
	})
}









</script>
	<script type="text/javascript">
jQuery(".picScroll_left_s").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:5,trigger:"click"});
</script>

	<%@ include file="AfterFoot.jsp"%>