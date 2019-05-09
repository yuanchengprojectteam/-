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
 <script type="text/javascript" src="js/jquery-2.1.4.js"></script> 

<!-- <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script> -->
<!--  <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
<
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
			
	<%@include file="PersonCenterLeft.jsp" %>
	
			
			<!--左边内容-->
			<div class="mod_main">
			<form  id="imgform"  method="post" enctype="multipart/form-data"  >
			<input type="hidden"  name="id" id="uid" value="1">
				<div class="jib_xinx_kuang">
					<div class="wt">
						<ul>
							<li><a href="ger_xinx.html">个人信息</a></li>
							<li class="dangq_hongx"><a href="header">设置头像</a></li>
							<li><a href="gengd_ger_xinx.html">更多个人信息</a></li>
						</ul>
					</div>
					<div class="wd">
					
						 <div class="up_avater">
						 	<div class="warp_tip">
						 	
						 		<div id="up_avater_btn" class="avater_btn" onclick="img.click()"  >+上传头像
						 			<input type="file" id="img" name="file" onchange="setSrc(this)" style="display:none" />
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
						 		<input type="button" value="保存" id="btn" class="save-btn" onclick="save()" >
						 		
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
 	
	var e0=document.getElementById("show0");
	var e1=document.getElementById("show1");
	var e2=document.getElementById("show2");
	var e3=document.getElementById("show3");
 	
 	function setSrc(obj){
 		var src1=getObjectURL(obj);
 		if(src1!=null){	
 			document.getElementById("btn").setAttribute('style', 'background-color:red');
 		}
 		e0.src=src1;
 		e1.src=src1;
 		e2.src=src1;
 		e3.src=src1;
 		
 	}
 	
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
 	
 	function save(){
 		var fdata=new FormData($("#imgform")[0]);
 		$.ajax({
 			url:'saveHeader',
 			type:'POST',
 			data:fdata,
 			contentType: false,
 			processData: false,
 			success:function(data){
 				e0.src=data;
 		 		e1.src=data;
 		 		e2.src=data;
 		 		e3.src=data;
 		 		$("img[name='header']").attr("src",data);
 			}
 		})
 	}
 		
 	
</script>
<%@ include file="AfterFoot.jsp"%>