<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>WangID通城——登录</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  --> 
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
<!-- 
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
 <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
 
	<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.7.6/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.7.6/themes/icon.css">
    <script type="text/javascript" src="js/jquery-easyui-1.7.6/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.7.6/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.7.6/locale/easyui-lang-zh_CN.js"></script>

</head> 
<body>
<!--dengl-->
<div class="beij_center">
	<div class="dengl_logo">
		<img src="images/logo_1.png">
		<h1>欢迎登录</h1>
	</div>
</div>
<div class="dengl_beij">

	<div class="banner_xin">
		<img src="images/ss.jpg">
	</div>
	<div class="beij_center dengl_jvz"> 
		<div class="login_form">
			<div class="login_tab">
				<h2>欢迎登录</h2>
				<div class="dengl_erwm">
					<a href="#"><img src="images/er_wm.png"></a>
					<div class="tanc_erwm_kuang">
						<img src="images/mb_wangid.png">
						<div class="qrcode_panel">
                            <ul>
                                <li class="fore1">
									<span>打开</span>
                                    <a href="#" target="_blank"> <span class="red">手机通城</span></a>
                                </li>
								<li>扫描二维码</li>
                            </ul>
                        </div> 
					</div>
				</div> 
			</div>
			<%
				Cookie[]  c=request.getCookies();
				if(c !=null) {
					for(Cookie  co:c) {
						if("name".equals(co.getName())) {
							String  name=co.getValue();
							request.setAttribute("name", name);
						}
						if("pwd".equals(co.getName())) {
							String  pwd=co.getValue();
							request.setAttribute("pwd", pwd);
						}
					}
				}
			%>
			${msg}
			<form:form action="login" method="post" id="loginform"
				  modelAttribute="user">
			<div class="kengl_kuang">
				<div class="txt_kuang">
					<form:input path="account" id="account" class="itxt" placeholder="帐号*" value="${name}"/><br/>
					<form:errors path="account"></form:errors><br/>
					<form:password path="pwd" class="itxt"  placeholder="密码*" value="${pwd }"/><br>
					<form:errors path="pwd"></form:errors><br>
				</div>
				<div class="remember">
					<div class="fl">
						<input type="checkbox" name="isRemerber" checked="checked">
						<label for="autoLoginFlag">记住密码</label>
					</div>
					<div class="fr">
						<a href="#" class="fl" target="_blank" title="忘记密码" onclick="w()">忘记密码?</a> 
					</div>
				</div>
				<a href="#" tabindex="5" class="btnnuw" onclick="loginform.submit()"> 登录 </a>
			</div>
			
			<div class="corp_login">
				<div class="mingb_shoq"><a href="#">名榜授权登录！</a></div>
				<div class="regist_link"><a href="toregister" target="_blank"><b></b>立即注册</a></div>
			</div>
			</form:form> 
		</div> 
	</div>
</div>


<div id="changePwd" class="easyui-window" 
		title="忘记密码" data-options="iconCls:'icon-save',closed:true" 
		style="width:400px;height:275px;padding:5px;">
		<div class="easyui-layout" data-options="fit:true">
			<div data-options="region:'center'" style="padding:10px;text-align: center">
				<form id="fm" method="post" action="change">
	    			<span  class="lab">电话：</span><input id="phone"  class="easyui-textbox" name="phone">
	    			<a onclick="send()">点击获取验证码</a><br>
	    			<span  class="lab">验证码：</span><input id="p3" class="easyui-textbox" name="iCode"><br>
	    			<span  class="lab">新密码：</span><input type="password" id="p1" class="easyui-textbox" name="nPwd"><br>
	    			<span  class="lab">确认密码：</span><input type="password" id="p2" class="easyui-textbox" name="rePwd"><br>
	    		</form>
			</div>
			<div data-options="region:'south',border:false" style="text-align:right;padding:5px 0 0;">
				<a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" href="javascript:void(0)" onclick="change()" style="width:80px">修改</a>
				<a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" href="javascript:void(0)" onclick="$('#changePwd').window('close')" style="width:80px">取消</a>
			</div>
		</div>
	</div>


<div class="jianj_dib">
	<div class="beia_hao">
		<p>京ICP备：14012449号 黔ICP证：B2-20140009号  </p>
		<p class="gonga_bei">京公网安备：11010602030054号</p> 
	</div>
</div>

</body>
<script type="text/javascript">
var phone;
var code='';
function  w(){
	 $.ajax({
		 url:"getphone", 					//url地址
		 data:"account="+document.getElementById('account').value.trim(),   			 // 将uname=张三传递给后台
		 method:"post",   				 //传输方式，get / post
		 success:function(result){   			//success为服务器响应成功后传回的数据。  result为后台传回来的数据								
	      	 phone=result;
	    }
	 });
	$('#changePwd').window('open');
	
}
function  send(){
	 var str = document.getElementById('phone').value.trim(); 
	 if(str!==phone){
		 alert("请输入注册的手机号");
		 return false;
	 }
	 if(str.length==0) 
	 { 
	 alert('手机号码不能为空！');
	 return false; 
	 } 
	 if(str.length!=11) 
	 { 
	 alert('请输入有效的手机号码，需是11位！');
	 return false; 
	 } 

	 var myreg = /^\d{11}$/; 
	 if(!myreg.test(str)) 
	 { 
	 alert('请输入有效的手机号码！'); 
	 return false; 
	 }
	 
	 for(var i=0;i<4;i++){
	    code+=Math.floor(Math.random()*10);
	 }
	 $.ajax({
		 url:"send?phone="+str, 					//url地址
		 data:"code="+code,   			 // 将uname=张三传递给后台
		 method:"post",   				 //传输方式，get / post
		 success:function(result){   			//success为服务器响应成功后传回的数据。  result为后台传回来的数据								
	      	
	    }
	 });
	
}
function change()     
{     
		var code1=document.getElementById('p3').value.trim();
		if(code!=code1){
			alert("验证码输入错误");
			code1.value="";
			code='';
		}
        var str = document.getElementById('p1').value.trim();    
        if(str.length!=0){    
        var reg=/^[a-zA-Z]\w{5,17}$/;     
        if(!reg.test(str)){    
            alert("对不起，请以字母开头，长度在6-18之间，只能包含字符、数字和下划线");//请将“字符串类型”要换成你要验证的那个属性名称！    
        }    
        }   
        var str1 = document.getElementById('p2').value.trim();        
        if( str1!=str){    
            alert("两次密码不一致，请重新输入！");//请将“字符串类型”要换成你要验证的那个属性名称！    
        }  else{
        	$('#fm').form('submit',{
    			success:function(data){
    				str='';
    				str1='';
    				$('#changePwd').window('close');
    			}
    		});
        }    
}  
</script>
</html>
