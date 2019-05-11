<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——账户安全</title>
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
					<div class="shand_piaot">账户安全</div>
					<div class="pi_ibox">
						<table width="100%">
							<tbody>
								<tr>
									<td width="15%"><span>登录密码</span></td>
									<td width="18%"><span>强度：<em>${pwdStrength > 1? '中':'弱' }</em></span></td>
									<td width="47%">
										<p class="newPassWord">
											<b id="pwd" class="red_bg">弱</b>
											<b id="pwd" class="${pwdStrength > 1? 'red_bg':'' }">中</b>
											<b id="pwd" class="${pwdStrength > 2? 'red_bg':'' }">强</b>
											<br>为了账户更加安全，建议您定期更换密码。
										</p>
									</td>
									<td width="20%"><span><a href="pwdChange1" class="verification">${ zhou.pwd == null ? '立即验证' : '修改' }</a></span></td>
								</tr>
							</tbody>
							<tbody>
								<tr>
									<td width="15%"><span>验证邮箱</span></td>
									<td width="18%"><span><em class="yanz_tub ${zhou.email == null ? 'ico_gth' : 'ico_bright' }"></em>${ zhou.email == "" ? '立即验证' : '修改' }</span></td>
									<td width="47%"><p>邮箱验证方便您及时接收优惠促销信息，以及积分、等变动的提醒。</p></td>
									<td width="20%"><span><a href="#" class="verification">${zhou.email == null ? '立即验证' : '修改' }</a></span></td>
								</tr>
							</tbody>
							<tbody>
								<tr>
									<td width="15%"><span>手机验证</span></td>
									<td width="18%"><span><em class="yanz_tub ${zhou.phone == null ? 'ico_gth' : 'ico_bright' }"></em>${zhou.phone == null ? "未验证" : "已验证" }</span></td>
									<td width="47%"><p> 您验证的手机：${loginedUser.phone } </p></td>
									<td width="20%"><span><a href="updatephone" class="verification">${zhou.phone == null ? '立即验证' : '修改' }</a></span></td>
								</tr>
							</tbody>
							<tbody>
								<tr>
									<td width="15%"><span>支付密码</span></td>
									<td width="18%"><span><em class="yanz_tub ico_gth"></em>${zhou.email == null ? '立即验证' : '修改' }</span></td>
									<td width="47%"><p>设置支付密码能有效的保障账户的安全，在使用红券、蓝券、礼品卡等操作时需要输入支付密码。</p></td>
									<td width="20%"><span><a href="#" class="verification">立即验证</a></span></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div> 
<jsp:include page="../public/AfterFoot.jsp"></jsp:include>