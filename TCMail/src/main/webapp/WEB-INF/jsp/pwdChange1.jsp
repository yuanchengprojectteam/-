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
					<div class="shand_piaot">修改密码验证</div>
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
				<form action="pwdChange2" method="post" id="f">
					<div class="savebox">
						<p>
							<span class="letit">手机号码：</span>
							<span class="hideMobile" id="phone" >${phone }</span>
							<span class="ml20">若当前号码无效或无法接收验证码，请拨打客服电话：400-6677-937</span>
						</p>
						<p>
							<span class="letit">填写手机验证码：</span>
							<span class="hideMobile"><input class="itxt" oninput="changeColor(this)" name="authCode" type="text"></span>
							<span><a onclick="getCode()" class="btn_10">获取短信校验码</a></span>
						</p>
						<p>
							<span class="letit"></span>
							<span class="hideMobile"><a onclick="f.submit()" id="btn" class="xiay_b">下一步</a></span> 
						</p>
					</div>
				</form>
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div> 
<jsp:include page="../public/AfterFoot.jsp"></jsp:include>

</body>
<script type="text/javascript">
	function getCode(){
		var phone = $("#phone").text();
		//alert(phone);
		var code = '';
		for(var i=0;i<4;i++){
		    code+=Math.floor(Math.random()*10);
		 }
		//alert(code);
		$.ajax({
			url:"getCode",
			type:"post",
			data:{"code":code,"phone":phone},
			cache:false,
			success:function(data){
				alert("验证码成功发送。。");
			}
			
		});
	}
	
	function changeColor(obj){
		if(obj.value!=null&&obj.value.length==4){
			$("#btn").css("background-color","red");
			$("#btn").css("color","white");
		}
	}
	/* function next(){
		var code = $("#authCode").val();
		alert(code);
		$.ajax({
			url:"verificationCode",
			type:"post",
			data:{"atuoCode":code},
			cache:false,
		});
	}
 */

</script>

</html>