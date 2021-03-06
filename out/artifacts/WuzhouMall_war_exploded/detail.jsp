<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html >
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品详情页</title>
<meta name="keywords" content="商品详情页" />
<meta name="description" content="商品详情页" />
 <link rel="stylesheet" type="text/css" href="css/default.css" />
 <link rel="stylesheet" type="text/css" href="css/reset.css" />
 <link rel="stylesheet" type="text/css" href="css/new_file.css" />
 <link rel="stylesheet" type="text/css" href="css/normalize.css"/>
 <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
 <script src="js/common.js" type="text/javascript" charset="utf-8"></script>
   <script type="text/javascript">
  $(document).ready(function(){
	  var showproduct = {
		  "boxid":"showbox",
		  "sumid":"showsum",
		  "boxw":400,//宽度,该版本中请把宽高填写成一样
		  "boxh":400,//高度,该版本中请把宽高填写成一样
		  "sumw":60,//列表每个宽度,该版本中请把宽高填写成一样
		  "sumh":60,//列表每个高度,该版本中请把宽高填写成一样
		  "sumi":7,//列表间隔
		  "sums":5,//列表显示个数
		  "sumsel":"sel",
		  "sumborder":1,//列表边框，没有边框填写0，边框在css中修改
		  "lastid":"showlast",
		  "nextid":"shownext"
		  };//参数定义	  
	 $.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行
  });
</script>
</head>
<body>
 <div class="showall">
 <div id="mediav_cookiemapping">
			<a href="#"></a>
 </div>
<!--头部 -->
 <div id="header-bar">
			<div class="wrapper container">
				<div class="choose-city-box">
					<span class="s-title">选择城市：</span>
					<span class="s-city"> 
				  	<em class="em-city">益阳</em>
				  </span>
				</div>
				<a class="a-fav-ehaier" href="loger_index.jsp">返回首页</a>
				<span class="s-weixin-box"><a href="">微信
					<div class="s-weixin-top">
						<img src="img/wecat.png" alt="微信扫描">
					</div>				
				</a></span>
				<!-- <span class="s-app-box"><a href="">商城app
					<div class="s-app-top">
						<img src="img/qrehaier.png" alt="商城app"/>
					</div>
				</a></span> -->
				<div class="all-haeder-bor">
					<ul class="ul-topnav">
						<li><%String username = (String)session.getAttribute("username"); if(username!=null){out.print(username);}%>，欢迎来到五洲官方商城 </li>
						<li><a href="invalidate.jsp">退出登录</a></li>|
						<li><a href="dis_car.jsp">我的购物车</a></li>|
						<li><a href="reply.jsp">互动社区</a></li>
						
					</ul>
				</div>
			</div>
		</div>
	                <!--left -->
	                <div class="showbot">
                    <div id="showbox">
                        <img src="images/photos/img01.png" width="400" height="400" />
                        <img src="images/photos/img02.png" width="400" height="400" />
                        <img src="images/photos/img03.png" width="400" height="400" />
                        <img src="images/photos/img04.png" width="400" height="400" />
                        <img src="images/photos/img05.png" width="400" height="400" />
                        <img src="images/photos/img06.png" width="400" height="400" />
                        
                    </div><!--展示图片盒子-->
                        <div id="showsum">
                        	<!--展示图片里边-->
                        </div>
                        <p class="showpage">
                            <a href="javascript:void(0);" id="showlast"> < </a>
                            <a href="javascript:void(0);" id="shownext"> > </a>
                        </p>
                        </div>
                        <!--conet -->
                        
                      
                        
                        
                        <div class="tb-property">
                        <form action="AddBuyCarServlet" method="post">
                        	<div class="tr-nobdr">
                        		<h3><a id="goods_one"><input type="hidden"  name="good_one" value="凌度行车记录仪尊享版           ￥599.00     "  size="40" maxlength="200" readonly>凌度行车记录仪尊享版</a></h3>
                        		<!-- <input type="submit" name="add" value="加入购物车" height="2">-->

                        
                        	</div>
                        		<div class="txt">
                        			<span class="nowprice">￥<a id="price">599.00</a></span>
                        			<div class="cumulative">
                        				<span class="number ty1">累计售出<br /><em id="add_sell_num_363">370</em></span>
                        				<span class="number tyu">累计评价<br /><em id="add_sell_num_363">25</em></span>
                        			</div>
                        		</div>
                        	<div class="txt-h">
                        		<span class="tex-o">分类</span>
                        		<ul class="glist" id="glist" data-monitor="goodsdetails_fenlei_click">
                        			<li><a title="红色36g"  id="goods_color">黑色36g</a></li>
                        			
                        		<!--<li><a title="红色36g" href="">红色36g</a></li>
                        			<li><a title="蓝色16g" href="">红色36g</a></li>-->
                        		</ul>
                        	</div>
                        	<script>
                        	$(document).ready(function(){
                        
                          	var t = $("#text_box");
                        	
                        	$('#min').attr('disabled',true);
                            
                            	$("#add").click(function(){    
                               	 t.val(parseInt(t.val())+1)
                               	 if (parseInt(t.val())!=1){
                                   	 $('#min').attr('disabled',false);
                                	}
      
                           	 }) 
                            	$("#min").click(function(){
                                	t.val(parseInt(t.val())-1);
                                	if (parseInt(t.val())==1){
                                   	 $('#min').attr('disabled',true);
                                	}
      
                            	})  
                        	});
                        	</script>  
                        	<div class="gcIpt">
                        		<span class="guT" id="goods_number">数量</span>
                        		<input id="min" name="" type="button" value="-" />  
                        		<input id="text_box" name="goods_number" type="text" value="1" style="width:30px; text-align: center; color: #0F0F0F;"/>
                        		<input id="add" name="" type="button" value="+" />
								<span class="Hgt">库存（99）</span>
                        	</div>
                        	<div class="nobdr-btns">
                        		<button class="addcart hu" type="submit"><img src="images/shop.png" width="25" height="25"/>加入购物车</button>

								<button class="addcart yh"><img src="images/ht.png" width="25" height="25"/>立即购买</button>
                        	</div>
                        	<div class="guarantee">
                        		<span>邮费：包邮&nbsp;&nbsp;支持货到付款 <a href=""><img src="images/me.png"/></a></span>
                        	</div>
                        </form>
                        </div>
                        <!--right -->
                        <div class="extInfo">
            	            <div class="brand-logo">
            	             	<a href="" title="奥影汽车影音">
            	             		<img src="images/photos/logo.png"/>
            	             	</a>
            	            </div>
            	            <div class="seller-pop-box">
            	            	
            	            	<span class="tr">客家电话：18569198304</span>
            	            	<span class="tr hoh">
            	            		<a title="湖南省益阳市资阳区" href="">湖南省益阳市资阳区</a>
            	            	</span>
            	            </div>
            	            <div class="seller-phone">
            	            	<span class="pop im">
            	            		<a href="" data-name="联系卖家"><img src="images/phon.png"/>联系卖家</a>
            	            	</span>
            	            	<span class="pop in">
									<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1754805653&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:1754805653:41" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
            				</span>
            	            </div>
            	            <div class="jd-service">
            	            	<a href="">
            	            		<img src="images/ho_07.png"/>
            	            	</a>
            	            </div>
            	            <div class="suport-icons">
            	            	<h4>扫一扫<br />手机下单更优惠</h4>
            	            	<img src="images/ho_11.jpg"/>
            	            </div>
                        </div>
                    </div>                
