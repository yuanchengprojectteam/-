<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<<<<<<< HEAD
    
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——评价晒单</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!--  <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
 <script type="text/javascript" src="js/select.js"></script>
</head>
<body>
<!--头部--> 
 <%@ include file="AfterHeader.jsp" %>
<!---->
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->
			<div class="tod_tongc_zuoc">
				<div class="zuoc_toux">
					<div class="toux_kuang">
						<div class="userImage">
							<div class="myGome_userPhoto">
								<img src="images/toux.png">
								<a class="edit_photo_bitton" href="profile" target="_blank">编辑</a>
							</div>
						</div>
						<div class="user_name_Level">
							<p class="user_name" title="山的那边是海">山的那边是海</p>
							<p class="userLevel">会员：<span class="levelId icon_plus_nickname"></span></p> 
						</div>
					</div>
					<div class="userInfo_bar">
						<span>资料完成度</span>
						<span class="userInfo_process_bar"><em class="active_bar" style="width: 40px;"> 20%</em></span>
						<a href="ger_xinx.html" target="_blank">完善</a>
					</div>
					<div class="myGome_accountSecurity">
						<span class="fl_ee" style="margin-top:2px;">账户安全 <em class="myGome_account_level"> 低</em> </span>
						<div class="verifiBox fl_ee">
							<div class="shab_1">
								<span class="myGome_mobile" val="mobile"> <em class=" myGome_onActive "></em> </span> 
								<p class="myGome_verifiPop"> <span>您已绑定手机：</span> <span>182****0710</span> <a href="zhangh_anq.html" target="_blank">管理</a></p>
							</div>
							<div class="shab_1">
								<span class="myGome_email" val="email"> <em class=""></em> </span>
								<p class="myGome_verifiPop"> <span>您还未绑定邮箱 </span><a href="zhangh_anq.html" target="_blank">立即绑定</a></p>
							</div>
						</div>
						<a class="fl_ee" href="zhangh_anq.html" target="_blank" style="margin-top:2px;">提升</a>
					</div>
					<div class="user_counts">
						<ul>
							<li>
                                <div class="count_item">
                                    <a href="wod_dingd.html">
                                        <i class="count_icon count_icon01"></i> 待付款
                                        <em id="waitPay">2</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="wod_dingd.html">
                                        <i class="count_icon count_icon02"></i> 待收货
                                        <em id="waitPay">4</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="wod_dingd.html">
                                        <i class="count_icon count_icon03"></i> 待提货
                                        <em id="waitPay">0</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="wod_dingd.html">
                                        <i class="count_icon count_icon04"></i> 待评价
                                        <em id="waitPay">${count}</em>
                                    </a>
                                </div>
                            </li>
						</ul>
					</div>
				</div>
				<div class="wod_tongc_daoh_lieb">
					<div class="diy_top">
						<ul>
							<h3>订单中心</h3>
							<li><a href="wod_dingd.html">我的订单</a></li>
							<li><a href="shengq_shouh.html">退换货单</a></li>
							<li><a href="pingj_shaid.html">评价晒单</a></li>
						</ul>
						<ul>
							<h3>管理中心</h3>
							<li><a href="MyFavorite?uid=${favorite}">我的收藏</a></li>
							<li><a href="#">我的预约</a></li>
							<li><a href="#">我的咨询</a></li>
							<li><a href="#">投诉管理</a></li>
						</ul>
					</div>
					<div class="diy_top">
						<ul>
							<h3>账户设置</h3>
							<li><a href="ger_xinx.html">基本资料</a></li>
							<li><a href="zhangh_anq.html">账户安全</a></li>
							<li><a href="shouh_diz.html">收货地址</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="shand_piaot">评价晒单</div>
					<div class="tab_trigger">
						<ul>
							<li><a class="text_shaid" href="#">待评价订单</a><p class="sup">${count}</p></li>
							<li><a class="text_shaid" href="#">待晒单</a></li> 
						</ul>
					</div> 
					<table class="order-tb">
						<colgroup>
							<col class="number-col">
							<col class="consignee-col">
							<col class="amount-col">
							<col class="operate-col">
						</colgroup>
						<thead>
							<tr>
								<th>订单详情</th>
								<th>金额</th>
								<th>收货人</th>
								<th>操作</th>
							</tr>
						</thead>
						
						
						
				<c:forEach items="${orderGoods }" var="o">
						<tbody>
							<tr class="sep-row"><td colspan="4"></td></tr>
							<tr class="tr-th">
								<td colspan="4">
									<span class="gap"></span>
									<span class="dealtime" title="2015-1-19 10:30:42">${o.ordertime }</span>
									<span class="number">订单号：<a href="#" target="_blank">${o.id}</a></span> 
								</td>
							</tr>
					<c:forEach items="${o.details }" var="d">
							<tr class="tr-bd">
								<td rowspan="1">
									<div class="goods-item">
										<div class="p-img">
											<a target="_blank" href="shangp_xiangq.html">
												<img src="${d.goods.image }" alt="">
											</a>
										</div>
										<div class="p-msg">
											<div class="p-name">
												<a target="_blank" href="shangp_xiangq.html">${d.goods.name } ${d.goods.color }${d.goods.size }</a>
											</div>
										</div>
									</div>
									<div class="goods-number">${o.num }件</div>
								</td>
								<td rowspan="1">
									<div class="zhif_jine">
										<p>${d.goods.price }</p>
										<span>${o.paytype }</span>
									</div>
								</td>
								<td rowspan="1">
									<div class="txt_ren">
										<span>${o.user.name }</span>
										<p class="ren_tub"></p>
									</div>
								</td>
								<td rowspan="1">
									<div class="operate">
										<a href="dingd_xiangq.html" target="_blank" class="a-link">订单详情</a><br>
										<a href="comment?oid=${o.id }&id=${d.goods.id}" target="_blank" class="btn-def">评价</a>
									</div>
								</td>
							</tr>
					</c:forEach>
						</tbody>
				</c:forEach>
						
				
