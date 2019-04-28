<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>五洲商城注册页面</title>
    <link rel="stylesheet" href="css/all.css"/>
    <!-- <script src="js/my.js"></script> -->
	<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript">

$(function(){
	$("#btns").click(function(){
		if($(".email").val()){
					$.ajax({
						type:"POST",
						url :"SendEmailServlet?random"+Math.random(),
						data:{
							email:$(".email").val(),
						},
						success:function(data){
							alert("success");
						},
					})
		}else{
			alert("fail");
			$("#notice").html("请填写邮箱");
			setTimeout(function(){
				$("#notice").hide();
			},2000);
		}
	});
	//  判断用户是否可以注册
	$("#submit").click(function(){
		if($(".email").val()){
			$("#RegistForm").submit();
		}else{   //  如果没有值
			$("#notice").html("请完整信息");
			setTimeout(function(){
				$("#notice").hide();
			},2000);
		}
	});
});
</script>
</head>
<body>
    <!--头部-->
    <div class="header">
        <a class="logo" href="##"></a>
        <div class="desc">欢迎注册</div>
    </div>
    <!--版心-->
    <div class="container">
    	<!--五洲商城注册模块-->
    <form action="${pageContext.request.contextPath}/RegistServlet" id="RegistForm" method="post">
    	<div class="register">
    		<!--用户名-->
    		<div class="register-box">
    			<!--表单项-->
    			<div class="box default">
    				<label for="userName">用&nbsp;户&nbsp;名</label>
    				<input type="text" name="username">
    				<i></i>
    			</div>
    			<!--提示信息-->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		<!--设置密码-->
    		<div class="register-box">
    			<!--表单项-->
    			<div class="box default">
    				<label for="pwd">设 置 密 码</label>
    				<input type="password" name="password"><i></i>
    			</div>
    			<!--提示信息-->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		<!--确认密码-->
    		<div class="register-box">
    			<!-- 表单项 -->
    			<div class="box default">
    				<label for="pwd2">确 认 密 码</label>
    				<input name="repassword" type="password" id="pwd2" placeholder="请再次输入密码" />
    				<i></i>
    			</div>
    			<!-- 提示信息 -->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
			<!--设置密码-->
    		<div class="register-box">
    			<!--表单项-->
    			<div class="box default">
    				<label for="email">邮 箱 验 证</label>
    				<input type="text" name="email" class="email">
    				<!-- <input type="button" class="btn" id="btns" value="发送邮箱验证码"/> -->
    				<button id="btns" type=button>验证</button>
    				<i></i>
    			</div>
    			<!--提示信息-->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		<!--验证码-->
    		<div class="register-box">
    			<!--表单项-->
    			<div class="box default">
    				<label for="mobile">验 证 码</label>
    				<input type="text" name="code" class="code"><i></i>
    			</div>
    			<!--提示信息-->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		 <!--注册协议-->
    		<div class="register-box xieyi">
    			<!-- 表单项 -->
    			<div class="box default">
    				<input type="checkbox" id="ck" />
    				<span>我已阅读并同意<a href="##">《五洲商城用户注册协议》</a></span>
    			</div>
    		<!-- 提示信息 -->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		<!--注册-->
    		<button id="submit" type="submit">注册</button>
    	</div>
    </form>
    </div>
</body>
</html>