<!-- 推荐搭配 -->                
                <div class="gdetail">
                	<div class="dp_wrap_title">
                		推荐搭配
                	</div>
                	<div class="dp_wrap">
                		<!-- 结算 -->
                		<div class="dq_total_wrap">
                			<div class="icon_equal">
                				=
                			</div>
                			<div class="dp_num">已经选择0个配件
                				<p class="dq_price">总计<span>￥599.00</span>元</p>
                				<button class="get">立即购买</button>
                			</div>
                		</div>
                		<!-- 搭配1 -->
                		<div class="dq_ori">
                			<a class="dq_ori_prd" href=""><img src="images/hdy_07.png"/></a>
                			<a class="ori_prd" href="">行车记录仪二代·美猴王版（黑灰色）</a>
                			<p class="ori_prd dp_wrap_pprice_ori">￥599.00</p>
                		</div>
                		<div class="scroll_wrap">
                			<!-- 搭配2 -->
                			<div class="dp_prd">
                				<div class="icon_plus">+</div>
                				<div class="dp_p_wrap">
                					<a class="dp_wrap_pimg" href="" target="_blank"><img src="images/list_10.jpg"/></a>
                					<a class="dp_wrap_pname" href="" target="_blank">亿连方控-智能安全驾驶控制器 时尚版</a>
                					<p class="dp_wrap_pprice">
                					<label>
                					<input type="checkbox" data-price="199" data-item="570b1b2f5efb114c378b4575">
                					￥199
                					</label>
                					</p>
                				</div>
                			</div>
                			<!-- 搭配3 -->
                			<div class="dp_prd">
                				<div class="icon_plus">+</div>
                				<div class="dp_p_wrap">
                					<a class="dp_wrap_pimg" href="" target="_blank"><img src="images/hdy_09.png"/></a>
                					<a class="dp_wrap_pname" href="" target="_blank">亿连方控-智能安全驾驶控制器 时尚版</a>
                					<p class="dp_wrap_pprice">
                					<label>
                					<input type="checkbox" data-price="199" data-item="570b1b2f5efb114c378b4575">
                					￥199
                					</label>
                					</p>
                				</div>
                			</div>
                			<!-- 搭配4 -->
                			<div class="dp_prd">
                				<div class="icon_plus">+</div>
                				<div class="dp_p_wrap">
                					<a class="dp_wrap_pimg" href="" target="_blank"><img src="images/list_03.jpg"/></a>
                					<a class="dp_wrap_pname" href="" target="_blank">O2+车载空气净化器DM2</a>
                					<p class="dp_wrap_pprice">
                					<label>
                					<input type="checkbox" data-price="199" data-item="570b1b2f5efb114c378b4575">
                					￥365
                					</label>
                					</p>
                				</div>
                			</div>
                			<!-- 产品结束 -->
                		</div>
                	</div>
                </div>      
                
