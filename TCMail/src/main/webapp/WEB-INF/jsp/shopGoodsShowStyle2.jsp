<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
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
 
<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.7.6/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.7.6/themes/icon.css">
    <script type="text/javascript" src="js/jquery-easyui-1.7.6/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.7.6/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.7.6/locale/easyui-lang-zh_CN.js"></script>
 
</head> 
<body>
<jsp:include page="../public/rowHeader.jsp"></jsp:include><!--店铺-->
<div class="dianp_logo_beij">
	<div class="dianp_logo_img">
		<img src="images/dianp_logo_beij.jpg">
	</div>
	<div class="beij_center dianp_xianq_fud_beij">
		<div class="dianp_mingx">
			<div class="dianp_minc">
				<p>${shop.name}</p>
				<div class="services-stars f_f1"> 
                    <span class="star"><i style="width:20%" id="start">星星</i></span>
                    <span class="score">${shop.level}</span>分
                </div>
                parseInt('13');
                <div class="dianp_sc">
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

<!--lieb-->
<div class="beij_center">
	<div class="lib_ds">
		<div class="zuob_dh_ds">
			<div class="quanb_flei_d">全部分类</div>
			<div id="firstpane" class="menu_list"> 
				<c:forEach items="${GTypes }" var="t">
					<c:choose>
						<c:when test="${t.pid==null }">
							<h3 class="menu_head">${t.name}</h3>
						</c:when>
						<c:otherwise>
							<c:forEach items="${GTypes }" var="tt">
								<c:forEach items="${alltype }" var="a">
									<c:choose>
										<c:when test="${tt.pid==a.id }">
											<h3 class="menu_head current_df">${a.name}</h3>
											<div style="display:block" class="menu_body">
											<a href="#">${tt.name }</a>
											</div>
										</c:when>
									</c:choose>
								</c:forEach>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				
				
			</div>
		</div>
		<div class="sdu_you">
			<div class="xians_fangs">
				<div class="dsfd_d">
					<span>显示：</span>
					<span><a href="toshopGoodsShowStyle1?id=${shop.id}&oreason=commnum" class="losd_14 da_15"></a></span>
					<span><a href="toshopGoodsShowStyle2?id=${shop.id}&oreason=commnum" class="losd_14 ds_15 df_14"></a></span> 
				</div>
				<div class="dsfd_d">
					<span>排序：</span>
					<span class="dgf_zy"><a href="ShowStyle2?id=${shop.id}&oreason=commnum" class="lod_ds" id="renqi" >人气</a><em class="${param.oreason eq 'commnum' ?'df':'' }"></em></span>
					<span class="dgf_zy"><a href="ShowStyle2?id=${shop.id}&oreason=ordernum" class="lod_ds" >销量</a><em class="${param.oreason eq 'ordernum' ?'df':'' }"></em></span>
					<span class="dgf_zy"><a href="ShowStyle2?id=${shop.id}&oreason=regtime" class="lod_ds">新品</a><em class="${param.oreason eq 'regtime' ?'df':'' }"></em></span>
					<span class="dgf_zy"><a href="ShowStyle2?id=${shop.id}&oreason=price" class="lod_ds" >价格</a><em class="${param.oreason eq 'price' ?'df':'' }"></em></span>
					<span class="dgf_zy"><a href="ShowStyle2?id=${shop.id}&oreason=fav" class="lod_ds">收藏</a><em class="${param.oreason eq 'fav' ?'df':'' }"></em ></span>
				</div>
			</div>
			<div class="dp_lieb_kuan">
				<div class="shnagp_list_v1 shnagp_list_v1_lieb_er">
					<ul class="sdgvv_d">
						<c:forEach items="${PageBean.items }" var="g">
							<li style="height: 175px;">
								<div class="lieb_neir_kuang lieb_neir_kuang_1">
									<div class="lieb_img lieb_img_1">
										<a href="lootbuy?gid=${g.id }"><img src="${g.image}" style="width:140px;height:101px;"></a> 
									</div>
									<div class="lieb_er_kuang">
										<div class="shangp_biaot_ shangp_biaot_1">
											<a href="lootbuy?gid=${g.id }">${g.name}</a>
											<p><a class="lianpu_minc" href="shopIndex?id=${shop.id }">${shop.name}</a><a class="mis" href="#">点我交谈</a></p>
										</div>
										<div class="lieb_text lieb_text_1">
											<div class="p_price">
								              	<strong class="J_price"><em>¥</em><i>${g.price }</i><p><em class="shangp_yuanj zuo_ji">¥</em><i class="shangp_yuanj">${g.price }</i></p></strong> 
								            </div>
										</div>
										<div class="you_pingj you_pingj_1">
											<p>已有评价</p>
											<span><a href="lootbuy?gid=${g.id }"><em>${g.commnum}</em></a> 人</span>
										</div>
										<div class="lieb_dianp_mingc lieb_dianp_mingc_1">
											<div class="zuo_mingc"> 
												<div class="p_icons">
													<i class="icon_grou_1" data-tips="本地商品"><img src="images/bend.png"></i>
													<i class="icon_grou_2" data-tips="商品特价出售">特价</i>
												</div>
											</div>
											<div class="p_focus p_focus_1"><a class="J_focus" href="#"><i></i>关注</a></div>
										</div> 
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
				<div class="page clearfix">
		        	<div class="p-wrap" id="J_bottomPage">
			            <span class="p-num">
						</span>
			            <span class="p-skip">
			                <em>共<b>${PageBean.totalPage}</b>页&nbsp;&nbsp;到第</em>
			                <input class="input-txt" value="${PageBean.currentPage }"  oninput="addnum(this.value)">
			                <em>页</em>
			                <a class="btn btn-default" id="changgoods" href="ShowStyle1?id=${shop.id}&oreason=${param.oreason}&pageNum=">确定</a>
			            </span> 
		        	</div>
		    	</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
function addnum(pagenum){
	$("#changgoods")[0].href="ShowStyle1?id=${shop.id}&oreason=${param.oreason}&pageNum="+pagenum;
}

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
		   		 method:"post",   				 //传输方式，get / post
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