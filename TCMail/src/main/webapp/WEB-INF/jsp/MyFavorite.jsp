<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<<<<<<< HEAD
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——收货地址${param.id}</title>
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
<!--头部--> 
 
<%@include file="AfterHeader.jsp" %>
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
					<div class="shand_piaot">我的收藏</div>
					<div class="slideTxtBox_shouc">
						<div class="hd">  
							<ul><li>商品</li><li>店铺</li></ul>
						</div>
						<div class="bd">
							<ul>
								<div>
									<div class="history_bd">
										<dl>
											<dt>全部分类：</dt>
											<dd>
												<a href="#" class="beij_color">总数(1)</a>
												<a href="#">连衣裙(1)</a>
											</dd>
										</dl>
									</div>
									<div class="history_bd">
										<dl>
											<dt>全部分类：</dt>
											<dd>
												<label><input type="checkbox" class="checkbox">现货商品</label>
											</dd>
										</dl>
									</div>
								</div> 
								<div class="uc_overdueTable">
									<div class="list_thead">
										<div class="col432">
											<label class="label"><input class="checkbox" type="checkbox">全选</label>
											<a href="#" class="button_grey">取消收藏</a>
										</div>
									</div>
									<div class="diyig_s">
										<ol>
										<c:forEach items="${favorites }" var="f">
										 
										
											<li>
											    <input type="hidden" value="${f.uid }" id="uid"/>
											    <input type="hidden" value="${f.id }" id="id"/>
												<label><input type="checkbox" class="checkbox"></label>
												<div class="overflow">
													<div class="shouc_img">
														<a href="shangp_xiangq.html"><img src="${f.good.image }"></a>
													</div>
													<a href="shagnj_dianp.html" class="btn_mix_shop">进入店铺</a>
												</div>
												<div class="col280">
													<h2><a href="shangp_xiangq.html" title="Mistletoe碎花夏季新款女装韩版印花连衣裙F6641(白色 M)" target="_blank">${f.good.name}${f.good.color } ) ${f.good.size}</a></h2>
													<div class="price_box"><span>￥${f.good.price }</span></div>
													<div class="price_box"><span class="font_aide">￥${f.good.price }</span></div>
													<div class="price_box">
														<a href="zhouAddCar?id=${f.id }" class="button_grey">加入购物车</a>
														<input type="button" id="delects" class="button_grey" value="取消收藏"/>
													</div>
												</div>
												<div class="youh_d">库存量：${f.good.num }</div>
											</li>
											</c:forEach>
										</ol>
										<div class="gerzx_fany">
											<a href="#" class="shangxy">上一页</a>
											<a href="#">1</a>
											<a href="#" class="shangxy">上一页</a>
										</div>
									</div>
								</div>
							</ul>
							<ul>
								<div class="uc_overdueTable">
									<div class="list_thead">
										<div class="col432">
											<label class="label"><input class="checkbox" type="checkbox">全选</label>
											<a href="#" class="button_grey">取消收藏</a>
										</div>
									</div>
									<div class="diyig_s">
										<ol>
											<li>
												<label><input type="checkbox" class="checkbox"></label>
												<div class="overflow">
													<div class="shouc_img">
														<a href="shangp_xiangq.html"><img src="images/dshg.jpg"></a>
													</div>
													<a href="shagnj_dianp.html" class="btn_mix_shop">进入店铺</a>
												</div>
												<div class="col280">
													<h2><a href="shangp_xiangq.html" title="Mistletoe女装旗舰店(白色 M)" target="_blank">Mistletoe女装旗舰店的撒个谎大卡时间</a></h2> 
													<div class="price_box"><span class="font_aide">收藏时间：2017-07-20</span></div>
													<div class="price_box">
														<a href="#" class="button_grey">加入购物车</a>
														<a href="#" class="button_grey">取消收藏</a>
													</div>
												</div>
												<div class="bend_shangp_">
													<h2>本店商品<a href="#">换一批</a></h2>
													<div>
														<div class="bengd_sp_neir">
															<div class="bengd_sp_neir_img"><a href="shagnj_dianp.html"><img src="images/lieb_tupi1.jpg"></a></div>
															<div class="price_box"><span>￥79.00</span></div>
															<a href="#" class="button_grey neir_jiar">加入购物车</a>
														</div>
														<div class="bengd_sp_neir">
															<div class="bengd_sp_neir_img"><a href="shagnj_dianp.html"><img src="images/lieb_tupi1.jpg"></a></div>
															<div class="price_box"><span>￥79.00</span></div>
															<a href="#" class="button_grey neir_jiar">加入购物车</a>
														</div>
														<div class="bengd_sp_neir">
															<div class="bengd_sp_neir_img"><a href="shagnj_dianp.html"><img src="images/lieb_tupi1.jpg"></a></div>
															<div class="price_box"><span>￥79.00</span></div>
															<a href="#" class="button_grey neir_jiar">加入购物车</a>
														</div>
													</div>
												</div>
											</li> 
										</ol>
										<div class="gerzx_fany">
											<a href="#" class="shangxy">上一页</a>
											<a href="#">1</a>
											<a href="#" class="shangxy">上一页</a>
										</div>
									</div>
								</div>
							</ul> 
						</div>
					</div> 
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div> 
<script type="text/javascript">jQuery(".slideTxtBox_shouc").slide();</script>


