<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>WangID通城——商家店铺</title>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
 <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script>
    
    <script charset="utf-8" src="https://map.qq.com/api/js?v=2.exp&key=OB4BZ-D4W3U-B7VVO-4PJWW-6TKDJ-WPB77"></script>
</head> 
<body onload="init()">
<jsp:include page="../public/rowHeader.jsp"></jsp:include>
<!--店铺-->
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
                	<a href="shopIndex?id=${shop.id }">进入官网</a>
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

<!--简介-->
<div class="shangj_dianp_jiej">
	<div class="jianj_img"><img src="images/shangj_jianj_beij.jpg"></div>
	<div class="beij_center fl_01">
		<div class="jianj_text">
			<div class="dianp_jianj">
				<h2>店铺简介</h2>
				<div class="haod_kz" style="width: 1200px;height: 200px;">
					<p>${shop.describe }</p>
				</div>
			</div>
		<iframe src="ditu?addr=${shop.addr }" style="width: 100%;height: 350px;"></iframe>
		  
		</div>
	</div>
</div>
 
<jsp:include page="../public/BeforeFoot.jsp"></jsp:include>
<script type="text/javascript">
var  i=parseInt('${shop.level}');
document.getElementById('start').setAttribute('style','width:'+(i*20)+'%');
</script>