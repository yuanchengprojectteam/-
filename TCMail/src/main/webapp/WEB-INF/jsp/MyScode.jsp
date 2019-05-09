<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<<<<<<< HEAD
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城—我的积分</title>
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
						<a href="#" target="_blank">完善</a>
					</div>
					<div class="myGome_accountSecurity">
						<span class="fl_ee" style="margin-top:2px;">账户安全 <em class="myGome_account_level"> 低</em> </span>
						<div class="verifiBox fl_ee">
							<div class="shab_1">
								<span class="myGome_mobile" val="mobile"> <em class=" myGome_onActive "></em> </span> 
								<p class="myGome_verifiPop"> <span>您已绑定手机：</span> <span>182****0710</span> <a href="#" target="_blank">管理</a></p>
							</div>
							<div class="shab_1">
								<span class="myGome_email" val="email"> <em class=""></em> </span>
								<p class="myGome_verifiPop"> <span>您还未绑定邮箱 </span><a href="#" target="_blank">立即绑定</a></p>
							</div>
						</div>
						<a class="fl_ee" href="#" target="_blank" style="margin-top:2px;">提升</a>
					</div>
					<div class="user_counts">
						<ul>
							<li>
                                <div class="count_item">
                                    <a href="#">
                                        <i class="count_icon count_icon01"></i> 待付款
                                        <em id="waitPay">2</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="#">
                                        <i class="count_icon count_icon02"></i> 待收货
                                        <em id="waitPay">4</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="#">
                                        <i class="count_icon count_icon03"></i> 待提货
                                        <em id="waitPay">0</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="#">
                                        <i class="count_icon count_icon04"></i> 待评价
                                        <em id="waitPay">8</em>
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
							<li><a href="#">退换货单</a></li>
							<li><a href="#">评价晒单</a></li>
						</ul>
						<ul>
							<h3>管理中心</h3>
							<li><a href="wod_shouc.html">我的收藏</a></li>
							<li><a href="#">我的预约</a></li>
							<li><a href="#">我的咨询</a></li>
							<li><a href="#">投诉管理</a></li>
						</ul>
					</div>
					<div class="diy_top">
						<ul>
							<h3>账户设置</h3>
							<li><a href="#">基本资料</a></li>
							<li><a href="#">账户安全</a></li>
							<li><a href="#">收货地址</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="wt">
						<ul>
							<li class="dangq_hongx"><a href="wod_jifen.html">我的积分</a></li> 
							<li><a href="zhuans_jifen.html">专属积分</a></li> 
						</ul>
					</div>
					<div class="ger_zx_wod_jif">
						<div class="bei_h">
							<div class="qianq_d"><p>当前可用积分</p><h1>${PointNum}</h1></div>
							<div class="qianq_d qianq_d_sda"><p>将要过期的积分</p><h1 class="color_hong">0</h1><span>您的积分将在每年年底过期！</span></div>
							<div class="qianq_d"><a href="jifen_shangc.html" class="fanh_annniu">前往兑换超级礼品</a></div>
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
									<th>来源/用途</th>
									<th>积分变化</th>
									<th>日期</th>
									<th>备注</th>
								</tr>
							</thead>
						<c:forEach items="${pointGoods }" var="pg">
							<tbody>
								<tr class="sep-row"><td colspan="4"></td></tr>
								<tr class="tr-th">
									<td colspan="4">
										<span class="gap"></span> 
										<span class="number">订单号：<a href="#" target="_blank">${pg.id }</a></span> 
									</td>
								</tr>
								<c:forEach items="${pg.details }" var="pgd">
								<tr class="tr-bd">
									<td rowspan="1">
										<div class="goods-item">
											<div class="p-img">
												<a target="_blank" href="#">
													<img src="${pgd.goods.image }" alt="">
												</a>
											</div>
											<div class="p-msg">
												<div class="p-name">
													<a target="_blank" href="#">${pgd.goods.name} ${pgd.goods.color} ${pgd.goods.size}</a>
												</div>
											</div>
										</div>
										<div class="goods-number">${pgd.uorder.num}</div>
									</td>
									<td rowspan="1">
										<div class="zhif_jine">
											<h1 class="jif_jia">+ ${pgd.goods.point}</h1>
										</div>
									</td>
									<td rowspan="1">
										<div class="txt_ren">
											<span>${pgd.uorder.ordertime}</span> 
										</div>
									</td>
									<td rowspan="1">
										<div class="operate">
											<span class="a-link">交易获得</span><br> 
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
<title>WangID通城—我的积分</title>
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
					<div class="wt">
						<ul>
							<li class="dangq_hongx"><a href="wod_jifen.html">我的积分</a></li> 
							<li><a href="zhuans_jifen.html">专属积分</a></li> 
						</ul>
					</div>
					<div class="ger_zx_wod_jif">
						<div class="bei_h">
							<div class="qianq_d"><p>当前可用积分</p><h1>2500</h1></div>
							<div class="qianq_d qianq_d_sda"><p>将要过期的积分</p><h1 class="color_hong">0</h1><span>您的积分将在每年年底过期！</span></div>
							<div class="qianq_d"><a href="jifen_shangc.html" class="fanh_annniu">前往兑换超级礼品</a></div>
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
									<th>来源/用途</th>
									<th>积分变化</th>
									<th>日期</th>
									<th>备注</th>
								</tr>
							</thead>
							<tbody>
								<tr class="sep-row"><td colspan="4"></td></tr>
								<tr class="tr-th">
									<td colspan="4">
										<span class="gap"></span> 
										<span class="number">订单号：<a href="#" target="_blank">62938990890</a></span> 
									</td>
								</tr>
								<tr class="tr-bd">
									<td rowspan="1">
										<div class="goods-item">
											<div class="p-img">
												<a target="_blank" href="#">
													<img src="images/lieb_tupi3.jpg" alt="">
												</a>
											</div>
											<div class="p-msg">
												<div class="p-name">
													<a target="_blank" href="#">红豆居家情侣睡衣男女春秋纯棉长袖条纹卡通家居服套装119 麻灰 170/92A</a>
												</div>
											</div>
										</div>
										<div class="goods-number">x1</div>
									</td>
									<td rowspan="1">
										<div class="zhif_jine">
											<h1 class="jif_jia">+15</h1>
										</div>
									</td>
									<td rowspan="1">
										<div class="txt_ren">
											<span>2017/11/07</span> 
										</div>
									</td>
									<td rowspan="1">
										<div class="operate">
											<span class="a-link">交易获得</span><br> 
										</div>
									</td>
								</tr>
							</tbody>
