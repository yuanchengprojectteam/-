<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——设置头像</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!--  <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
 
<script type="text/javascript" src="pie.js"></script> 
 
</head>
<body>
<!--头部--> 

<%@include file="AfterHeader.jsp" %>
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
			<form action="imgHeader" id="imgform" method="post" enctype="multipart/form-data">
				<div class="jib_xinx_kuang">
					<div class="wt">
						<ul>
							<li><a href="ger_xinx.html">个人信息</a></li>
							<li class="dangq_hongx"><a href="shez_toux.html">设置头像</a></li>
							<li><a href="gengd_ger_xinx.html">更多个人信息</a></li>
						</ul>
					</div>
					<div class="wd">
						 <div class="up_avater">
						 	<div class="warp_tip">
						 	
						 		<div id="up_avater_btn" class="avater_btn" onclick="img.click()"  >+上传头像
						 			<input type="file" id="img" name="head" onchange="setSrc(this)" style="display:none" />
						 		</div>
						 			
						 		<div class="upload_tip">
						 			<p class="upload_text">仅支持JPG、JPEG、PNG图片文件，且文件小于2M</p>
						 		</div>
						 		<div class="upload_main">
						 			<div class="up-left">
							 			<div class="pic-show">
								 			<div class="pic-wrap " >
								 				<img id="show0" src="images/7_170312181624_2.jpg">
								 			</div>
							 			</div>
						 			</div>
						 			<div class="up-right">
						 				<div class="up-right-title">
							 				<h5>效果预览</h5>
							 				<p>你上传的图片会自动生成3种尺寸，请注意小尺寸的图片是否清晰</p>
						 				</div>
						 				<div class="up-top">
							 				<div class="pic-100-box">
								 				<div class="pic-100 ">
								 					<img id="show1" src="images/7_170312181624_2.jpg">
								 				</div>
								 				<span class="pic-tip">100X100像素</span>
							 				</div>
						 				</div>
						 				<div class="uc_container">
							 				<div class="up-bottom uc-pic-img">
								 				<div class="pic-60-box">
									 				<div class="pic-60 ">
									 					<img id="show2" src="images/7_170312181624_2.jpg">
									 				</div>
									 				<span class="pic-tip">60X60像素</span>
								 				</div>
							 				</div>
							 				<div class="uc-min uc-pic-img">
								 				<div class="pic-30-box">
								 					<div class="pic-30 ">
								 						<img id="show3" src="images/7_170312181624_2.jpg">
								 					</div>
								 					<span class="pic-tip">30X30像素</span>
								 				</div>
							 				</div>
						 				</div>
						 			</div>
						 		</div>
						 	</div>
						 	<div class="upload_btn_box">
						 		<input type="button" value="保存" id="btn" class="save-btn" onclick="imgform.submit()" >
						 	</div>
						 </div>
					</div>
				</div>
				</form>
			</div> 
		</div>
	</div>
</div>
<script type="text/javascript">
 	
 	function setSrc(obj){
 		var src1=getObjectURL(obj);
 		if(src1!=null){	
 			document.getElementById("btn").setAttribute('style', 'background-color:red');
 		}
 		var e0= document.getElementById("show0");
 		var e1=document.getElementById("show1");
 		var e2=document.getElementById("show2");
 		var e3=document.getElementById("show3");
 		
 	}
 	function getObjectURL(file) {  
 	     var url = null;  
 	     if (window.createObjcectURL != undefined) {  
 	         url = window.createOjcectURL(file);  
 	     } else if (window.URL != undefined) {  
 	         url = window.URL.createObjectURL(file);  
 	     } else if (window.webkitURL != undefined) {  
 	         url = window.webkitURL.createObjectURL(file);  
 	     }  
 	     return url;  
 	 }
 	
 	
</script>
<%@ include file="AfterFoot.jsp"%>