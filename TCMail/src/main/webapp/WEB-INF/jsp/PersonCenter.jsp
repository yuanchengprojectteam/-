<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>  
<meta charset="utf-8">
<title>WangID通城——我的通城（个人中心首页）</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--   <script src="js/jquery-1.11.3.min.js" ></script> -->
<script src="js/index.js" ></script>
<script type="text/javascript" src="js/jquery1.42.min.js"></script> 

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
 <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> 
 
</head>
<body>
<%@ include file="AfterHeader.jsp" %>
<!---->
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->
<<<<<<< HEAD
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
							<p class="user_name" title="${loginedUser.name }">${loginedUser.name }</p>
							<p class="userLevel">会员：<span class="levelId icon_plus_nickname"></span></p> 
						</div>
					</div>
					<div class="userInfo_bar">
						<span>资料完成度</span>
						<span class="userInfo_process_bar"><em class="active_bar" style="width: 40px;"> 20%</em></span>
						<a href="toPersonmessage" target="_blank">完善</a>
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
                                    <a href="commentAndShowOrder">
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
							<li><a href="commentAndShowOrder">评价晒单</a></li>
						</ul>
						<ul>
							<h3>管理中心</h3>
							<li><a href="MyFavorite">我的收藏</a></li>
							<li><a href="#">我的预约</a></li>
							<li><a href="#">我的咨询</a></li>
							<li><a href="#">投诉管理</a></li>
							<li><a href="MyScode">我的积分</a></li>
						</ul>
					</div>
					<div class="diy_top">
						<ul>
							<h3>账户设置</h3>
							<li><a href="toPersonmessage">基本资料</a></li>
							<li><a href="UserSecurity">账户安全</a></li>
							<li><a href="shouh_diz.html">收货地址</a></li>
						</ul>
					</div>
				</div>
			</div>
=======
			
				<%@ include file="PersonCenterLeft.jsp" %> 
				
>>>>>>> branch 'master' of https://github.com/yuanchengprojectteam/-.git
			<!--左边内容-->
			<div class="mod_main">
				<div class="mt">
                    <h3>我的订单</h3>
                    <div class="extra-r"><a href="wod_dingd.html">查看全部订单</a></div>
                </div>
                <div class="tb_order">
                	<table width="100%">
	                	<tbody class="fore0">
		                	<tr>
			                	<td><div class="img-list"><a href="shangp_xiangq.html" target="_blank"><img src="images/lieb_tupi1.jpg" title="女大学生这么穿才能吸引异性目光"></a></div></td>
			                	<td><div class="u-name">潘中全</div></td>
			                	<td>￥129.00<br>在线支付</td>
			                	<td><span class="ftx-03">2017-09-22 <br> 17:16:00</span></td>
			                	<td><span class="ftx-03">已完成</span></td>
			                	<td class="order-doi"><a target="_blank" href="dingd_xiangq.html" >查看</a></td>
		                	</tr>
	                	</tbody>
	                	<tbody class="fore0">
		                	<tr>
			                	<td><div class="img-list"><a href="shangp_xiangq.html" target="_blank"><img src="images/lieb_tupi2.jpg" title="女大学生这么穿才能吸引异性目光"></a></div></td>
			                	<td><div class="u-name">潘中全</div></td>
			                	<td>￥129.00<br>在线支付</td>
			                	<td><span class="ftx-03">2017-09-22 <br> 17:16:00</span></td>
			                	<td><span class="ftx-03">已完成</span></td>
			                	<td class="order-doi"><a target="_blank" href="dingd_xiangq.html" >查看</a></td>
		                	</tr>
	                	</tbody>
	                	<tbody class="fore0">
		                	<tr>
			                	<td><div class="img-list"><a href="shangp_xiangq.html" target="_blank"><img src="images/lieb_tupi3.jpg" title="女大学生这么穿才能吸引异性目光"></a></div></td>
			                	<td><div class="u-name">潘中全</div></td>
			                	<td>￥129.00<br>在线支付</td>
			                	<td><span class="ftx-03">2017-09-22 <br> 17:16:00</span></td>
			                	<td><span class="ftx-04">等待收货</span></td>
			                	<td class="order-doi"><a target="_blank" href="dingd_xiangq.html" >查看</a></td>
		                	</tr>
	                	</tbody>
                	</table>
                </div>
			</div>
			<div class="mod_main mod_main1">
				<div class="mt">
                    <h3>我收藏的商品</h3>
                    <div class="extra-r"><a href="wod_shouc.html">查看更多</a></div>
                </div>
               	<div class="follow">
               		<ul>
               			<li><a class="follow_tup_kuang" href="shangp_xiangq.html"><img src="images/lieb_tupi2.jpg"></a><p>暂无售价</p></li>
               			<li><a class="follow_tup_kuang" href="shangp_xiangq.html"><img src="images/lieb_tupi1.jpg"></a><p>￥25.00</p></li>
               			<li><a class="follow_tup_kuang" href="shangp_xiangq.html"><img src="images/lieb_tupi3.jpg"></a><p>暂无售价</p></li>
               			<li><a class="follow_tup_kuang" href="shangp_xiangq.html"><img src="images/lieb_tupi2.jpg"></a><p>暂无售价</p></li>
               			<li><a class="follow_tup_kuang" href="shangp_xiangq.html"><img src="images/lieb_tupi3.jpg"></a><p>暂无售价</p></li>
               			<li><a class="follow_tup_kuang" href="shangp_xiangq.html"><img src="images/lieb_tupi1.jpg"></a><p>暂无售价</p></li>
               		</ul>
               	</div>
            </div>
            <div class="mod_main mod_main1 mod_main2">
				<div class="mt">
                    <h3>我的购物车</h3>
                    <div class="extra-r"><a href="car">查看更多</a></div>
                </div>
               	<div class="follow">
               		<ul>
               		<c:forEach items="${cglist }" var="g">
               			<li>
               				<a class="follow_tup_kuang" href="shangp_xiangq.html"><img src="images/xiangqtu_1.jpg"></a>
               				<p><a href="shangp_xiangq.html">${g.type.name } ${g.name } ${g.size } ${g.color }<span>(已有${g.commnum }人评价)</span></a><p class="p_color_1">￥${g.price }</p></p>
               			</li>
               		</c:forEach>	
               		</ul>
               	</div>
            </div>
		</div>
	</div>
</div>
<%@ include file="AfterFoot.jsp"%>