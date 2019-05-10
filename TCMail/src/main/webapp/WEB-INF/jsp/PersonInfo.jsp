<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
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
					<div class="wt">
						<ul>
							<li class="dangq_hongx"><a href="toPersonmessage">个人信息</a></li>
							<li><a href="header">设置头像</a></li>
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
                                    <input type="radio" name="sex" id="unknow" class="jdradio" value="保密">
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

</script>
<jsp:include page="../public/AfterFoot.jsp"></jsp:include>