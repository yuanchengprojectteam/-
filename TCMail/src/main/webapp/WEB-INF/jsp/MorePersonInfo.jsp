<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	//判断有没有用户列表数据，如果没有这跳转到user.s?op=query
	/* if(request.getAttribute("types")==null){
		
		request.getRequestDispatcher("selectAll").forward(request, response);
	} */
	
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
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

<%@ include file="AfterHeader.jsp" %>
<!---->
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->
			<div class="tod_tongc_zuoc">
				<div class="zuoc_toux">
					<div class="toux_kuang">
						<div class="userImage">
							<div class="myGome_userPhoto">
								<img src="images/toux.png">
								<a class="edit_photo_bitton" href="profile" target="_blank">编辑</a>
							</div>
						</div>
						<div class="user_name_Level">
							<p class="user_name" title="${loginedUser.name }">${loginedUser.name }</p>
							<p class="userLevel">会员：<span class="levelId icon_plus_nickname"></span></p> 
						</div>
					</div>
					<div class="userInfo_bar">
						<span>资料完成度</span>
						<span class="userInfo_process_bar"><em class="active_bar" style="width: 40px;"> 20%</em></span>
						<a href="toPersonmessage" target="_blank">完善</a>
					</div>
					<div class="myGome_accountSecurity">
						<span class="fl_ee" style="margin-top:2px;">账户安全 <em class="myGome_account_level"> 低</em> </span>
						<div class="verifiBox fl_ee">
							<div class="shab_1">
								<span class="myGome_mobile" val="mobile"> <em class=" myGome_onActive "></em> </span> 
								<p class="myGome_verifiPop"> <span>您已绑定手机：</span> <span>182****0710</span> <a href="toSecurity" target="_blank">管理</a></p>
							</div>
							<div class="shab_1">
								<span class="myGome_email" val="email"> <em class=""></em> </span>
								<p class="myGome_verifiPop"> <span>您还未绑定邮箱 </span><a href="toSecurity" target="_blank">立即绑定</a></p>
							</div>
						</div>
						<a class="fl_ee" href="toSecurity" target="_blank" style="margin-top:2px;">提升</a>
					</div>
					<div class="user_counts">
						<ul>
							<li>
                                <div class="count_item">
                                    <a href="wod_dingd.html">
                                        <i class="count_icon count_icon01"></i> 待付款
                                        <em id="waitPay">2</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="wod_dingd.html">
                                        <i class="count_icon count_icon02"></i> 待收货
                                        <em id="waitPay">4</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="wod_dingd.html">
                                        <i class="count_icon count_icon03"></i> 待提货
                                        <em id="waitPay">0</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="wod_dingd.html">
                                        <i class="count_icon count_icon04"></i> 待评价
                                        <em id="waitPay">8</em>
                                    </a>
                                </div>
                            </li>
						</ul>
					</div>
				</div>
				<div class="wod_tongc_daoh_lieb">
					<div class="diy_top">
						<ul>
							<h3>订单中心</h3>
							<li><a href="wod_dingd.html">我的订单</a></li>
							<li><a href="shengq_shouh.html">退换货单</a></li>
							<li><a href="pingj_shaid.html">评价晒单</a></li>
						</ul>
						<ul>
							<h3>管理中心</h3>
							<li><a href="wod_shouc.html">我的收藏</a></li>
							<li><a href="#">我的预约</a></li>
							<li><a href="#">我的咨询</a></li>
							<li><a href="#">投诉管理</a></li>
						</ul>
					</div>
					<div class="diy_top">
						<ul>
							<h3>账户设置</h3>
							<li><a href="toPersonmessage">基本资料</a></li>
							<li><a href="toSecurity">账户安全</a></li>
							<li><a href="shouh_diz.html">收货地址</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="wt">
						<ul>
							<li class="dangq_hongx"><a href="toPersonmessage">个人信息</a></li>
							<li><a href="shez_toux.html">设置头像</a></li>
							<li><a href="toMoreInformation">更多个人信息</a></li>
						</ul>
					</div>
					<div class="wd">
						<div class="user_set">
							 
                            <div class="item_meic">
                                <span class="label_meic">婚姻状况：</span>
                                <div class="fl_e"> 
                                	<input type="hidden" id="marrayInformation"  value="${loginedUser.marry }" />
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
	                            	<select class="form_select">                            
		                            	<option>请选择</option>
		                            	<option>5000元以下</option>
		                            	<option>5000-10000元</option>
		                            	<option>10000-15000元</option>
		                            	<option>15000-20000元</option>
		                            	<option>20000元以上</option>
	                            	</select>
                                </div>
                            </div>
                            <div class="item_meic">
                                <span class="label_meic">家庭成员数：</span>
                                <div class="fl_e">
                                     <select class="form_select">                            
		                            	<option>请选择</option>
		                            	<option>1人</option>
		                            	<option>2人</option>
		                            	<option>3人</option>
		                            	<option>4人</option>
		                            	<option>5人</option>
		                            	<option>6人</option>
	                            	</select>
                                </div>
                            </div>
                            <div class="item_meic">
                                <span class="label_meic">学历：</span>
                                <div class="fl_e">
                                     <select class="form_select" id="edu">                            
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
                                     <select class="form_select select_work" id="job">
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
	                                     <c:forEach items="${types}" varStatus="t" var="t">
									      <li>${t.name}</li>
										 </c:forEach>
                                     </ul>
                                </div>
                            </div>
                            <div class="item_meic">
                                <span class="label_meic"></span>
                                <div class="fl_e">
                                    <input type="button" value="保存" class="savebtn">
                                </div>
                            </div>
						</div>
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
		if(${loginedUser.edu} == null){
			$("#edu option[value=uknow]").attr("selected", true);
		}else{
			$("#edu option[value="${loginedUser.edu}"]").attr("selected", true);//根据value选中
		}
	 	  
	 })
	 $(function(){
		if(${loginedUser.job} == null){
			$("#job option[value=uknow]").attr("selected", true);
		}else{
			$("#job option[value="${loginedUser.job}"]").attr("selected", true);//根据value选中
		}
	 	  
	 })
</script>
<%@ include file="AfterFoot.jsp"%>