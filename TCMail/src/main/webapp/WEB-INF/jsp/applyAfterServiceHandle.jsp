<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——申请售后</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
 <script type="text/javascript" src="../../js/jquery-2.1.4.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script>
<!--  <script type="text/javascript" src="js/select.js"></script> -->
 


</head>
<body>
<%@ include file="AfterHeader.jsp" %>
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
					<div class="shand_piaot">申请售后 <p class="dingd_huis_zhan" style="float: right;"><a href="#">联系卖家</a></p></div> 
					<br>
					<div class="shengq_waik" id="success">
						${data}
						
					</div>
					</div>
			</div>
			<!--左边内容结束-->
	</div>
</div>
			

<script type="text/javascript">

 
</script>

 
<%@ include file="AfterFoot.jsp" %>
<script type="text/javascript" src="../../js/hou/jquery.cityselect.js"></script>

<script type="text/javascript">

function ret1(){
	var fd=new FormData($("#form")[0]);
	if($("#dsg1").hasClass("dsg") || $("#dsg2").hasClass("dsg")){
	$.ajax({
		url:"applyRet",
		data:fd,
		type:"post",
		processData:false,
		contentType:false,
		success: function(data){
			alert(data);
			$("#success").html(data);
		}
	})
	}else{
		alert("请选择货物状态后,再提交");
	} 
	
	
	/* var detailid = $("#detailid").val();
	if($("#dsg1").hasClass("dsg") || $("#dsg2").hasClass("dsg")){
		
		var descr = $("#area").val();
		var reason = $("#select").val();
		var money = $("#money").html();
		var file =document.getElementById('file').files[0];              //获取文件对象
		var formData=new FormData();		//
		formData.append("file",file);
		var data = {
				detailid:detailid,
				descr:descr,
				reason:reason,
				money:money,
		};
		$.post("applyRet",data,function(data){
			alert(data);
		});
		
	}else{
		alert("请选择货物状态后,再提交");
	} */
}

function setsrc(obj){
	var url = getObjectURL(obj);
	$("#img").attr('src',url);
}

//获取文件上传的真实路径
function getObjectURL(file) {
	var url = null;  
	var fileObj =file.files[0];
	if (window.createObjcectURL != undefined) {  
	    url = window.createOjcectURL(fileObj);  
	} else if (window.URL != undefined) {  
	    url = window.URL.createObjectURL(fileObj);  
	} else if (window.webkitURL != undefined) {  
	    url = window.webkitURL.createObjectURL(fileObj);  
	}
	return url;
}


function change1(){
	$("#dsg1").addClass("dsg");
	$("#dsg2").removeClass("dsg");
	var orderstatu = $("#change1").html();
	var detailid = $("#detailid").val();
	var data={
		statu:orderstatu,
		odetailid:detailid
	}
	$.post("retReason",data,function(data){
		$("#select").empty();
		$("#select").append("<option value='"+0+"'>请选择</option>");
		for(var i = 0 ;i<data.length;i++){
			$("#select").append("<option value='"+data[i].reason+"'>"+data[i].reason+"</option>");
		}
	}) 
}
function change2(){
	$("#dsg2").addClass("dsg");
	$("#dsg1").removeClass("dsg");
	var orderstatu = $("#change2").html();
	var detailid = $("#odetailid").val();
	var data={
			statu:orderstatu,
			odetailid:detailid
		}
	$.post("retReason",data,function(data){
		$("#select").empty();
		$("#select").append("<option value='"+0+"'>请选择</option>");
		for(var i = 0 ;i<data.length;i++){
			$("#select").append("<option value='"+i+1+"'>"+data[i].reason+"</option>");
		}
	}) 
}

</script>