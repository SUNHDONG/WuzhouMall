<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/default.css" />
		<link rel="stylesheet" type="text/css" href="css/reset.css" />
		<link rel="stylesheet" type="text/css" href="css/new_file.css" />
	</head>

	<body>
		<div id="mediav_cookiemapping">
			<a href="#"></a>
		</div>
		<div id="header-bar">
			<div class="wrapper container">
				<div class="choose-city-box">
					<span class="s-title">选择城市：</span>
					<span class="s-city"> 
				  	<em class="em-city">益阳</em>
				  </span>
				</div>
				<a class="a-fav-ehaier" href="#">收藏五洲商城</a>
				<span class="s-weixin-box"><a href="">微信
					<div class="s-weixin-top">
						<img src="img/wecat.png"/ alt="微信扫描">
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
		<div class="all-header-cont">
			<div class="container">
				<h1 class="h1-site">
					<a href="#"></a>
					<img src="img/slogan.png" alt="海尔"/>
				</h1>
				<div class="all-search">
					<form class="hotsearch">
						<input class="text-search" type="text" name="" value="" />
						<input class="but-search" type="submit" name="" value="" />
					</form>
					<div class="hot-words">
						<ul>
							<li>热门搜索：</li>
							<li><a href="#">波轮洗衣机</a></li>
							<li><a href="#">电热水器 </a></li>
							<li><a href="#">三门冰箱 </a></li>
							<li><a href="#">滚筒洗衣机 </a></li>
							<li><a href="#">空调 </a></li>
							<li><a href="#">智能彩电</a></li>
							<li><a href="#">冰箱 </a></li>
						</ul>
					</div>
				</div>
				<div class="head-promise">
					<a class="a-promiseFreeship" href="#">全场免运费</a>
					<a class="a-promiseDeliverinstall" href="#">送装同步</a>
					<a class="a-promiseSatisfy" href="#">满意再付款</a>
				</div>
			</div>
		</div>
		<div class="nav">
			<div class="container">
				<div class="clearfix">
					<ul class="all-category-box">
						<p>商品分类</p>
					   <div class="all-category-box-top container">
		                   <div class="all-category-box-top1">
		    	               <dl class="dl-category-box-top1">
		    		             <dt> <a href="">冰箱</a></dt>
						         <dd><a href="">单门 </a>| <a href="">两门 </a>| <a href="">三门 </a>|<a href=""> 多门 </a>|</dd>
						         <dd><a href="">对开门</dd>
		    	              </dl>		
		    		            <dl  class="dl-category-box-top1">
		    			         <dt><a href="">家用空调</a></dt>
							     <dd><a href="">壁挂式空调 </a>| <a href="">柜式空调 |</a></dd>
							     <dd><a href=""><a href="">空气类产品  </a></dd>
						      </dl>
						     <dl class="dl-category-box-top1">
							     <dt><a href="">商用空调 </a></dt>
							     <dd><a href="">家用中央空调  </a>| <a href="">嵌入机</a> | </dd>
							     <dd><a href="">商用柜机 </dd>
		    		         </dl>
		    		         <dl  class="dl-category-box-top1">
		    			         <dt><a href="">洗衣机</dt>
		    			         <dd><a href="">双缸 </a>|<a href=""> 波轮 </a>|<a href=""> 滚筒</a> |<a href=""> 免清洗</a> | </dd>
							     <dd><a href="">mini </a>|<a href=""> 洗烘一体</a> |<a href=""> 干衣机</a></dd>
						      </dl>
						   <dl class="dl-category-box-top1">
							     <dt><a href="">冰柜</a></dt>
							     <dd><a href="">冰吧 </a>| <a href="">酒柜 </a>|<a href=""> 冷柜</a> |<a href=""> 展示柜</a> </dd>
						   </dl>
				         </div>
				         <div class="all-category-box-top2">
					          <dl class="dl-category-box-top2">
						        <dt><a href="#">电视</a></dt>
						        <dd><a href="#">智能电视</a> | <a href="#">LED电视</a> | 4<a href="#">K电视</a></dd>
						        <dd><a href="#">| 电视附件</a> </dd>
					         </dl>
					         <dl class="dl-category-box-top2">
						       <dt><a href="#">电脑</a></dt>
						       <dd><a href="#">笔记本 </a>| <a href="#">平板电脑</a> | <a href="#">台式电脑 </a></dd>
						       <dd>| <a href="#">电脑一体机 </a></dd>
					         </dl>
					       <dl class="dl-category-box-top2">
						     <dt><a href="#">智能产品</a></dt>
						       <dd><a href="#">智能洁身器 </a>|<a href="#"> 无线智能充电 </a>| </dd>
						       <dd><a href="#">插线板 </a>| <a href="#">智能扫地机</a> |</dd>
						       <dd><a href="#">智能私人影院</a> | <a href="#">智能摄像头</a> |</dd>
						       <dd><a href="#">智能音箱 </a>|<a href="#"> 智能插座</a> | </dd>
						       <dd><a href="#">空气盒子 </a>| <a href="#">手持mini洗衣机</a> | </dd>
						       <dd><a href="#">甲醛监测仪</a> | <a href="#">智能安防</a></dd>
					       </dl>
				         </div>
				         <div class="all-category-box-top3">
					        <dl class="dl-category-box-top3">
						      <dt><a href="">热水器</a></dt>
						      <dd><a href="#">电热水器 </a>|<a href="#"> 燃气热水器 </a>| </dd>
						      <dd><a href="#">小厨宝</a> | <a href="#">浴椅</a> | <a href="#">太阳能热水器</a></dd>
					       </dl>
					       <dl class="dl-category-box-top3">
						      <dt><a href="#">厨房电器</a></dt>
						      <dd><a href="#">烟灶套系</a> | <a href="#">吸油烟机</a> | <a href="#">燃气灶</a> </dd>
						      <dd>|<a href="#">消毒柜</a> | <a href="#">电烤箱 </a>|<a href="#"> 洗碗机</a></dd>
					      </dl>
					      <dl class="dl-category-box-top3">
						    <dt><a href="#">家电</a></dt>
						    <dd><a href="#">饮水机 </a>| <a href="#">净水机 </a>| <a href="#">智饮机 </a>| </dd>
						    <dd><a href="#">养生壶</a></dd>
					     </dl>
				        </div>
				       <div class="all-category-box-top4">
					       <dl class="dl-category-box-top4">
						    <dt><a href="#">数码</a></dt>
						    <dd><a href="#">数码摄像机 </a>| 投影仪 </a>|</dd>
						    <dd><a href="#">数码相框</a> | <a href="#">路由器 </a>|</dd>
						    <dd><a href="#">行车记录仪</a></dd>
					     </dl>
					     <dl class="dl-category-box-top4">
						   <dt><a href="#">手机</a></dt>
						   <dd><a href="#">4G手机</a> |<a href="#"> 3G手机</a></dd>
					     </dl>
				    </div>
				    <div class="all-category-box-top5">
					    <dl class="dl-category-box-top5">
						  <dt><a href="#">生活小家电</a></dt>
						  <dd><a href="#">吸尘器 </a>| <a href="#">挂烫机</a> |<a href="#"> 空气净化器</a></dd>
						  <dd>|<a href="#"> 电暖器</a></dd>
					    </dl>
					    <dl class="dl-category-box-top5">
						  <dt><a href="#">厨房小家电</a></dt>
						  <dd><a href="#">原汁机 </a>|<a href="#"> 榨油机</a> |<a href="#"> 豆浆机</a> |</dd>
						  <dd><a href="#">电水壶</a> | <a href="#">微波炉</a> | <a href="#">电压力锅</a> |</dd>
						  <dd><a href="#">电饭煲</a> | <a href="#">电磁炉</a></dd>
					    </dl>
					    <dl class="dl-category-box-top5">
						  <dt><a href="#">家居</a></dt>
						  <dd><a href="#">电风扇</a> | <a href="#">LED台灯</a></dd>
					    </dl>
					    <dl class="dl-category-box-top5">
						   <dt><a href="#">母婴家电</a></dt>
						   <dd><a href="#">消毒锅</a> |<a href="#"> 调奶器</a> | <a href="#">搅拌机</a> |</dd>
						    <dd><a href="#">母婴优养套系</a></dd>
					    </dl>
				    </div>
				    <div class="all-category-box-top6">
					    <dl class="dl-category-box-top6">
						  <dt><a href="#">洗护配方</a></dt>
						  <dd><a href="#">净洗配方</a></dd>
					    </dl>
					    <dl class="dl-category-box-top6">
						   <dt><a href="#">家庭医疗</a></dt>
						   dd><a href="#">按摩器 </a>| <a href="#">电子体温计</a> |</dd>
						   <dd><a href="#">电子血压计</a> | <a href="#">制氧机 </a>|<a href="#"> 血氧仪</a></dd>
						   <dd>| <a href="#">胎心仪</a> |<a href="#"> 血糖仪</a></dd>
					    </dl>
					    <dl class="dl-category-box-top6">
						   <dt><a href="#">延保服务</a></dt>
						   <dd><a href="#">延保卡</a></dd>
					    </dl>
				    </div>
				    <div class="all-category-box-top7">
					     <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1754805653&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:1754805653:41" alt="点击这里给我发消息" title="点击这里给我发消息"/>在线客服</a>
				    </div>
			     </div>
			  </ul>
			  <ul>
				<li><a href="#" target="_blank">首页</a></li>
				<li><a href="#" target="_blank">精品汇</a></li>
				<li><a href="#" target="_blank">我要定制</a></li>
				<li><a href="#" target="_blank">酷玩新品</a></li>
				<li><a href="#" target="_blank">会员俱乐部</a></li>
				<li><a href="#" target="_blank">线下体验店</a></li>
			  </ul>
		    </div>
		      <div class="mini-cart">
			    <p class="p-mini-cart">
				  <span class="s-title">购物车</span>
			    </p>
		      </div>
	    </div>
    </div>
    <div id="banner">
        <img src="img/56efdc653e7ea60a5d248832.png" alt="海尔无氟变频空调" title="海尔无氟变频空调"/>
    </div>
    <div class="container index-hot">
          	<div class="index-hot-top"><a href="#"><img src="img/56efa8d53e7ea60a5d248825.png"/></a></div>
          	<div class="index-hot-top"><a href="#"><img src="img/56efbded3e7ea60a5d248831.png"/></a></div>
          	<div class="index-hot-top"><a href="#"><img src="img/56ea86a358e1e4157144be0c1.png.jpg"/></a></div>
          	<div class="index-hot-top"><a href="#"><img src="img/56ef62853e7ea60a5d248801.png.jpg"/></a></div>
    </div>         
    <div class="lazybox container">
          	<h2>精品推荐</h2>
          	<div class="excel-recom-list">
          		<dl class="dl-recom-item dl-recom-item-1">
          			热卖商品
          		</dl>
          		<dl class="dl-recom-item dl-recom-item-2">
          			<dt><a href="#">冰箱</a></dt>
          			<dd><a href="#">单门 </a>| <a href="#">两门 </a>| <a href="#">三门</a></dd>
          			<dd><a href="#">多门</a> | <a href="#">对开门</a></dd>
          		</dl>
          		<dl class="dl-recom-item dl-recom-item-3">
          			<dt><a href="#">洗衣机</a></dt>
          			<dd><a href="#">波轮</a> |<a href="#"> 滚筒</a></dd>
          			<dd><a href="#">mini</a> | <a href="#">双动力</a></dd>
          		</dl>
          		<dl class="dl-recom-item dl-recom-item-4">
          			<dt><a href="#">电视</a></dt>
          			<dd><a href="#">智能电视</a> | <a href="#">LED电视 </a></dd>
          			<dd><a href="#">智能电视 </a>| <a href="#">LED电视</a> </dd>
          		</dl>
          		<dl class="dl-recom-item dl-recom-item-5">
          			<dt><a href="#">空调</a></dt>
          			<dd><a href="#">壁挂式空调</a> | <a href="#">柜式空调 </a></dd>
          			<dd><a href="#">家用中央空调</a> | <a href="#">空气魔方</a></dd>
          		</dl>
          		<dl class="dl-recom-item dl-recom-item-6">
          			<dt><a href="#">热水器</a></dt>
          			<dd><a href="#">电热水器</a> | <a href="#">浴椅 </a></dd>
          			<dd>|<a href="#"> 燃气热水器</a></dd>
          		</dl>
          		<dl class="dl-recom-item dl-recom-item-7">
          			<dt><a href="#">厨房电器</a></dt>
          			<dd><a href="#">烟灶套系</a> | <a href="#">吸油烟机</a></dd>
          			<dd><a href="#">燃气灶 </a>| <a href="#">消毒柜</a> | <a href="#">洗碗机</a></dd>
          		</dl>
          		<dl class="dl-recom-item dl-recom-item-8">
          			<dt><a href="#">生活家电</a></dt>
          			<dd><a href="#">生活小家电 </a>| <a href="#">厨房小家电</a></dd>
          			<dd><a href="#">家庭医疗</a> |<a href="#"> 水家电</a> | 数码</a></dd>
          		</dl>
          	</div>
          	<ul class="ul-excel">
          		<li class="li-excel">          			
          			<a href="detail.jsp"><img src="img/56f103b558e1af7551cf671c.png"/></a>
          			<h4 class="h4-pro-title">
          				<a href="detail.jsp">
          				  <span class="a-title">行车记录仪</span>
          				  <em class="em-info">尊享版S1</em>
          				  <span class="a-abs" title="【完美会员日】活动时间：12月20日-12月22日24:00，活动价仅需699元！下单立减100元,仅需599元！">
          				  	【完美会员日】活动时间：12月20日-12月22日
          				  </span>	
          				  <em class="em-price">￥699</em>
          				</a>
          			</h4>
          			<a href="#" class="a-tag" style="background:#D71249">下单立享599元</a>         			
          		</li>
          		<li class="li-excel">
          			<a href="#"><img src=" img/56f1109bb7027af9b3ef0394.png"/></a>
          			<h4 class="h4-pro-title">
          				<a href="#">
          				  <span class="a-title">海尔高效定频柜式空调</span>
          				  <em class="em-info">KFR-50LW/08UBC13U1(茉莉白)套机</em>
          				  <span class="a-abs" title="【完美会员日】活动时间：3月20日0:00-3月22日24:00，活动价仅需1099元！下单立减100元,仅需999元！">
          				  	【完美会员日】活动时间：3月20日0:00-3月22日
          				  </span>
          				  <em class="em-price">￥4799</em>
          				</a>
          			</h4>
          			<a href="#" class="a-tag" style="background:#FFA800">三年免费换新机</a>   
          		</li>
          		<li class="li-excel">
          			<a href="#"><img src="img/55bae259fac0a3e7127ea7d3.png"/></a>
          			<h4 class="h4-pro-title">
          				<a href="#">
          				  <span class="a-title">海尔电饭煲</span>
          				  <em class="em-info">HRC-WFS4020</em>
          				  <span class="a-abs" title="【完美会员日】活动时间：3月20日0:00-3月22日24:00，活动价仅需1099元！下单立减100元,仅需999元！">
          				  	【完美会员日】活动时间：3月20日0:00-3月22日
          				  </span>
          				  <em class="em-price">￥399</em>
          				</a>
          			</h4>
          			<a href="#" class="a-tag" style="background:#D71249">12大烹饪功能  全能王</a>   
          		</li>
          		<li class="li-excel">
          			<a href="#"><img src="img/564aabb43e7e9b5defbebd58.png"/></a>
          			<h4 class="h4-pro-title">
          				<a href="#">
          				  <span class="a-title">海尔电磁炉</span>
          				  <em class="em-info">C21-H1107</em>
          				  <span class="a-abs" title="【完美会员日】活动时间：3月20日0:00-3月22日24:00，活动价仅需1099元！下单立减100元,仅需999元！">
          				  	【完美会员日】活动时间：3月20日0:00-3月22日
          				  </span>
          				  <em class="em-price">￥159</em>
          				</a>
          			</h4>
          			<a href="#" class="a-tag" style="background:#D71249">下单立享999元</a>   
          		</li>
          		<li class="li-excel">
          			<a href="#"><img src="img/56ed72d1b702458dfdefde9c.png"/></a>
          			<h4 class="h4-pro-title">
          				<a href="#">
          				  <span class="a-title">海尔4K电视</span>
          				  <em class="em-info">LS55A51</em>
          				  <span class="a-abs" title="【完美会员日】活动时间：3月20日0:00-3月22日24:00，活动价仅需1099元！下单立减100元,仅需999元！">
          				  	【完美会员日】活动时间：3月20日0:00-3月22日
          				  </span>
          				  <em class="em-price">￥2999</em>
          				</a>
          			</h4>
          			<a href="#" class="a-tag" style="background:#D71249">买即送智能插排1元兑换券</a>   
          		</li>
          		<li class="li-excel">
          			<a href="#"><img src="img/56eccd95b702458dfdefde96.png"/></a>
          			<h4 class="h4-pro-title">
          				<a href="#">
          				  <span class="a-title">海尔滚筒洗衣机</span>
          				  <em class="em-info">XQG70-12833 电商</em>
          				  <span class="a-abs" title="【完美会员日】活动时间：3月20日0:00-3月22日24:00，活动价仅需1099元！下单立减100元,仅需999元！">
          				  	【完美会员日】明日价格跳回至2999，活动
          				  </span>
          				  <em class="em-price">￥1999</em>
          				</a>
          			</h4>
          			<a href="#" class="a-tag" style="background:#D71249">无刷变频 除菌液预洗 0点开抢</a>   
          		</li>
          		<li class="li-excel">
          			<a href="#"><img src='img/56ea283e3e7eb6111a2e1c9b.png'></a>
          			<h4 class="h4-pro-title">
          				<a href="#">
          				  <span class="a-title">统帅高效定频柜式空调</span>
          				  <em class="em-info">KFR-72LW/08PAQ13TU1套机</em>
          				  <span class="a-abs" title="【完美会员日】活动时间：3月20日0:00-3月22日24:00，活动价仅需1099元！下单立减100元,仅需999元！">
          				  	【完美会员日】统帅3匹除甲醛高效定频柜式
          				  </span>
          				  <em class="em-price">￥5999</em>
          				</a>
          			</h4>
          			<a href="#" class="a-tag" style="background:#32BEFF">20-50㎡适用98.67%甲醛除去率</a>  
          		</li>
          		<li class="li-excel">
          			<a href="#"><img src="img/56ebd8aa58e141961259aabc.png"/></a>
          				<h4 class="h4-pro-title">
          				<a href="#">
          				  <span class="a-title">海尔高效定频柜式空调</span>
          				  <em class="em-info">KFR-50LW/08UAP23AU1套机</em>
          				  <span class="a-abs" title="【完美会员日】活动时间：3月20日0:00-3月22日24:00，活动价仅需1099元！下单立减100元,仅需999元！">
          				  	KFR-50LW/08UAP23AU1套机，活动价仅需5999
          				  </span>
          				  <em class="em-price">￥6299</em>
          				</a>
          			</h4>
          			<a href="#" class="a-tag" style="background:#D71249">20-50㎡适用98.67%甲醛除去率</a>  
          		</li>
          		<li class="li-excel">
          			<a href="#"><img src="img/55f7c6a2b702bb9fa6aad078.png"/></a>
          			<h4 class="h4-pro-title">
          				<a href="#">
          				  <span class="a-title">海尔电压锅</span>
          				  <em class="em-info">HPC-YLS5017B</em>
          				  <span class="a-abs" title="【完美会员日】活动时间：3月20日0:00-3月22日24:00，活动价仅需1099元！下单立减100元,仅需999元！">
          				  	【完美会员日】海尔智能电压力锅，一锅多用
          				  </span>
          				  <em class="em-price">￥359</em>
          				</a>
          			</h4>
          			<a href="#" class="a-tag" style="background:#D71249">海尔电压力锅</a> 
          		</li>
          		<li class="li-excel">
          			<a href="#"><img src="img/56d4fea9b70279a1fa45ef30.png"/></a>
          			<h4 class="h4-pro-title">
          				<a href="#">
          				  <span class="a-title">海尔冰箱</span>
          				  <em class="em-info">BCD-255SFM</em>
          				  <span class="a-abs" title="【完美会员日】活动时间：3月20日0:00-3月22日24:00，活动价仅需1099元！下单立减100元,仅需999元！">
          				  	【完美会员日】海尔智能电压力锅，一锅多用
          				  </span>
          				  <em class="em-price">￥1699</em>
          				</a>
          			</h4>
          			<a href="#" class="a-tag" style="background:#D71249">三门节能冰箱，三天月一度电！</a> 
          		</li>
          		<li class="li-excel">
          			<a href="#"><img src="img/56efbded3e7ea60a5d24882f.png"/></a>
          				<h4 class="h4-pro-title">
          				<a href="#">
          				  <span class="a-title">海尔冰箱</span>
          				  <em class="em-info">BCD-648WDBE</em>
          				  <span class="a-abs" title="【完美会员日】活动时间：3月20日0:00-3月22日24:00，活动价仅需1099元！下单立减100元,仅需999元！">
          				  	【热销爆款】特惠价3899元，3:20日0:00
          				  </span>
          				  <em class="em-price">￥3899</em>
          				</a>
          			</h4>
          			<a href="#" class="a-tag" style="background:#D71249">684升超大容量对开门冰箱</a> 
          		</li>
          		<li class="li-excel">
          			<a href="#"><img src="img/56ea24b93e7eb6111a2e1c94.png"/></a>
          				<h4 class="h4-pro-title">
          				<a href="#">
          				  <span class="a-title">海尔小超人空调</span>
          				  <em class="em-info">KFR-26GW/08AHBP-3套机</em>
          				  <span class="a-abs" title="【完美会员日】活动时间：3月20日0:00-3月22日24:00，活动价仅需1099元！下单立减100元,仅需999元！">
          				  	【热销爆款】特惠价2199元！数量有限，抢到即赚！
          				  </span>
          				  <em class="em-price">￥2199</em>
          				</a>
          			</h4>
          			<a href="#" class="a-tag" style="background:#32BEFF">12-18㎡适用手机操控更</a> 
          		</li>
          	</ul>
          	<div class="index-news container">
          		<h2>新品发布</h2>
          		<div class="resize-item" style="width:247px ;">
          			<a href="#"><img src="img/56f0ff05b7027af9b3ef038c.png"/></a>
          		</div>
          		<div class="resize-item" style="width:227px ;">
          			<a href="#"><img src="img/56ed73fd3e7ea60a5d2487e3.png"/></a>
          		</div>
          		<div class="resize-item" style="width: 217px;">
          			<a href="#"><img src="img/56ef6f69fac0eec16325b4b9.png"/></a>
          		</div>
          		<div class="resize-item" style="width: 227px;">
          			<a href="#"><img src="img/56f116753e7ea60a5d24883e.png"/></a>
          		</div>
          		<div class="resize-item" style="width:247px ;">
          			<a href="#"><img src="img/56e7e0a658e10adc9a90dc17.png"/></a>
          		</div>
          	</div>
          	<div class="index-diy container">
          		<h2>我要定制</h2>
          		<div class="resize-item" style="width: 247px;">
          			<a href="#"><img src="img/56f100313e7ea60a5d24883c.png"/></a>
          		</div>
          		<div class="resize-item" style="width: 227px;">
          			<a href="#"><img src="img/56f1109bb7027af9b3ef0394.png"/></a>
          		</div>
          		<div class="resize-item" style="width: 217px;">
          			<a href="#"><img src="img/56ed78adfac0eec16325b4af.png"/></a>
          		</div>
          		<div class="resize-item">
          			<a href="#"><img src="img/56c2e63d58e1ebfdc1a22c2b.png"/></a>
          		</div>
          	</div>
          	<div class="bulletin-board">          		
          			<div class="design-online  others">
          				<h1>欢迎</h1>
          				<h3><a href="javascript:;">互动社区
          				     <span class="go-brownLeft"></span>
          				</a></h3>
          				<div class="img"><img src="img/gobbs_04.png" alt="互动社区"/></div>
          				<ul class="Left">
          					<li><a href="#">· 社区搬家公告</a></li>
	          				<li><a href="#">· 最新有奖活动</a></li>
	          				<li><a href="#">· 家电百科知识</a></li>
          				</ul>
          			</div>
          		    <div class="design-online  others">
          				<h3><a href="javascript:;">知识堂
          					<span class="go-brownCenter"></span>
          				</a></h3>
          				<ul class="Center">
          					<li><a href="##">· 五洲商城网上支付方式方法大全</a></li>
	          				<li><a href="#">· 海尔洗衣机怎么样</a></li>
	          				<li><a href="#">· 空调制冷效果差怎么办？</a></li>
	          				<li><a href="#">· 滚筒洗衣机安装方法</a></li>
	          				<li><a href="#">· 【2018冰箱排行榜】海尔冰箱销售排行榜</a></li>
          				</ul>
          			</div>
          			<div class="design-online  others clearfloat">
          				<h3><a href="#">商城公告
          					<span class="go-brownRight"></span>
          				</a></h3>
          				<ul class="Right">
          					<li><a href="#">· “春节不打烊 二月开门红”活动中奖公示</a></li>
	          				<li><a href="#">· “年货街”品类满赠活动中奖公示</a></li>
	          				<li><a href="#">· 2018春节期间配送时间调整公告</a></li>
	          				<li><a href="#">· 关于西藏三个区县停运和顺丰转寄业务业务暂停公告</a></li>
	          				<li><a href="#">· “12月统帅品牌日”品类满赠活动中奖公示</a></li>
          				</ul>
          			</div>
          		<div class="clarfex"></div>	
          		<div class=" all-services">
          		     <div class="services-left">
          			    <p>售后服务和保修政策</p>
          			    <ul>
          			    	<li><a href="#">冰箱冰柜 </a></li>
          			    	<li><a href="#">洗衣机 </a></li>
          			    	<li><a href="#">彩电 </a></li>
          			    	<li><a href="#">空调 |</a></li>
          			    	<li><a href="#">热水器 |</a></li>
          			    	<li><a href="#">电脑 |</a></li>
          			    	<li><a href="#">厨房电器 |</a></li>
          			    	<li><a href="#">生活小家电 |</a></li>
          			    	<li><a href="#">手机数码 |</a></li>
          			    </ul>   
          		    </div>
          		    <div class="services-right">
          		       <span class="services-right-kefu"><a href="#">在线客服</a></span>
          			   <span class="services-right-weixin"><a href="#">微信客服</a></span>          			   
          		    </div>
          	    </div>
          	</div>          	
    </div>
          <div class="all-help-wrap container">
          	<dl  class="dl-help-wrap">
          		<dt>购物指南</dt>
          		<dd><a href="#">注册登录</a></dd>
          		<dd><a href="#">密码相关</a></dd>
          		
          		<dd><a href="#">购物流程</a></dd>
          		<dd><a href="#">交易条款</a></dd>
          	</dl>
          	<dl  class="dl-help-wrap">
          		<dt>支付方式</dt>
          		<dd><a href="#">到货付款</a></dd>
          		<dd><a href="#">网银支付</a></dd>
          		
          		<dd><a href="#">发票说明</a></dd>
          		<dd><a href="#">电子支付</a></dd>
          	</dl>
          	<dl  class="dl-help-wrap">
          		<dt>物流配送</dt>
          		<dd><a href="#">日日顺配送</a></dd>
          		<dd><a href="#">配送服务查询</a></dd>
          		
          		<dd><a href="#">全场免运费</a></dd>
          		<dd><a href="#">送装同步</a></dd>
          		<dd><a href="#">24小时限时达</a></dd>
          	</dl>
          	<dl  class="dl-help-wrap">
          		<dt>售后服务</dt>
          		<dd><a href="#">投诉咨询</a></dd>
          		<dd><a href="#">退换货说明</a></dd>
          	
          		<dd><a href="#">安装/维修</a></dd>
          		<dd><a href="#">售后服务政策</a></dd>
          		<dd><a href="#">服务时效承诺</a></dd>         		
          	</dl>
          	<dl  class="dl-help-wrap">
          		<dt>特色服务</dt>
          		<dd><a href="#">新品试用</a></dd>
          		<dd><a href="#">体验满意后再付款</a></dd>
          		
          		<dd><a href="#">价格保护</a></dd>
          		<dd><a href="#">按约送达 超时免单</a></dd>
          </div>
          <div class="all-footer">
          	<div class="container">
          		<p>
          			<a href="#">购物流程 </a> |
          			<a href="#">付款方式</a>  |
          			<a href="#">售后服务 </a> |
          			<a href="#">投诉建议 </a> |
          			<a href="#">友情链接</a> |
          			<a href="#">加入我们</a> |
          			<a href="#">五洲知识堂</a> |
          		</p>
          		<p>
          			网站备案/许可证号：
          			<a href="#">鲁ICP备09096283号</a>
          		</p>
          		<p>Copyright©2018-2019 五洲集团电子商务有限公司 All Rights Reserved</p>
          		<p class="p-all-honor">
          			<a href="#"><img src="img/50c6c153a103a74d19000040.png"/></a>
          			<a href="#"><img src="img/50c6c153a103a74d19000041.png"/></a>
          			<a href="#"><img src="img/50c6c153a103a74d19000042.png"/></a>
          			<a href="#"><img src="img/50c6c153a103a74d19000044.png"/></a>
          			<a href="#"><img src="img/50f7b61ce48435121700008e.jpg"/></a>
          			<a href="#"><img src="img/cnnic.png"/></a>
          			<a href="#"><img src="img/beian.gif"/></a>
          		</p>
          	</div>
          </div>
          <div class="all-tipbar-show">
          	<a class="all-tipbar-show-top" href="#"></a>
          	<!-- <a class="all-tipbar-show-center" href="#"></a> -->
          	<a class="all-tipbar-show-center" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1754805653&site=qq&menu=yes"></a>
          	<a class="all-tipbar-show-bottom" href="#"></a>
          </div>
	</body>

</html>