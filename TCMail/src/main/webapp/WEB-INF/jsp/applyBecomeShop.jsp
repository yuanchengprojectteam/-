<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head>
<meta charset="utf-8">
<title>WangID通城——个人注册</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<script src="../../js/jquery-2.1.4.js" ></script>
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  --> 
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
				<li><a href="toregister">个人注册</a></li>
				<i>丨</i>
				<li class="ger_border_color"><a href="toapplybecomeshop">申请入驻</a></li>
				<p>我已经入驻，现在就<a class="ftx-05 ml10" href="tologin">登录</a></p>
			</ul>
		</div>
		<div class="zhuc_biaod zhuc_biaod_liuy">
			<form action="shopregister" method="post" class="messages">
				<h2>联系人信息</h2>
			     <div class="messlist">
			      <label><em>*</em> 联系人姓名</label>
			      <input type="text" placeholder="姓名" id="realname" name="realname" oninput="check(this.value)" />
			      <div class="clears"></div>
			      <div class="msg-box"> 
                	<div class="msg-weak err-tips"  style="display:none;" id="message"><div>姓名不能为空</div></div>
                	<div class="msg-weak err-tips"  style="display:none;" id="message1"><div>请输入真实姓名</div></div>
            	</div> 
			     </div>
			     <div class="messlist"> 
			      <label><em>*</em> 手机号码</label>
			      <input type="text" placeholder="手机号码" id="phone" name="phone" oninput="check3(this.value)" />
			      <div class="clears"></div>
			      <div class="msg-box"> 
                	<div class="msg-weak err-tips"  style="display:none;" id="message7"><div>手机号不能为空</div></div>
                	<div class="msg-weak err-tips"  style="display:none;" id="message8"><div>请输入有效的手机号码，需是11位！</div></div>
                	<div class="msg-weak err-tips"  style="display:none;" id="message9"><div>手机号只能是数字</div></div>
            	</div> 
			     </div>
			     <div class="messlist">
			      <label><em>*</em> 联系邮箱</label>
			      <input type="text" placeholder="邮箱" id="email" name="email" oninput="check1(this.value)" value="${loginedUser.email }" />
			      <div class="clears"></div>
			      <div class="msg-box"> 
                	<div class="msg-weak err-tips"  style="display:none;" id="message2"><div>邮箱不能为空</div></div>
                	<div class="msg-weak err-tips"  style="display:none;" id="message3"><div>请输入有效的邮箱号！</div></div>
            	</div> 
			     </div>
			     <div class="messlist">
			      <label><em>*</em> 所属行业</label>
			      <input type="text" placeholder="所属行业" name="type"/>
			      <div class="clears"></div>
			     </div>
			     <div class="messlist"> 
			      <label><em>*</em> 店铺名称</label>
			      <input type="text" placeholder="店铺名称" id="name" name="name" oninput="check2(this.value)"/>
			      <div class="clears"></div>
			      <div class="msg-box"> 
                	<div class="msg-weak err-tips"  style="display:none;" id="message4"><div>店铺名称不能为空</div></div>
            	</div> 
			     </div>
			     <div class="messlist textareas">
			      <label><em>*</em> 商铺地址</label>
			      <input type="text" placeholder="商铺地址" id="addr" name="addr" oninput="check6(this.value)"></input>
			      <div class="msg-box"> 
                	<div class="msg-weak err-tips"  style="display:none;" id="message5"><div>商铺地址不能为空</div></div>
            	</div>
            	<div class="clears"></div>
			     </div>
			     <div class="messlist textareas">
			      <label><em>*</em> 详情内容</label>
			      <textarea placeholder="详情内容"  name="describe"></textarea>
			      <div class="clears"></div>
			     </div>
			     <div class="messlist yzms">
			      <label><em>*</em> 验证码</label>
			      <input type="text" placeholder="验证码" id="rcode" name="code" oninput="check4(this.value)"/>
			      <a onclick="send()">点击获取验证码</a>
			      <div class="clears"></div>
			      <div class="msg-box"> 
                	<div class="msg-weak err-tips"  style="display:none;" id="message10"><div>验证码不能为空</div></div>
                	<div class="msg-weak err-tips"  style="display:none;" id="message11"><div>验证码错误</div></div>
                	
            	</div>
			     </div>
			     <div class="messsub">
			      <input class="reg-btn" type="submit"  value="提交"/> 
			     </div>
			</form>	
			<div class="fuw_teh_kuang">
				<h2>联系人信息</h2>
				<ul>
					<li>1.大批采购特价优惠</li>
					<li>2.一站式购齐订购服务</li>
					<li>3.灵活的支付方式</li>
					<li>4.优质配送服务</li>
					<li>5.无忧售后服务</li>
				</ul>
				<h2>联系人信息</h2>
				<ul>
					<li>1.直接拨打电话：400-6677-937</li>
					<li>2.服务邮箱：Ask@wangid.com</li> 
				</ul>
			</div>
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
function  check(realname){
	var  realname=realname.trim();
	var  message=document.getElementById('message');
	var  message1=document.getElementById('message1');
	if(realname.length==0){
		message.setAttribute('style','display:inline-block;');
		message1.setAttribute('style','display:none;');
		return;
	}
	var myreg =/^[\u4e00-\u9fa5]+$/; 
   	 if(!myreg.test(realname)) 
   	 { 
   		message.setAttribute('style','display:none;');
		message1.setAttribute('style','display:inline-block;');
   	 	return ; 
   	 }
	message.setAttribute('style','display:none;');
	message1.setAttribute('style','display:none;');
}
function  check1(email){
	var  email=email.trim();
	var  message2=document.getElementById('message2');
	var  message3=document.getElementById('message3');
	if(email.length==0){
		message2.setAttribute('style','display:inline-block;');
		message3.setAttribute('style','display:none;');
		return;
	}
	var myreg =/^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/; 
   	 if(!myreg.test(email)) 
   	 { 
   		message2.setAttribute('style','display:none;');
		message3.setAttribute('style','display:inline-block;');
   	 	return ; 
   	 }
	message2.setAttribute('style','display:none;');
	message3.setAttribute('style','display:none;');
}
function  check2(name){
	var  name=name.trim();
	var  message4=document.getElementById('message4');
	if(name.length==0){
		message4.setAttribute('style','display:inline-block;');
		return;
	}
	message4.setAttribute('style','display:none;');
}
function  check6(addr){
	var  addr=addr.trim();
	var  message5=document.getElementById('message5');
	if(addr.length==0){
		message5.setAttribute('style','display:inline-block;');
		return;
	}
	message5.setAttribute('style','display:none;');
}
function  check3(phone){
	var  phone=phone.trim();
	var  message7=document.getElementById('message7');
	var  message8=document.getElementById('message8');
	var  message9=document.getElementById('message9'); 
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
	   		 	 e.innerHTML="请输入注册账号时的手机号";
	   		 	e.setAttribute('style', 'display: inline-block;');
  			 }else{
  				e.setAttribute('style', 'display: none;');
  			 }
  			
	   	    }
	   	 });
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
function  check4(rcode){
	var code1=rcode.trim();
	var message10=document.getElementById('message10');
	var message11=document.getElementById('message11');
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
}
</script>
</html>
