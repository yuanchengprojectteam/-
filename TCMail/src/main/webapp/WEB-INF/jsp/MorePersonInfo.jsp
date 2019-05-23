<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
<meta charset="utf-8">
<title>WangID通城——更多个人信息</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!--  <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
<!--  <script type="text/javascript" src="js/select.js"></script> -->
</head>
<body>
<!--头部--> 

<jsp:include page="../public/AfterHeader.jsp"></jsp:include>
<!---->
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->

			<jsp:include page="PersonCenterLeft.jsp"></jsp:include> 
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
					<form  action="saveMoreInformation" method="post">
					<input type="hidden" name="id" value="${loginedUser.id }">
						<div class="user_set"> 
                            <div class="item_meic">
                                <span class="label_meic">婚姻状况：</span>
                                <div class="fl_e"> 
                                	<input type="hidden" name="marrayInformation" id="marrayInformation"  value="${loginedUser.marry }" />
                                	<input type="radio" name="marry" id="notmarry" class="jdradio" value="未婚">
                                    <label class="mr10">未婚</label>
                                    <input type="radio" name="marry" id="married" class="jdradio" value="已婚">
                                    <label class="mr10">已婚</label>
                                    <input type="radio" name="marry" id="unknow" class="jdradio" value="保密">
                                    <label class="mr10">保密</label>
                                </div>
                            </div>
                            <div class="item_meic">
                                <span class="label_meic">家庭收入：</span>
                                <div class="fl_e"> 
	                            	<select class="form_select" name="income" id="income">                            
		                            	<option value="uknow">请选择</option>
		                            	<option value="5000元以下">5000元以下</option>
		                            	<option value="5000-10000元">5000-10000元</option>
		                            	<option value="10000-15000元">10000-15000元</option>
		                            	<option value="15000-20000元">15000-20000元</option>
		                            	<option value="20000元以上">20000元以上</option>
	                            	</select>
                                </div>
                            </div>
                            <div class="item_meic">
                                <span class="label_meic">家庭成员数：</span>
                                <div class="fl_e">
                                     <select class="form_select" name="familynum" id="familynum">                            
		                            	<option value="0">请选择</option>
		                            	<option value="1">1人</option>
		                            	<option value="2">2人</option>
		                            	<option value="3">3人</option>
		                            	<option value="4">4人</option>
		                            	<option value="5">5人</option>
		                            	<option value="6">6人</option>
	                            	</select>
                                </div>
                            </div>
                            <div class="item_meic">
                                <span class="label_meic">学历：</span>
                                <div class="fl_e">
                                     <select class="form_select" name="edu" id="edu">                            
		                            	<option id="uknow"  value="uknow">请选择</option>
		                            	<option id="junior" value="junior">初中及以下</option>
		                            	<option id="senior" value="senior">高中</option>
		                            	<option id="specialist" value="specialist">专科</option>
		                            	<option id="bachelor" value="bachelor">本科</option>
		                            	<option id="master" value="master">研究生及以上</option> 
	                            	</select>
                                </div>
                            </div>
                            <div class="item_meic">
                                <span class="label_meic">职业：</span>
                                <div class="fl_e">
                                     <select class="form_select select_work" name="job" id="job">
	                                     <option  value="uknow">请选择</option>
	                                     <option value="企业雇主/企业经营者">企业雇主/企业经营者</option>
	                                     <option value="高级行政人员(总裁、总经理、董事等)">高级行政人员(总裁、总经理、董事等)</option>
	                                     <option value="中层管理人员(总监、经理、主任等)">中层管理人员(总监、经理、主任等)</option>
	                                     <option value="专业人士(律师、工程师、医生、教师等)">专业人士(律师、工程师、医生、教师等)</option>
	                                     <option value="办公人员(一般文员、业务、办事员等)">办公人员(一般文员、业务、办事员等)</option>
	                                     <option value="工人/蓝领">工人/蓝领</option>
	                                     <option value="公务员/事业单位员工">公务员/事业单位员工</option>
	                                     <option value="自由职业者">自由职业者</option>
	                                     <option value="军人">军人</option>
	                                     <option value="学生">学生</option>
	                                     <option value="退休">退休</option>
	                                     <option value="家庭主妇">家庭主妇</option>
	                                     <option value="其他">其他</option>
                                     </select>
                                </div>
                            </div>
                            <div class="item_meic">
                                <span class="label_meic">关注的商品：</span>
                                <div class="fl_e">
                                     <ul class="form-ul" id="dddv">
	                                     <c:forEach items="${types}"  var="t">
	       
									      <li onclick="document.getElementById('${t.id }').click()">
									      			${t.name}
									      <input type="checkbox" id="${t.id }" name="favorite" value="${t.id }"  />
									      </li>
										 </c:forEach>
                                     </ul>
                                </div>
                            </div>
                            <div class="item_meic">
                                <span class="label_meic"></span>
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
	 var marryvalue=document.getElementById("marrayInformation").value;
	 if(""==marryvalue){
	 	document.getElementById("unknow").checked=true;
	 }else if("未婚"== marryvalue){
	 	document.getElementById("notmarry").checked=true;
	 }else if("已婚" == sexvalue){
	 	document.getElementById("married").checked=true;
	 }else{
	 	document.getElementById("unknow").checked=true;
	 }

 
	$(document).ready(function(){
	  $("#dddv li").click(function(){
	   if( $(this).hasClass("active")){
	 $(this).removeClass("active")
	}else{$(this).addClass("active")}

	  });
	});
	$(function(){
		if('${loginedUser.income}' == null){
			$("#income option[value=uknow]").attr("selected", true);
		}else{
			$("#income option[value='${loginedUser.income}']").attr("selected", true);//根据value选中
		}
	 	  
	 })
	 $(function(){
		if('${loginedUser.familynum}' == null){
			$("#familynum option[value=0]").attr("selected", true);
		}else{
			$("#familynum option[value='${loginedUser.familynum}']").attr("selected", true);//根据value选中
		}
	 	  
	 })
	
	$(function(){
		if('${loginedUser.edu}' == null){
			$("#edu option[value=uknow]").attr("selected", true);
		}else{
			$("#edu option[value='${loginedUser.edu}']").attr("selected", true);//根据value选中
		}
	 	  
	 })
	 $(function(){
		if('${loginedUser.job}' == null){
			$("#job option[value=uknow]").attr("selected", true);
		}else{
			$("#job option[value='${loginedUser.job}']").attr("selected", true);//根据value选中
		}
	 	  
	 })
	 $(function(){
		var favtypes='${loginedUser.favtypeid}';
		var fav=favtypes.split(",");
		if(fav.length >0){
			for(var i=0;i<fav.length-1;i++){
				document.getElementById(fav[i]).checked=true;
			}
		}
	 })
</script>
<jsp:include page="../public/AfterFoot.jsp"></jsp:include>