<!-- 商品介紹 -->                
                <div class="gdetail">
                	<!-- left -->
                	<div class="aside">
                		  <h3>看了还看<span><img src="images/fod.png"width="22" height="22"/>换一批</span></h3>
                		  <dl class="ac-mod-list">
                		  	<dt><a href=""><img src="images/hdy_09.png"/></a></dt>
                		  	<dd>
                		  		  O2+车载空气净化器DM2
                		  		  <span>￥99</span>
                		  	</dd>
                		  </dl>
                		  <dl class="ac-mod-list">
                		  	<dt><a href=""><img src="images/hdy_07.png"/></a></dt>
                		  	<dd>
                		  		  O2+车载空气净化器DM2
                		  		  <span>￥99</span>
                		  	</dd>
                		  </dl>
                		  <dl class="ac-mod-list">
                		  	<dt><a href=""><img src="images/hdy_11.jpg"/></a></dt>
                		  	<dd>
                		  		  O2+车载空气净化器DM2
                		  		  <span>￥99</span>
                		  	</dd>
                		  </dl>
                	</div>
                	<!-- right -->
                	<script>
                	var detail = document.querySelector('.detail');
var origOffsetY = detail.offsetTop;
function onScroll(e) {
window.scrollY >= origOffsetY ? detail.classList.add('sticky') :
detail.classList.remove('sticky');
}
document.addEventListener('scroll', onScroll); 
</script>
                	<div class="detail">
                		<div class="active_tab" id="outer">
													<ul class="act_title_left" id="tab">
														<li class="act_active">
															<a href="#">规格参数</a>
														</li>
														<li>
															<a href="#">商品介绍</a>
														</li>
														<li>
															<a href="#">商品评价</a>
														</li>
														<li>
															<a href="#">售后保障</a>
														</li>
													</ul>
													<ul class="act_title_right">
														<li class="mui">  
															<a id="mui-a" href="#">扫手机下单+</a>
														</li>
														<li class="mui-ac">
															<a href="#">加入购物车</a>
														</li>
													</ul>
													<div class="clear"></div>
												</div>
												<div id="content" class="active_list"> 
													<!--0-->
													<div id="ui-a" class="ui-a">
												        <ul style="display:block;">
												        <li>商品名称：仙人指路道镜前后双录智能后视镜导航仪行车记录仪后视预警一体机</li>
												        <li>商品编号：ECS001983</li>
												        <li>品牌</li>
												        <li>上架时间：2016-05-24</li>
												        <li>商品毛重：0克</li>
												        <li>库存： 999 </li>
												      <!--   <li><img src="images/ko-1.jpg"/></li>
												        <li><img src="images/ko-2.jpg"/></li>
												        <li><img src="images/ko.jpg"/></li>
												        <li><img src="images/ko-1.jpg"/></li> -->
												        </ul>
												   </div>
												   <!--商品规格-->
												    	<div id="bit" class="bit">
												        <ul style="display:none;">
												            <li><img src="images/photos/img01.png"/></li>
												            <li><img src="images/photos/img02.png"/></li>
												            <li><img src="images/photos/img03.png"/></li>
												            <li><img src="images/photos/img04.png"/></li>
												            <li><img src="images/photos/img05.png"/></li>
												                
												       </ul>
												       </div>
												       
												 <!--商品评价-->      
												   
												    <div id="ui-c" class="ui-c">
												         <ul style="display:none;">
												         	
												         </ul>
												    </div>
												 <!--售后保障-->
												 <div id="uic" class="uic">
												         <ul style="display:none;">
												         	<p>商品名称：仙人指路道镜前后双录智能后视镜导航仪行车记录仪后视预警一体机</p>
												         	<p>商品编号：ECS001983</p>
												         	<p>品牌:威力马哈国产</p>
												         	<p>上架时间：2016-05-24</p>
												         	<span><img src="images/photos/img01.png"/></span>
												            <span><img src="images/photos/img02.png"/></span>
												         </ul>
												    </div>
												</div>
												<script>
													$(function(){
														window.onload = function()
														{
															var $li = $('#tab li');
															var $ul = $('#content ul');
																		
															$li.mouseover(function(){
																var $this = $(this);
																var $t = $this.index();
																$li.removeClass();
																$this.addClass('act_active');
																$ul.css('display','none');
																$ul.eq($t).css('display','block');
															})
														}
													});  
												</script>
                	</div>
                </div>
                
</body>
</html>
