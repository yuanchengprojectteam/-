<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——申请售后</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
 <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script>
<!--  <script type="text/javascript" src="js/select.js"></script> -->
 


</head>
<body>
<%@ include file="AfterHeader.jsp" %>
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
							<p class="user_name" title="山的那边是海">山的那边是海</p>
							<p class="userLevel">会员：<span class="levelId icon_plus_nickname"></span></p> 
						</div>
					</div>
					<div class="userInfo_bar">
						<span>资料完成度</span>
						<span class="userInfo_process_bar"><em class="active_bar" style="width: 40px;"> 20%</em></span>
						<a href="ger_xinx.html" target="_blank">完善</a>
					</div>
					<div class="myGome_accountSecurity">
						<span class="fl_ee" style="margin-top:2px;">账户安全 <em class="myGome_account_level"> 低</em> </span>
						<div class="verifiBox fl_ee">
							<div class="shab_1">
								<span class="myGome_mobile" val="mobile"> <em class=" myGome_onActive "></em> </span> 
								<p class="myGome_verifiPop"> <span>您已绑定手机：</span> <span>182****0710</span> <a href="zhangh_anq.html" target="_blank">管理</a></p>
							</div>
							<div class="shab_1">
								<span class="myGome_email" val="email"> <em class=""></em> </span>
								<p class="myGome_verifiPop"> <span>您还未绑定邮箱 </span><a href="zhangh_anq.html" target="_blank">立即绑定</a></p>
							</div>
						</div>
						<a class="fl_ee" href="zhangh_anq.html" target="_blank" style="margin-top:2px;">提升</a>
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
							<li><a href="ger_xinx.html">基本资料</a></li>
							<li><a href="zhangh_anq.html">账户安全</a></li>
							<li><a href="shouh_diz.html">收货地址</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="shand_piaot">申请售后</div> 
					<div class="wod_dingd_shuaix wod_shouh"> 
						<p class="dingd_huis_zhan"><a href="#">联系卖家</a></p>
						<p class="dingd_huis_zhan"><a href="#">售后政策</a></p>
					</div>
					<!--************************************-->
					<table class="order-tb order-tb_1">
						<colgroup>
							<col class="number-col">
							<col class="consignee-col">
							<col class="amount-col">
							<col class="operate-col">
							<col class="dis_col">
						</colgroup> 
						<tbody>
							<tr class="sep-row"><td colspan="4"></td></tr>
							<tr class="tr-th span_30_1">
								<td colspan="1"> 
									<span class="dealtime span_30" >商品名称</span> 
								</td>
								<td colspan="1"> 
									<span class="dealtime span_30" >包装清单</span> 
								</td>
								<td colspan="1"> 
									<span class="dealtime span_30" >赠送清单</span> 
								</td>
								<td colspan="1"> 
									<span class="dealtime span_30" >购买数量</span> 
								</td>
							</tr>
							<tr class="tr-bd">
								<td rowspan="1">
									<div class="goods-item">
										<div class="p-img">
											<a target="_blank" href="shangp_xiangq.html">
												<img src="images/lieb_tupi1.jpg" alt="">
											</a>
										</div>
										<div class="p-msg">
											<div class="p-name">
												<a target="_blank" href="shangp_xiangq.html">红豆居家情侣睡衣男女春秋纯棉长袖条纹卡通家居服套装119 麻灰 170/92A</a>
												<p class="yiwanc_hui"><a href="#">申请售后</a></p>
											</div>
										</div>
									</div>  
								</td>
								<td rowspan="1">
									<div class="zhif_jine houl">
										<p>-</p> 
									</div>
								</td>
								<td rowspan="1">
									<div class="operate">
										<p class="yiwanc_hui">-</p> 
									</div>
								</td>
								<td rowspan="1">
									<div class="txt_ren">
										<span>x1</span> 
									</div>
								</td>  
							</tr> 
						</tbody> 
					</table>
					<div class="shengq_waik">
						<div class="shengq_qingd">
							<div class="shengq_tis_1">
								<p><em>* 温馨提示：</em> 本次售后服务将由 第三方卖家 <em>杭州宏文电子商务有限公司</em> 为您提供 </p>
							</div>
							<div class="shengq_liang"> 
								<div class="shengs_li_1">
									<p class="p"><em>*</em> 服务类型：</p>
									<div class="yocu">
										<ul>
											<li class="dsg">
												<div class="dangq_xuanz_diz">在线支付</div>
											</li>
											<li>
												<div class="dangq_xuanz_diz">在线支付</div>
											</li>
										</ul>
									</div>
								</div>
								<div class="shengs_li_1">
									<p class="p"><em>*</em> 提交原因：</p>
									<div class="yocu">
										 <select class="select"><option>请选择</option><option value="质量问题">质量问题</option><option value="其他">其他</option></select>
									</div>
								</div>
								<div class="shengs_li_1">
									<p class="p"><em>*</em> 问题描述：</p>
									<div class="yocu">
										<div class="sdg"><textarea cols="" rows="" class="area"></textarea><p>10-500字</p></div> 
									</div>
								</div>
								<div class="shengs_li_1">
									<p class="p">图片信息：</p>
									<div class="yocu">
										<button type="button">上传图片</button>
										<p class="t_tis">为了帮助您更好的解决问题，请上传图片</p>
									</div>
								</div> 
								<div class="queren_xinx" id="dangq" style="display: block;">
									<p class="quer_xinx_biaot">确认信息<a  id="gef">[修改]</a></p>
									<div class="wome">
										<div class="shengs_li_1">
											<p class="p">  申请凭证：</p>
											<div class="yocu">  
												<p class="pfg">有发票</p>
											</div>
										</div> 
										<div class="shengs_li_1">
											<p class="p"><em>*</em>返回方式：</p>
											<div class="yocu">  
												<p class="pfg">上门取件</p>
											</div>
										</div> 
										<div class="shengs_li_1">
											<p class="p"><em>*</em>取货地址：</p>
											<div class="yocu">  
												<p class="pfg">贵州贵阳市云岩区城区下合群路达亨大厦1606</p>
											</div>
										</div> 
										<div class="shengs_li_1">
											<p class="p"><em>*</em>收货地址：</p>
											<div class="yocu">  
												<p class="pfg">贵州贵阳市云岩区城区下合群路达亨大厦1606</p>
											</div>
										</div>
										<div class="shengs_li_1">
											<p class="p"><em>*</em>顾客姓名：</p>
											<div class="yocu">  
												<p class="pfg">潘中全</p>
											</div>
										</div>
										<div class="shengs_li_1">
											<p class="p"><em>*</em>手机号码：</p>
											<div class="yocu">  
												<p class="pfg"> 182****0710 <span>提交服务单后，售后专员可能与您电话沟通，请保持手机畅通</span></p>
											</div>
										</div> 
									</div>
								</div>
								<div class="queren_xinx" id="gef_1" style="display: none;">
									<p class="quer_xinx_biaot">确认信息</p>
									<div class="wome"> 
										<div class="shengs_li_1">
											<p class="p">  申请凭证：</p>
											<div class="yocu yocu_1">   
												<p class="fapiao"><input type="radio" name="1" checked="checked"><span>有发票</span></p>
												<p class="fapiao"><input type="radio" name="1"><span>有检测报告</span></p>
											</div>
										</div> 
										<div class="shengs_li_1">
											<p class="p"><em>*</em> 返回方式：</p>
											<div class="yocu">
												<ul>
													<li class="dsg">
														<div class="dangq_xuanz_diz">上门取件</div>
													</li>
													<li>
														<div class="dangq_xuanz_diz">快递至第三方卖家</div>
													</li>
												</ul>
											</div>
										</div> 
										<div class="shengs_li_1">
											<p class="p"><em>*</em>取货地址：</p>
											<div class="yocu">  
												<div id="city_5" class="jia_biank">
													<select class="prov dsf_1"></select> 
													<select class="city dsf_1" disabled="disabled"></select>
													<select class="dist dsf_1" disabled="disabled"></select>
												</div>
												<div class="xiangx_diz1"><input type="text" placeholder="贵州贵阳市云岩区城区下合群路达亨大厦1606"></div>
											</div>
										</div> 
										<div class="shengs_li_1">
											<p class="p"><em>*</em>收货地址：</p>
											<div class="yocu">  
												<div id="city_4" class="jia_biank">
													<select class="prov dsf_1"></select> 
													<select class="city dsf_1" disabled="disabled"></select>
													<select class="dist dsf_1" disabled="disabled"></select>
												</div>
												<div class="xiangx_diz1"><input type="text" placeholder="贵州贵阳市云岩区城区下合群路达亨大厦1606"></div>
											</div>
										</div> 
										<div class="shengs_li_1">
											<p class="p"><em>*</em>顾客姓名：</p>
											<div class="yocu">  
												<div class="xiangx_diz1 xiangx_diz1_1"><input type="text" placeholder="潘中全"></div>
											</div>
										</div>
										<div class="shengs_li_1">
											<p class="p"><em>*</em>手机号码：</p>
											<div class="yocu"> 
												<div class="xiangx_diz1 xiangx_diz1_1"><input type="text" placeholder="182****0710"></div>  
											</div>
										</div> 
									</div>
								</div>
								<div class="shangsd">
									<p>
										<input type="checkbox" checked="checked">
										<span class="ds">我已阅读并同意 <em><a href="#">《上门取件服务协议》</a></em></span>
									</p>
									<button>提交</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div> 

<script type="text/javascript">
window.onload=function(){
	var t=document.getElementById('gef');
	var c=document.getElementById('gef_1');
	var DangQian=document.getElementById('dangq');
	t.onclick=function(){
		c.style.display ='block';
		DangQian.style.display='none';
	};
};
 
</script>

 
<%@ include file="AfterFoot.jsp" %>
<script type="text/javascript" src="js/hou/jquery.cityselect.js"></script>

<script type="text/javascript">
$(function(){ 
	$("#city_5").citySelect({
		prov:"贵州", 
		city:"贵阳",
		dist:"云岩区",
		nodata:"none"
	});
});
$(function(){ 
	$("#city_4").citySelect({
		prov:"贵州", 
		city:"贵阳",
		dist:"云岩区",
		nodata:"none"
	});
});

</script>