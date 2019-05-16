<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<div class="dianp_logo_beij">
	<div class="dianp_logo_img">
		<img src="images/dianp_logo_beij.jpg">
	</div>
	<div class="beij_center dianp_xianq_fud_beij">
		<div class="dianp_mingx">
			<div class="dianp_minc">
				<p>${shop.name}</p>
				<div class="services-stars f_f1"> 
                    <span class="star"><i style="width:81.2819333333%" id="start">星星</i></span>
                    <span class="score">${shop.level }</span>分
                </div>
                <div class="dianp_sc" >
                	<a href="#" class="btn-collect" onclick="recivershop()" id="r"><i class="sprite-enter"></i></a>
                </div>
                <div class="dianp_sc">
                	<a href="http://wpa.qq.com/msgrd?v=3&uin=1371490392&site=qq&menu=yes " class="btn-collect"><i class="sprite_3"></i>联系商家</a>
                </div>
                <div class="jingr_guanw_anniu">
                	<a href="index">进入官网</a>
                </div>
			</div>
			<div class="dianp_diz">
				<div class="zuo_diz"><p>地址：${shop.addr }</p></div>
				<div class="zuo_diz_2">
					<span>电话：${ShopOwner.phone }</span>
					<span>联系人：${ShopOwner.realname}</span>
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
				<li class="dp_dh_li"><a href="shopIndex?id=${shop.id }" class="lin_color">首页</a></li>
				<li class="dp_dh_li">
					<a href="toshopGoodsShowStyle1?id=${shop.id }&oreason=commnum" class="lin_color">全部商品<i class="ci-leftll"><s class="jt">◇</s></i></a>
					<div class="quanb_shangp_lieb">
					<c:forEach items="${GTypes }" var="t">
					<c:choose>
						<c:when test="${t.pid==null }">
						<dl>
							<dt><a href="#">${t.name}</a></dt>
							<dd>
								<ul>
							<c:forEach items="${GTypes }" var="tt">
									<c:choose>
										<c:when test="${tt.pid==t.id }">
											<li><a href="#">${tt.name }</a></li>
										</c:when>
									</c:choose>
							</c:forEach>
							</ul>
							</dd>
							</dl>
						</c:when>
						<c:otherwise>
							<c:forEach items="${GTypes }" var="tt">
								<c:forEach items="${alltype }" var="a">
									<c:choose>
										<c:when test="${tt.pid==a.id }">
											<dl>
											<dt><a href="#">${a.name}</a></dt>
											<dd>
												<ul>
													<li><a href="#">${tt.name }</a></li>
													</ul>
												</dd>
											</dl>
										</c:when>
									</c:choose>
								</c:forEach>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</c:forEach>
					</div>
				</li>
				<li class="dp_dh_li"><a href="shopintro?id=${shop.id }" class="lin_color">店铺介绍</a></li>
			</ul>
		</div>
	</div>
</div>

<!--banner-->
<div class="dianp_banner_brij">
	<div class="slideBox_dianp">
		<div class="hd">
			<ul>
				<c:forEach items="${shopImage }" var="i">
						<li>${i.id}</li>
					</c:forEach>
			</ul>
		</div>
		<div class="bd">
			<ul>
				<c:forEach items="${shopImage }" var="i">
					<li><a href="#" target="_blank"><img src="${i.path }" /></a></li>
				</c:forEach>
			</ul>
		</div>  
		<a class="prev" href="javascript:void(0)"></a>
		<a class="next" href="javascript:void(0)"></a> 
	</div>
</div>
<script type="text/javascript">
jQuery(".slideBox_dianp").slide({mainCell:".bd ul",autoPlay:true});
</script>

<div class="beij_center">
	<div class="dp_sy_biaot">
		<div class="dis_jvz">
			<div class="zuoy_xian"></div>
			<div class="biaot_minz">
				<h1>精品推荐</h1>
				<h3>Boutique zone</h3>
			</div>
			<div class="zuoy_xian"></div>
		</div>
	</div>
	<div class="jinp_tuij_lb">
		<ul>
			<c:forEach items="${newgoods }" var="ng">
				<li>
				<a href="lootbuy?gid=${ng.id }" class="jngp_img"><img src="${ng.image }"></a>
				<a href="lootbuy?gid=${ng.id }" class="jinp_biaot">${ng.name }</a>
				<span>￥${ng.price}</span>
			</li>
			</c:forEach>
		</ul>
	</div>
