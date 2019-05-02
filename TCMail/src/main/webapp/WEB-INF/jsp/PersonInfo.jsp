<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——个人信息</title>
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
								<p class="myGome_verifiPop"> <span>您已绑定手机：</span> <span>182****0710</span> <a href="toSecurity" target="_blank">管理</a></p>
							</div>
							<div class="shab_1">
								<span class="myGome_email" val="email"> <em class=""></em> </span>
								<p class="myGome_verifiPop"> <span>您还未绑定邮箱 </span><a href="toSecurity" target="_blank">立即绑定</a></p>
							</div>
						</div>
						<a class="fl_ee" href="toSecurity" target="_blank" style="margin-top:2px;">提升</a>
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
							<li><a href="toPersonmessage">基本资料</a></li>
							<li><a href="toSecurity">账户安全</a></li>
							<li><a href="shouh_diz.html">收货地址</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="wt">
						<ul>
							<li class="dangq_hongx"><a href="toPersonmessage">个人信息</a></li>
							<li><a href="shez_toux.html">设置头像</a></li>
							<li><a href="toMoreInformation">更多个人信息</a></li>
						</ul>
					</div>
					<div class="wd">
					<form action="saveUser" method="post">
						<input type="hidden" name="id" value="${loginedUser.id }" />
						<div class="user_set">
                            <div class="item_meic">
                                <span class="label_meic"><em>*</em> 姓名：</span>
                                <div class="fl_e">
                                    <input type="text" class="itxt_succ itxt_succ_url" maxlength="20" id="realname" name="realname" value="${loginedUser.realname }" />
                                    <span class="ftx03">输入真实姓名，不得超过20个英文或10个汉字</span>
                                </div>
                            </div>
                            <div class="item_meic">
                                <span class="label_meic"><em>*</em> 登录名：</span>
                                <div class="fl_e">
                                    <input type="text" class="itxt_succ itxt_succ_url" maxlength="20" id="account" name="account" value="${loginedUser.account }" />
                                    <span class="ftx03">可用于登录，请牢记哦~</span>
                                </div>
                            </div>
                            
                            <div class="item_meic">
                                <span class="label_meic"><em>*</em> 昵称：</span>
                                <div class="fl_e"> 
                                    <input type="text" class="itxt_succ itxt_succ_url" maxlength="20" id="name" name="name" value="${loginedUser.name }">
                                </div>
                            </div>
                            <div class="item_meic">
                                <span class="label_meic">性别：</span>
                                <div class="fl_e"> 
                                <input type="hidden" id="sexval"  value="${loginedUser.sex }" />
                                	<input type="radio" name="sex" id="man" class="jdradio" value="男" >
                                    <label class="mr10" id="man">男</label>
                                    <input type="radio" name="sex" id="woman"  class="jdradio" value="女">
                                    <label class="mr10">女</label>
                                    <input type="radio" name="sex" id="unknow" class="jdradio" value="0">
                                    <label class="mr10">保密</label>
                                </div>
                            </div>
                            <div class="item_meic">
                                <span class="label_meic">年龄：</span>
                                <div class="fl_e"> 
	                                <div id="date">
	                                	<input type="text" id="age" name="age" value="${loginedUser.age }">
									</div>  
                                </div>
                            </div>
                            <div class="item_meic">
                                <span class="label_meic">邮箱：</span>
                                <div class="fl_e">
	                                <input type="text" id="email" name="email" value="${loginedUser.email }">
                                    <a href="toSecurity" class="ftx05 ml10">修改</a>
                                </div>
                            </div>
                            
                            <div class="item_meic">
                                <span class="label_meic"> </span>
                                <div class="fl_e">
                                    <input type="button" id="save"  value="保存" class="savebtn" onclick="save.form.submit()">
                                </div>
                            </div>
						</div>
						</form>
					</div>
				</div>
			</div> 
		</div>
	</div>
</div>
<script type="text/javascript">

var sexvalue=document.getElementById("sexval").value;
if(""==sexvalue){
	document.getElementById("unknow").checked=true;
}else if("男"== sexvalue){
	document.getElementById("man").checked=true;
}else if("女" == sexvalue){
	document.getElementById("woman").checked=true;
}else{
	document.getElementById("unknow").checked=true;
}

$(function(){
	
	$("#date").selectDate()
	
	$("#days").focusout(function(){
		var year = $("#year option:selected").html()
		var month = $("#month option:selected").html()
		var day = $("#days option:selected").html()
		console.log(year+month+day)
	})
	
})
	
	var sexvalue=$("#sex:checked").val();
	alert($("man").checked());
	if("男"==sexvalue){
		
	}

</script>
<%@ include file="AfterFoot.jsp"%>