>>>>>>> branch 'master' of https://github.com/yuanchengprojectteam/-.git
							<tbody>
								<tr class="sep-row"><td colspan="4"></td></tr>
								<tr class="tr-th">
									<td colspan="4">
										<span class="gap"></span> 
										<span class="number">订单号：<a href="#" target="_blank">62938990890</a></span> 
									</td>
								</tr>
								<tr class="tr-bd">
									<td rowspan="1">
										<div class="goods-item">
											<div class="p-img">
												<a target="_blank" href="#">
													<img src="images/lieb_tupi3.jpg" alt="">
												</a>
											</div>
											<div class="p-msg">
												<div class="p-name">
													<a target="_blank" href="#">红豆居家情侣睡衣男女春秋纯棉长袖条纹卡通家居服套装119 麻灰 170/92A</a>
												</div>
											</div>
										</div>
										<div class="goods-number">x1</div>
									</td>
									<td rowspan="1">
										<div class="zhif_jine">
											<h1 class="jif_jian">+200</h1>
										</div>
									</td>
									<td rowspan="1">
										<div class="txt_ren">
											<span>2017/11/07</span> 
										</div>
									</td>
									<td rowspan="1">
										<div class="operate">
											<span class="a-link">购买商品</span><br> 
										</div>
									</td>
								</tr>
							</tbody> 
						</table>
						<div class="gerzx_fany">
							<a href="#" class="shangxy">上一页</a>
							<a href="#">1</a>
							<a href="#" class="shangxy">上一页</a>
						</div>
					</div>
				</div>
			</div> 
		</div>
	</div>
</div>
<script type="text/javascript">
$(function(){
	$("#date").selectDate()
	
	$("#days").focusout(function(){
		var year = $("#year option:selected").html()
		var month = $("#month option:selected").html()
		var day = $("#days option:selected").html()
		console.log(year+month+day)
	})
	
})

</script>
<%@ include file="AfterFoot.jsp"%>