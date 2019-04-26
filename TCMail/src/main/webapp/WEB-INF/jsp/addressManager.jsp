<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——收货地址</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<!-- <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script> -->
<!--  <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
<!--  <script type="text/javascript" src="js/select.js"></script> -->
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
 <script type="text/javascript" src="js/jquery.reveal.js"></script>

 <script type="text/javascript" src="js/chengs/jquery.js"></script>
<script type="text/javascript" src="js/chengs/bootstrap.js"></script>
<script type="text/javascript" src="js/chengs/city-picker.data.js"></script>
<script type="text/javascript" src="js/chengs/city-picker.js"></script>
<script type="text/javascript" src="js/chengs/main.js"></script>

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
					<div class="shand_piaot">收货地址</div>
					<div class="shouh_diz_beij">
						<div class="shouh_diz_kuang shouh_diz_kuang_mor">
							<div class="item">
								<span class="labal">收件人：</span>
								<p>艾丽西亚</p>
							</div>
							<div class="item">
								<span class="labal">所在地区：</span>
								<p>贵州省贵阳市云岩区</p>
							</div>
							<div class="item">
								<span class="labal">地址：</span>
								<p>下合群路达亨大厦16层</p>
							</div>
							<div class="item">
								<span class="labal">手机：</span>
								<p>182*****710</p>
							</div>
							<div class="item">
								<span class="labal">固定电话：</span>
								<p> </p>
							</div>
							<div class="item">
								<span class="labal">电子邮箱：</span>
								<p>22******88@qq.com</p>
							</div>
							<div class="bianj_yv_shanc">
								<a href="#" class="mor_color">当前默认地址</a>
								<a href="#"  data-reveal-id="myModal_1">编辑</a>
								<a href="#">删除</a>
							</div>
						</div>
						<div class="shouh_diz_kuang">
							<div class="item">
								<span class="labal">收件人：</span>
								<p>艾丽西亚</p>
							</div>
							<div class="item">
								<span class="labal">所在地区：</span>
								<p>贵州省贵阳市云岩区</p>
							</div>
							<div class="item">
								<span class="labal">地址：</span>
								<p>下合群路达亨大厦16层</p>
							</div>
							<div class="item">
								<span class="labal">手机：</span>
								<p>182*****710</p>
							</div>
							<div class="item">
								<span class="labal">固定电话：</span>
								<p> </p>
							</div>
							<div class="item">
								<span class="labal">电子邮箱：</span>
								<p>22******88@qq.com</p>
							</div>
							<div class="bianj_yv_shanc">
								<a href="#">设为默认</a>
								<a href="#">编辑</a>
								<a href="#">删除</a>
							</div>
						</div>
						<div class="xinz_shouh_dz_ann"><a href="#" data-reveal-id="myModal">新增收货地址</a></div>
					</div> 
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div>
<!--新增地址表单-->
<div id="myModal" class="reveal-modal">
	<div class="xint_biaot">
		<h3>新添收货地址</h3>
	</div>
	<div class="shouj_diz_b">
		<div class="biaod_1">
			<p><em>*</em>联系人：</p>
			<input type="text" class="text")">
		</div>
		<div class="biaod_1">
			<p><em>*</em>收货地址：</p>
			<div class="xinz_diz_cs">
				<div class="docs-methods">
					<form class="form-inline">
						<div id="distpicker">
							<div class="form-group">
								<div style="position: relative;">
									<input id="city-picker3" class="form-control" readonly type="text" value="北京市/北京市/朝阳区" data-toggle="city-picker">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="biaod_1">
			<p><em>*</em>详细地址：</p>
			<input type="text" class="text text1")">
		</div>
		<div class="biaod_1 biaod_2">
			<div class="liangp_e">
				<p><em>*</em>手机号码：</p>
				<input type="text" class="text")">
			</div>
			<span class="huo_z">或</span>
			<div class="liangp_e">
				<p>固定电话：</p>
				<input type="text" class="text")">
			</div>
		</div>
		<div class="biaod_1">
			<p>邮箱：</p>
			<input type="text" class="text text1")">
		</div>
		<div class="biaod_1">
			<a href="#" class="diz_baoc">保存</a>
		</div>
	</div>
	<a class="close-reveal-modal">&#215;</a>
</div>

<div id="myModal_1" class="reveal-modal">
	<div class="xint_biaot">
		<h3>新添收货地址</h3>
	</div>
	<div class="shouj_diz_b">
		<div class="biaod_1">
			<p><em>*</em>联系人：</p>
			<input type="text" class="text")">
		</div>
		<div class="biaod_1">
			<p><em>*</em>收货地址：</p>
			<div class="xinz_diz_cs">
				<div class="docs-methods">
					<form class="form-inline">
						<div id="distpicker">
							<div class="form-group">
								<div style="position: relative;">
									<input id="city-picker3" class="form-control" readonly type="text" value="北京市/北京市/朝阳区" data-toggle="city-picker">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="biaod_1">
			<p><em>*</em>详细地址：</p>
			<input type="text" class="text text1")">
		</div>
		<div class="biaod_1 biaod_2">
			<div class="liangp_e">
				<p><em>*</em>手机号码：</p>
				<input type="text" class="text")">
			</div>
			<span class="huo_z">或</span>
			<div class="liangp_e">
				<p>固定电话：</p>
				<input type="text" class="text")">
			</div>
		</div>
		<div class="biaod_1">
			<p>邮箱：</p>
			<input type="text" class="text text1")">
		</div>
		<div class="biaod_1">
			<a href="#" class="diz_baoc">保存</a>
		</div>
	</div>
	<a class="close-reveal-modal">&#215;</a>
</div>

<%@ include file="AfterFoot.jsp" %>