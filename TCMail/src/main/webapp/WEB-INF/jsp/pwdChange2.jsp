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
 
<%@ include file="../public/AfterHeader.jsp" %>
<!---->
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->
			<jsp:include page="PersonCenterLeft.jsp" ></jsp:include>
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="shand_piaot">修改手机验证</div>
					<div class="stepflex">
					 	<dl class="normal doing">
                            <dt class="s-num">1</dt>
                            <dd class="s-text">验证身份<s></s><b></b></dd>
                        </dl> 
					 	<dl class="normal doing">
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
							<span class="letit">填写新密码：</span>
							<span class="hideMobile"><input class="itxt" id="newpwd"  name="pwd" type="password"></span>
						</p>
						<p>
							<span class="letit">确认新密码：</span>
							<span class="hideMobile"><input class="itxt" oninput="changeColor(this)" id="againpwd" type="password"></span>
						</p>
						<p>
							<span class="letit"></span>
							<span class="hideMobile"><a onclick="chePwd()" id="queren" class="xiay_b">确认修改</a></span> 
						</p>
					</div>
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div> 
<%@ include file="../public/AfterFoot.jsp"%>

</body>
<script type="text/javascript">
	function chePwd(){
		var a = $("#newpwd").val();
		var b = $("#againpwd").val();
		//alert(a+":"+b);
		if(a != b){
			alert("两次输入的密码不一致！！");
			return;
		}
		$.ajax({
			url:"pwdChange",
			type:"post",
			data:{"pwd":a},
			cache:false,
			success:function(data){
				alert(data);
			}
		});
	}
	function changeColor(obj){
		var newpwd= $("#newpwd").val();
		if(newpwd!=null&&obj.value!=null&&newpwd.length>=6&&obj.value.length>=6){
			$("#queren").css("background-color","red");
			$("#queren").css("color","black");
		}
	}

</script>

</html>