=======
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——评价晒单</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!--  <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
 <script type="text/javascript" src="js/select.js"></script>
</head>
<body>
<!--头部--> 
 <%@ include file="AfterHeader.jsp" %>
<!---->
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->
				<%@include flie="PersonCenterLeft.jsp"%> 
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="shand_piaot">评价晒单</div>
					<div class="tab_trigger">
						<ul>
							<li><a class="text_shaid" href="#">待评价订单</a><p class="sup">1</p></li>
							<li><a class="text_shaid" href="#">待晒单</a></li> 
						</ul>
					</div> 
					<table class="order-tb">
						<colgroup>
							<col class="number-col">
							<col class="consignee-col">
							<col class="amount-col">
							<col class="operate-col">
						</colgroup>
						<thead>
							<tr>
								<th>订单详情</th>
								<th>金额</th>
								<th>收货人</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr class="sep-row"><td colspan="4"></td></tr>
							<tr class="tr-th">
								<td colspan="4">
									<span class="gap"></span>
									<span class="dealtime" title="2015-1-19 10:30:42">2017-09-22 17:16:00</span>
									<span class="number">订单号：<a href="#" target="_blank">62938990890</a></span> 
								</td>
							</tr>
							<tr class="tr-bd">
								<td rowspan="1">
									<div class="goods-item">
										<div class="p-img">
											<a target="_blank" href="shangp_xiangq.html">
												<img src="images/lieb_tupi3.jpg" alt="">
											</a>
										</div>
										<div class="p-msg">
											<div class="p-name">
												<a target="_blank" href="shangp_xiangq.html">红豆居家情侣睡衣男女春秋纯棉长袖条纹卡通家居服套装119 麻灰 170/92A</a>
											</div>
										</div>
									</div>
									<div class="goods-number">x1</div>
								</td>
								<td rowspan="1">
									<div class="zhif_jine">
										<p>总额￥488.00</p>
										<span>在线支付</span>
									</div>
								</td>
								<td rowspan="1">
									<div class="txt_ren">
										<span>艾丽西亚</span>
										<p class="ren_tub"></p>
									</div>
								</td>
								<td rowspan="1">
									<div class="operate">
										<a href="dingd_xiangq.html" target="_blank" class="a-link">订单详情</a><br>
										<a href="pingj.html" target="_blank" class="btn-def">评价</a>
									</div>
								</td>
							</tr>
						</tbody>
						<tbody>
							<tr class="sep-row"><td colspan="4"></td></tr>
							<tr class="tr-th">
								<td colspan="4">
									<span class="gap"></span>
									<span class="dealtime" title="2015-1-19 10:30:42">2017-09-22 17:16:00</span>
									<span class="number">订单号：<a href="#" target="_blank">62938990890</a></span> 
								</td>
							</tr>
							<tr class="tr-bd">
								<td>
									<div class="goods-item">
										<div class="p-img">
											<a target="_blank" href="shangp_xiangq.html">
												<img src="images/lieb_tupi2.jpg" alt="">
											</a>
										</div>
										<div class="p-msg">
											<div class="p-name">
												<a target="_blank" href="shangp_xiangq.html">红豆居家情侣睡衣男女春秋纯棉长袖条纹卡通家居服套装119 麻灰 170/92A</a>
											</div>
										</div>
									</div>
									<div class="goods-number">x1</div>
								</td>
								<td rowspan="2">
									<div class="zhif_jine">
										<p>总额￥488.00</p>
										<span>在线支付</span>
									</div>
								</td>
								<td rowspan="2">
									<div class="txt_ren">
										<span>艾丽西亚</span>
										<p class="ren_tub"></p>
									</div>
								</td>
								<td rowspan="2">
									<div class="operate">
										<a href="dingd_xiangq.html" target="_blank" class="a-link">订单详情</a><br>
										<a href="pingj.html" target="_blank" class="btn-def">评价</a>
									</div>
								</td>
							</tr>
							<tr class="tr-bd">
								<td>
									<div class="goods-item">
										<div class="p-img">
											<a target="_blank" href="shangp_xiangq.html">
												<img src="images/lieb_tupi1.jpg" alt="">
											</a>
										</div>
										<div class="p-msg">
											<div class="p-name">
												<a target="_blank" href="shangp_xiangq.html">红豆居家情侣睡衣男女春秋纯棉长袖条纹卡通家居服套装119 麻灰 170/92A</a>
											</div>
										</div>
									</div>
									<div class="goods-number">x1</div>
								</td> 
							</tr>
						</tbody> 
>>>>>>> branch 'master' of https://github.com/yuanchengprojectteam/-.git
					</table>
					<div class="gerzx_fany">
						<a href="#" class="shangxy">上一页</a>
						<a href="#">1</a>
						<a href="#" class="shangxy">上一页</a>
					</div>
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div> 
<%@ include file="AfterFoot.jsp"%>