<%@ include file="AfterFoot.jsp"%>

 <script type="text/javascript">

 
 
 
	 $("#delects").click(function(){
		
		var id = $("#id").val();
		var uid = $("#uid").val();
		//alert(id+","+uid);
		$.ajax({
			type:"post",
			url:"fdelect?id="+id,
			cache:false,
			data:{"uid":uid},
			dataType:"JSON",
			success:function(data){
				alert("取消成功！！");
				location.href = "MyFavorite?uid="+data.uid;
			}
			error:function(e){
				alert("ajax错误");
			}
		});
	});
 

</script>


</body>


</html>
=======
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——收货地址</title>
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
<!--头部--> 
 
<%@include file="AfterHeader.jsp" %>
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->
				<%@include flie="PersonCenterLeft.jsp"%> 
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="shand_piaot">我的收藏</div>
					<div class="slideTxtBox_shouc">
						<div class="hd">  
							<ul><li>商品</li><li>店铺</li></ul>
						</div>
						<div class="bd">
							<ul>
								<div>
									<div class="history_bd">
										<dl>
											<dt>全部分类：</dt>
											<dd>
												<a href="#" class="beij_color">总数(1)</a>
												<a href="#">连衣裙(1)</a>
											</dd>
										</dl>
									</div>
									<div class="history_bd">
										<dl>
											<dt>全部分类：</dt>
											<dd>
												<label><input type="checkbox" class="checkbox">现货商品</label>
											</dd>
										</dl>
									</div>
								</div> 
								<div class="uc_overdueTable">
									<div class="list_thead">
										<div class="col432">
											<label class="label"><input class="checkbox" type="checkbox">全选</label>
											<a href="#" class="button_grey">取消收藏</a>
										</div>
									</div>
									<div class="diyig_s">
										<ol>
											<li>
												<label><input type="checkbox" class="checkbox"></label>
												<div class="overflow">
													<div class="shouc_img">
														<a href="shangp_xiangq.html"><img src="images/lieb_tupi1.jpg"></a>
													</div>
													<a href="shagnj_dianp.html" class="btn_mix_shop">进入店铺</a>
												</div>
												<div class="col280">
													<h2><a href="shangp_xiangq.html" title="Mistletoe碎花夏季新款女装韩版印花连衣裙F6641(白色 M)" target="_blank">Mistletoe碎花夏季新款女装韩版印花连衣裙F6641(白色 M)</a></h2>
													<div class="price_box"><span>￥79.00</span></div>
													<div class="price_box"><span class="font_aide">收藏时间：2017-07-20</span></div>
													<div class="price_box">
														<a href="#" class="button_grey">加入购物车</a>
														<a href="#" class="button_grey">取消收藏</a>
													</div>
												</div>
												<div class="youh_d">有货</div>
											</li>
											<li>
												<label><input type="checkbox" class="checkbox"></label>
												<div class="overflow">
													<div class="shouc_img">
														<a href="shangp_xiangq.html"><img src="images/lieb_tupi1.jpg"></a>
													</div>
													<a href="shagnj_dianp.html" class="btn_mix_shop">进入店铺</a>
												</div>
												<div class="col280">
													<h2><a href="shangp_xiangq.html" title="Mistletoe碎花夏季新款女装韩版印花连衣裙F6641(白色 M)" target="_blank">Mistletoe碎花夏季新款女装韩版印花连衣裙F6641(白色 M)</a></h2>
													<div class="price_box"><span>￥79.00</span></div>
													<div class="price_box"><span class="font_aide">收藏时间：2017-07-20</span></div>
													<div class="price_box">
														<a href="#" class="button_grey">加入购物车</a>
														<a href="#" class="button_grey">取消收藏</a>
													</div>
												</div>
												<div class="youh_d">有货</div>
											</li>
										</ol>
										<div class="gerzx_fany">
											<a href="#" class="shangxy">上一页</a>
											<a href="#">1</a>
											<a href="#" class="shangxy">上一页</a>
										</div>
									</div>
								</div>
							</ul>
							<ul>
								<div class="uc_overdueTable">
									<div class="list_thead">
										<div class="col432">
											<label class="label"><input class="checkbox" type="checkbox">全选</label>
											<a href="#" class="button_grey">取消收藏</a>
										</div>
									</div>
									<div class="diyig_s">
										<ol>
											<li>
												<label><input type="checkbox" class="checkbox"></label>
												<div class="overflow">
													<div class="shouc_img">
														<a href="shangp_xiangq.html"><img src="images/dshg.jpg"></a>
													</div>
													<a href="shagnj_dianp.html" class="btn_mix_shop">进入店铺</a>
												</div>
												<div class="col280">
													<h2><a href="shangp_xiangq.html" title="Mistletoe女装旗舰店(白色 M)" target="_blank">Mistletoe女装旗舰店的撒个谎大卡时间</a></h2> 
													<div class="price_box"><span class="font_aide">收藏时间：2017-07-20</span></div>
													<div class="price_box">
														<a href="#" class="button_grey">加入购物车</a>
														<a href="#" class="button_grey">取消收藏</a>
													</div>
												</div>
												<div class="bend_shangp_">
													<h2>本店商品<a href="#">换一批</a></h2>
													<div>
														<div class="bengd_sp_neir">
															<div class="bengd_sp_neir_img"><a href="shagnj_dianp.html"><img src="images/lieb_tupi1.jpg"></a></div>
															<div class="price_box"><span>￥79.00</span></div>
															<a href="#" class="button_grey neir_jiar">加入购物车</a>
														</div>
														<div class="bengd_sp_neir">
															<div class="bengd_sp_neir_img"><a href="shagnj_dianp.html"><img src="images/lieb_tupi1.jpg"></a></div>
															<div class="price_box"><span>￥79.00</span></div>
															<a href="#" class="button_grey neir_jiar">加入购物车</a>
														</div>
														<div class="bengd_sp_neir">
															<div class="bengd_sp_neir_img"><a href="shagnj_dianp.html"><img src="images/lieb_tupi1.jpg"></a></div>
															<div class="price_box"><span>￥79.00</span></div>
															<a href="#" class="button_grey neir_jiar">加入购物车</a>
														</div>
													</div>
												</div>
											</li> 
										</ol>
										<div class="gerzx_fany">
											<a href="#" class="shangxy">上一页</a>
											<a href="#">1</a>
											<a href="#" class="shangxy">上一页</a>
										</div>
									</div>
								</div>
							</ul> 
						</div>
					</div> 
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div> 
<script type="text/javascript">jQuery(".slideTxtBox_shouc").slide();</script>


<%@ include file="AfterFoot.jsp"%>
>>>>>>> branch 'master' of https://github.com/yuanchengprojectteam/-.git
