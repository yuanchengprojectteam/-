<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——账户安全--立即验证</title>
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
							<li><a href="shengq_shouh.html">退换货单</a></li>
							<li><a href="pingj_shaid.html">评价晒单</a></li>
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
					<div class="shand_piaot">修改手机验证</div>
					<div class="stepflex">
					 	<dl class="normal doing">
                            <dt class="s-num">1</dt>
                            <dd class="s-text">验证身份<s></s><b></b></dd>
                        </dl> 
					 	<dl class="normal ">
                            <dt class="s-num">2</dt>
                            <dd class="s-text">修改号码<s></s><b></b></dd>
                        </dl> 
					 	<dl class="normal ">
                            <dt class="s-num">3</dt>
                            <dd class="s-text">完成<s></s><b></b></dd>
                        </dl>
					</div>
					<div class="savebox">
						<p>
							<span class="letit">手机号码：</span>
							<span class="hideMobile">182****0710</span>
							<span class="ml20">若当前号码无效或无法接收验证码，请拨打客服电话：400-6677-937</span>
						</p>
						<p>
							<span class="letit">填写手机验证码：</span>
							<span class="hideMobile"><input class="itxt" id="authCode" type="text"></span>
							<span><a href="#" class="btn_10"><s></s>获取短信校验码</a></span>
						</p>
						<p>
							<span class="letit"></span>
							<span class="hideMobile"><a href="#" class="xiay_b">下一步</a></span> 
						</p>
					</div>
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div> 
<%@ include file="AfterFoot.jsp"%>