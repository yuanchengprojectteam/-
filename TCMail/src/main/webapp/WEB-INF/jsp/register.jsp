<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head>
<meta charset="utf-8">
<title>WangID通城——个人注册</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<script src="../../js/jquery-2.1.4.js" ></script>
<!--<script src="js/index.js" ></script>  --> 
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
<!-- 
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
 <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
 
</head>
<body>
<!--dengl-->
<div class="yiny">
	<div class="beij_center">
		<div class="dengl_logo">
			<img src="images/logo_1.png">
			<h1>欢迎注册</h1>
		</div>
	</div>
</div>
<div class="beij_center"> 
	<div class="ger_zhuc_beij">
		<div class="ger_zhuc_biaot">
			<ul>
				<li class="ger_border_color"><a href="toregister">个人注册</a></li>
				<i>丨</i>
				<li><a href="toapplybecomeshop">申请入驻</a></li>
				<p>我已经注册，现在就<a class="ftx-05 ml10" href="tologin">登录</a></p>
			</ul>
		</div>
		<div class="zhuc_biaod">
		<form action="register"  method="post">
			<div class="reg-items" >
              	<span class="reg-label">
                	<label for="J_Name">账号：</label>
              	</span>
              	<input   class="i-text" type="text"  name="account"  oninput="check(this.value)" />
              	<!--备注————display使用 inline-block-->
              	<div class="msg-box">
                	<div class="msg-box" style=" display: inline-block; " >
	                  	<div class="msg-weak" style="display: none;" id="message"> <i></i>
	                    	<div class="msg-cont">6-18个字符，支持字母、数字及“_”组合</div>
	                  	</div>
                	</div>
                	<div class="msg-weak err-tips"  style="display: none;" id="message1"><div>请输入用户名</div></div>
            	</div>
            	<span class="suc-icon"></span>
            </div>
            <div class="reg-items" >
              	<span class="reg-label">
                	<label for="J_Name">设置密码：</label>
              	</span>
              	<input   class="i-text" type="password" name="pwd" id="pwd" oninput="check1(this.value)"   />
              	<!--备注————display使用 inline-block-->
              	<div class="msg-box">
                	<div class="msg-box" style="display: inline-block;">
	                  	<div class="msg-weak" style="display: none;" id="message2"> <i></i>
	                    	<div class="msg-cont">键盘大写锁定已打开，请注意大小写!</div>
	                  	</div>
                	</div>
                	<div class="msg-weak err-tips"  style="display:none;" id="message3"><div>请输入密码</div></div>
                	<div class="msg-weak err-tips"  style="display:none;" id="message4"><div>请以字母开头，长度在6-18之间，只能包含字符、数字和下划线</div></div>
            	</div> 
            </div>
            <div class="reg-items" >
              	<span class="reg-label">
                	<label for="J_Name">确认密码：</label>
              	</span>
              	<input   class="i-text" type="password" disabled="true" id="repwd"  oninput="check2(this.value)" > 
              	<!--备注————display使用 inline-block-->
              	<div class="msg-box">
              		<div class="msg-weak err-tips"  style="display:none;" id="message6"><div>请输入确认密码</div></div>
                	<div class="msg-weak err-tips"  style="display: none;" id="message5"><div>密码不一样</div></div>
            	</div> 
            </div>
            <div class="reg-items" >
              	<span class="reg-label">
                	<label for="J_Name">手机号码：</label>
              	</span>
              	<input   class="i-text" type="text" id="phone" name="phone" oninput="check3(this.value)" >
              	<!--备注————display使用 inline-block-->
              	<div class="msg-box"> 
                	<div class="msg-weak err-tips"  style="display:none;" id="message7"><div>手机号不能为空</div></div>
                	<div class="msg-weak err-tips"  style="display:none;" id="message8"><div>请输入有效的手机号码，需是11位！</div></div>
                	<div class="msg-weak err-tips"  style="display:none;" id="message9"><div>手机号只能是数字</div></div>
            	</div> 
            </div> 
            <div class="reg-items" >
              	<span class="reg-label">
                	<label for="J_Name">验证码：</label>
              	</span>
              	<input   class="i-text i-short" disabled="true" type="text" id="Code" oninput="check4(this.value)" />
              	<div class="check check-border" style="position:relative;left:0">
                   	<a class="check-phone" style="padding:11px 10px 14px 10px;*line-height:60px;"   onclick="send()">获取短信验证码</a>
                  	<span class="check-phone disable" style="display: none;"><em>60</em>秒后重新获取</span>
                  <a class="check-phone" style="display: none;padding:11px 10px 14px 10px" onclick="send()">重新获取验证码</a>
                </div>
              	<!--备注————display使用 inline-block-->
              	<div class="msg-box"> 
                	<div class="msg-weak err-tips"  style="display:none;" id="message10"><div>请输入短信验证码</div></div>
                	<div class="msg-weak err-tips"  style="display:none;" id="message11"><div>验证码错误</div></div>
            	</div> 
            </div>
            <div class="reg-items" >
              	<span class="reg-label">
                	<label for="J_Name"> </label>
              	</span> 
              	<div class="dag_biaod">
              		<input type="checkbox" value="english" id="checkb" checked="checked">
              		阅读并同意
              		<a href="#" class="ftx-05 ml10" >《wangdi通城用户注册协议》</a>
              		<a href="#" class="ftx-05 ml10">《隐私协议》</a>
              	</div>
            </div>
            <div class="reg-items" >
              	<span class="reg-label">
                	<label for="J_Name"> </label>
              	</span>
              	<input class="reg-btn" value="立即注册" type="button" id="dengl" disabled="true" onclick="dengl.form.submit()">
            </div>
           </form>
		</div>
        <div class="xiaogg">
            <img src="images/cdsgfd.jpg">
        </div>
	</div>
