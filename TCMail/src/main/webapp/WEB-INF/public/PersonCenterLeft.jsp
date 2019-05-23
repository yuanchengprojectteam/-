<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="tod_tongc_zuoc">
				<div class="zuoc_toux">
					<div class="toux_kuang">
						<div class="userImage">
							<div class="myGome_userPhoto">
								<img name="header" src="${sessionScope.loginedUser.image}">
								<a class="edit_photo_bitton" href="header" target="_blank">编辑</a>
							</div>
						</div>
						<div class="user_name_Level">
							<p class="user_name" title="${sessionScope.loginedUser.name }">${sessionScope.loginedUser.name }</p>
							<p class="userLevel">会员：<span class="levelId icon_plus_nickname"></span></p> 
						</div>
					</div>
					<div class="userInfo_bar">
						<span>资料完成度</span>
						<span class="userInfo_process_bar"><em class="active_bar"  id="uInfo"> 
						<script type="text/javascript">
						
						
						var data = {
								"phone" : '${sessionScope.loginedUser.phone}',
								"name" : '${sessionScope.loginedUser.name}',
								"account" : '${sessionScope.loginedUser.account}',
								"realname": '${sessionScope.loginedUser.realname}',
								"image" : '${sessionScope.loginedUser.image}',
								"email" : '${sessionScope.loginedUser.email}',
								"age" : '${sessionScope.loginedUser.age}'
						};
						var h=0;
						$.each(data,function(i,obj){
							h++;
						})
						var count = 0;
						var comple;
						for(var i=0;i<h;i++){
							if(typeof data[i] == "undefined" || data[i] == null || data[i] == ""){  
								count++;
							}
						}
						$("#uInfo").html(parseInt(100/count)+"%");
						$("#uInfo").css("width",parseInt(100/count)+"%");
						</script></em></span>
						<a href="toPersonmessage" target="_blank">完善</a>
					</div>
					<div class="myGome_accountSecurity">
						<span class="fl_ee" style="margin-top:2px;">账户安全 <em class="myGome_account_level"> 低</em> </span>
						<div class="verifiBox fl_ee">
							<div class="shab_1">
								<span class="myGome_mobile" val="mobile"> <em class=" myGome_onActive "></em> </span> 
								
								<c:choose>
									<c:when test="${! empty sessionScope.loginedUser.phone}">
										<p class="myGome_verifiPop"> <span>您已绑定手机：</span> 
										<span>${sessionScope.loginedUser.phone}</span>
										<a href="security" target="_blank">管理</a></p>
									</c:when>
									<c:otherwise>
										<p class="myGome_verifiPop"> <span>您还没绑定手机...</span> 
										<a href="security" target="_blank">去绑定</a></p>
									</c:otherwise>
								</c:choose> 
							</div>
							<div class="shab_1">
								<span class="myGome_email" val="email"> <em class=""></em> </span>
								<p class="myGome_verifiPop"> <span>您还未绑定邮箱 </span><a href="security" target="_blank">立即绑定</a></p>
							</div>
						</div>
						<a class="fl_ee" href="security" target="_blank" style="margin-top:2px;">提升</a>
					</div>
					<div class="user_counts">
						<ul>
							<li>
                                <div class="count_item">
                                    <a href="OrderDetail?tabCode=waitpay">
                                        <i class="count_icon count_icon01"></i> 待付款
                                        <c:if test="${! empty waitpay}"><em id="waitPay">${waitpay}</em></c:if>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="OrderDetail?tabCode=waitsend">
                                        <i class="count_icon count_icon02"></i> 待收货
                                        <c:if test="${! empty waitsend}"><em id="waitPay">${waitsend}</em></c:if>
                                    </a>
                                </div>
                            </li>
                            
                            <li>
                                <div class="count_item">
                                    <a href="OrderDetail?tabCode=waitrate">
                                        <i class="count_icon count_icon04"></i> 待评价
                                        <c:if test="${!empty waitrate}"><em id="waitPay">${waitrate}</em></c:if>
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
							<li><a href="OrderDetail?tabCode=AllOrder">我的订单</a></li>
							
							<li><a href="commentAndShowOrder">评价晒单</a></li>
						</ul>
						<ul>
							<h3>管理中心</h3>
							<li><a href="MyFavorite">我的收藏</a></li>
							<li><a href="car">我的购物车</a></li>
							<li><a href="#">我的咨询</a></li>
							<li><a href="#">投诉管理</a></li>
							<li><a href="MyScode">我的积分</a></li>
						</ul>
					</div>
					<div class="diy_top">
						<ul>
							<h3>账户设置</h3>
							<li><a href="toPersonmessage">基本资料</a></li>
							<li><a href="UserSecurity">账户安全</a></li>
							<li><a href="toAddrManager">收货地址</a></li>
						</ul>
					</div>
				</div>
</div>
