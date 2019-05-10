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
<jsp:include page="../public/AfterHeader.jsp"></jsp:include>
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->
			<jsp:include page="../public/PersonCenterLeft.jsp"></jsp:include>
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

 
<jsp:include page="../public/AfterFoot.jsp"></jsp:include>
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