</div>


<div class="jianj_dib jianj_dib_1">
	<div class="beia_hao">
		<p>京ICP备：14012449号 黔ICP证：B2-20140009号  </p>
		<p class="gonga_bei">京公网安备：11010602030054号</p> 
	</div>
</div>

</body>
<script type="text/javascript">

	
	function check(name){
		var name=name.trim();
		var message1=document.getElementById('message1');
		var message=document.getElementById('message');
			
		if(name.length==0){
			message1.setAttribute('style', 'display: inline-block;');
			message.setAttribute('style', 'display: none;');
			return ;
		}   
	    var reg=/^\w{5,17}$/;     
	    if(!reg.test(name)){ 
	    	
			message.setAttribute('style', 'display: inline-block;');
			message1.setAttribute('style', 'display: none;');
	       return;
	    }  
	    message1.setAttribute('style', 'display: none;');
		message.setAttribute('style', 'display: none;');
	    $.ajax({
	   		 url:"checkAccount", 					//url地址
	   		 data:"account="+name,   			 // 将uname=张三传递给后台
	   		 method:"post",   				 //传输方式，get / post
	   		 success:function(result){ //success为服务器响应成功后传回的数据。  result为后台传回来的数据	
	   			var e= document.getElementById("message");
	   			 if(result=='yes'){
		   		 	 e.innerHTML="该用户名可用"
	   			 }else{
	   				e.innerHTML="该用户名不可用"
	   			 }
	   			e.setAttribute('style', 'display: inline-block;');
	   		 
	   	    }
	   	 });
	}
	function  check1(pwd){
		var pwd=pwd.trim();
		var message2=document.getElementById('message2');
		var message3=document.getElementById('message3');
		var message4=document.getElementById('message4');
		var repwd=document.getElementById('repwd');
		if(pwd.length==0){
			message3.setAttribute('style', 'display: inline-block;');
			message2.setAttribute('style', 'display: none;');
			message4.setAttribute('style', 'display: none;');
			return;
		}
		var arg0=/^(\w[A-Z]{1}\w*\s?)*$/g;
		if(console.log(arg0.test(pwd))){
			message3.setAttribute('style', 'display: none;');
			message2.setAttribute('style', 'display: inline-block;');
			message4.setAttribute('style', 'display: none;');
			return;
		}
		var reg=/^[a-zA-Z]\w{5,17}$/;     
        if(!reg.test(pwd)){ 
        	message2.setAttribute('style', 'display: none;');
        	message3.setAttribute('style', 'display: none;');
        	message4.setAttribute('style', 'display: inline-block;');
        	return;
        }  
        message2.setAttribute('style', 'display: none;');
    	message3.setAttribute('style', 'display: none;');
        message4.setAttribute('style', 'display: none;');
        repwd.disabled =false;
	}
	function check2(repwd){
		var repwd=repwd.trim();
		var pwd=document.getElementById('pwd').value.trim();
		var message5=document.getElementById('message5');
		var message6=document.getElementById('message6');
		if(repwd.length==0){
			message6.setAttribute('style','display:inline-block;');
			message5.setAttribute('style','display:none;');
			return;
		}
		if(repwd != pwd){
			message6.setAttribute('style','display:none;');
			message5.setAttribute('style','display:inline-block;');
			return;
		}
		message5.setAttribute('style','display:none;');
		message6.setAttribute('style','display:none;');
	}
    function  check3(phone){
    	var  phone=phone.trim();
    	var  message7=document.getElementById('message7');
    	var  message8=document.getElementById('message8');
    	var  message9=document.getElementById('message9');
    	var Code=document.getElementById('Code'); 
    	if(phone.length==0){
    		message7.setAttribute('style','display:inline-block;');
    		message8.setAttribute('style','display:none;');
    		message9.setAttribute('style','display:none;');
    		return;
    	}
    	if(phone.length!=11) 
	   	 { 
    		message7.setAttribute('style','display:none;');
    		message8.setAttribute('style','display:inline-block;');
    		message9.setAttribute('style','display:none;');
	   	 	return ; 
	   	 } 
	
	   	 var myreg = /^\d{11}$/; 
	   	 if(!myreg.test(phone)) 
	   	 { 
	   		message7.setAttribute('style','display:none;');
    		message8.setAttribute('style','display:none;');
    		message9.setAttribute('style','display:inline-block;');
	   	 	return ; 
	   	 }
	   	
	   	   $.ajax({
	   		   		 url:"checkPhone", 					//url地址
	   		   		 data:"phone="+phone,   			 // 将uname=张三传递给后台
	   		   		 method:"post",   				 //传输方式，get / post
	   		   		 success:function(result){ //success为服务器响应成功后传回的数据。  result为后台传回来的数据
		   		   		var e= document.getElementById("message7");
			   			 if(result=='yes'){
				   		 	 e.innerHTML="该号码可用"
			   			 }else{
			   				e.innerHTML="该号码不可用"
			   			 }
			   			e.setAttribute('style', 'display: inline-block;');
	   		   	    }
	   		   	 });
			
	   	Code.disabled=false;
    	message7.setAttribute('style','display:none;');
    	message8.setAttribute('style','display:none;');
		message9.setAttribute('style','display:none;');
		
    	
    }
    var  code='';
    function  send(){
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
    function  check4(Code){
    	var code1=Code.trim();
    	var message10=document.getElementById('message10');
		var message11=document.getElementById('message11');
		var checkbox=document.getElementById('checkb');
		var button=document.getElementById('dengl');
		if(code1.length==0){
			message10.setAttribute('style','display:inline-block;');
			message11.setAttribute('style','display:none;');
			return;
		}
		if(code1 != code){
			message10.setAttribute('style','display:none;');
			message11.setAttribute('style','display:inline-block;');
			return;
		}
		message10.setAttribute('style','display:none;');
		message11.setAttribute('style','display:none;');
		code='';
		if(checkbox.checked){
			button.disabled=false;
		}
    }
</script>
</html>