</div>
<div class="beij_center">
	<div class="dp_sy_biaot">
		<div class="dis_jvz">
			<div class="zuoy_xian"></div>
			<div class="biaot_minz">
				<h1>热销专区</h1>
				<h3>Hot zone</h3>
			</div>
			<div class="zuoy_xian"></div>
		</div>
	</div>
</div>
<div class="rexzqxt_beij">
	<div class="beij_center">
		<div class="picScroll_left_dianp">
			<div class="hd"> 
				<ul></ul> 
			</div>
			<div class="bd jinp_tuij_lb">
				<ul class="picList">
					<c:forEach items="${hotgoods }" var="hg">
						<li>
							<a href="lootbuy?gid=${hg.id }" class="jngp_img"><img src="${hg.image }"></a>
							<a href="lootbuy?gid=${hg.id }" class="jinp_biaot">${hg.name }</a>
							<span>￥${hg.price}</span>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<script type="text/javascript">
		jQuery(".picScroll_left_dianp").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:3,scroll:1,trigger:"click"});
		</script> 
	</div>
</div>

<div class="beij_center">
	 <div class="dp_sy_biaot">
		<div class="dis_jvz">
			<div class="zuoy_xian"></div>
			<div class="biaot_minz">
				<h1>特卖专区</h1>
				<h3>Sale zone</h3>
			</div>
			<div class="zuoy_xian"></div>
		</div>
	</div>

	<div class="dp_temai_zq">
		<c:forEach items="${discountgoods }" var="dg" begin="0" end="0">
					<div class="temai_qian_img">
						<a href="lootbuy?gid=${dg.id }"><img src="${dg.image }" style="width: 391px;height: 499px;"></a>
						<div class="bianq_yv_q">
							<a href="lootbuy?gid=${dg.id }">${dg.name }</a>
							<span>￥${dg.price }</span>
						</div>
					</div>
		</c:forEach>
		<div class="tmai_you_lieb">
			<c:forEach items="${discountgoods }" var="dg" begin="1">
					<div class="temai_qian_img">
						<a href="lootbuy?gid=${dg.id }"><img src="${dg.image }" style="width: 388px;"></a>
						<div class="bianq_yv_q">
							<a href="lootbuy?gid=${dg.id }">${dg.name }</a>
							<span>￥${dg.price }</span>
						</div>
					</div>
			</c:forEach>
		</div>
</div>
<script type="text/javascript">
$(document).ready(function(){
if('${sessionScope.loginedUser}'){
	$.ajax({
		url:"haveReciver",
		data:"sid="+${shop.id}+"&uid="+'${sessionScope.loginedUser.id}',
		type:"post",
		success:function(result){
			if(result=='yes'){
   				document.getElementById('r').innerHTML='已收藏';
   			 }else{
   				document.getElementById('r').innerHTML='加入收藏';
   			 }
		}
	});
}else{
	document.getElementById('r').innerHTML='加入收藏';
}
});
var  i=parseInt('${shop.level}');
document.getElementById('start').setAttribute('style','width:'+(i*20)+'%');
function recivershop(){
	if('${sessionScope.loginedUser}'){
		$.ajax({
			url:"reciver", 					//url地址
	   		 data:"id="+${shop.id}+"&userid="+'${sessionScope.loginedUser.id}',   			 // 将uname=张三传递给后台
	   		 type:"post",   				 //传输方式，get / post
	   		 success:function(result){ //success为服务器响应成功后传回的数据。  result为后台传回来的数据
	   			 if(result=='yes'){
	   				document.getElementById('r').innerHTML='已收藏';
	   			 }else{
	   				document.getElementById('r').innerHTML='收藏失败';
	   			 }
	   		 }
	});
	}else{
		$("#r")[0].href="tologin";
	}
}

</script>
<jsp:include page="../public/BeforeFoot.jsp"></jsp:include>