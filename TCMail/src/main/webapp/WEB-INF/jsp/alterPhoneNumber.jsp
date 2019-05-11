<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
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
 
<jsp:include page="../public/AfterHeader.jsp"></jsp:include>
<!---->
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->
				<jsp:include page="../public/PersonCenterLeft.jsp"></jsp:include>
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="shand_piaot">修改手机验证</div>
					<div class="stepflex1">
					 	<dl class="normal doing" id="1">
                            <dt class="s-num">1</dt>
                            <dd class="s-text">修改号码<s></s><b></b></dd>
                        </dl> 
					 	<dl class="normal " id="2">
                            <dt class="s-num">2</dt>
                            <dd class="s-text">完成<s></s><b></b></dd>
                        </dl>
					</div>
					<div class="savebox">
						<p>
							<span class="letit">手机号码：</span>
							<span class="hideMobile"><input class="itxt" id="phone" name="phone" type="text"></span>
						</p>
						<p>
							<span class="letit">填写手机验证码：</span>
							<span class="hideMobile"><input class="itxt" id="authCode" type="text"></span>
							<span><a href="#" class="btn_10" onclick="send()"><s></s>获取短信校验码</a></span>
						</p>
						<p>
							<span class="letit"></span>
							<span class="hideMobile"><a href="#" class="xiay_b" onclick="updatePhone()">确认修改</a></span> 
						</p>
					</div>
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div> 
<jsp:include page="../public/AfterFoot.jsp"></jsp:include>
</body>
<script type="text/javascript">
var  code='';
function send(){
	code='';
	 var str = document.getElementById('phone').value.trim(); 
	 for(var i=0;i<4;i++){
	    code+=Math.floor(Math.random()*10);
	 }
	 $.ajax({
		 url:"send", 					//url地址
		 data:"code="+code+"&phone="+str,   			 // 将uname=张三传递给后台
		 method:"post",   				 //传输方式，get / post
		 success:function(result){ //success为服务器响应成功后传回的数据。  result为后台传回来的数据	 	 
	    }
	 });
	
}
function  updatePhone(){
	var recode=document.getElementById("authCode").value;
	var str = document.getElementById('phone').value; 
	if(recode != code){
		alert("验证码输入错误");
	}else{
		$.ajax({
			 url:"PhoneUpdate", 					//url地址
			 data:"phone="+str+"&id="+${loginedUser.id},   			 // 将uname=张三传递给后台
			 method:"post",   				 //传输方式，get / post
			 success:function(result){ //success为服务器响应成功后传回的数据。  result为后台传回来的数据	 	 
				 $('#1').removeClass("normal doing").addClass("normal ");
		    	$('#2').removeClass("normal ").addClass("normal doing");
		    	$("#phone").val("");
		    	$("#authCode").val("");
			 }
		 });
	}
	code='';
}

</script>
</html>