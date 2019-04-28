<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>五洲商城登录页面</title>
    <link rel="stylesheet" href="css/all.css"/>
    <script src="js/my.js"></script>
    <script>
        // 1、获得焦点，内容为空，tip默认提示
        // 2、失去焦点，内容为空，tip为隐藏
        // 3、其他情况（按键抬起，失去焦点且内容不为空，或最后表单总验证）
        //    按键抬起为空，报错，不能为空
        //    内容匹配，成功
        //    内容不匹配，失败
        // 4、密码要进行安全等级检测，含数字、字母、特殊字符为强，两种为中，一种为弱
        // 5、确认密码失去焦点的时候就要验证是否一致
    </script>
</head>
<body>
    <!--头部-->
    <div class="header">
        <a class="logo" href="##"></a>
        <div class="desc">欢迎登录</div>
    </div>
    <!--版心-->
    <div class="container">
    	<!--五洲商城注册模块-->
    <form action="LoginServlet" method="post">
    	<div class="register">
    		<!--用户名-->
    		<div class="register-box">
    			<!--表单项-->
    			<div class="box default">
    				<label for="userName">用&nbsp;户&nbsp;名</label>
    				<input name="username" type="text" id="userName" placeholder="您的账户名和登录名" />
    				<i></i>
    			</div>
    			<!--提示信息-->
    			<!-- <div class="tip">
    				<i></i>
    				<span></span>
    			</div> -->
    		</div>
    		<!--设置密码-->
    		<div class="register-box">
    			<!--表单项-->
    			<div class="box default">
    				<label for="pwd">密 &nbsp;码</label>
    				<input name="password" type="password" id="pwd" placeholder="建议至少两种字符组合" />
    				<i></i>
    			</div>
    			<!--提示信息-->
    			<%--<div class="tip">
    				<i></i>
    				<span></span>
    			</div>--%>
    		</div>

			<!--注册协议-->
			<div class="register-box xieyi">
				<!--表单项-->
				<div class="box default">
					<input type="checkbox" id="ck" />
					<span>我已阅读并同意<a href="##">《五洲商城用户注册协议》</a></span>
				</div>
				<!--提示信息-->
				<div class="tip">
					<i></i>
					<span></span>
				</div>
			</div>
    		<!--注册-->
    		<button id="btn" type="submit">登录</button>
    	</div>
    </form>
    </div>
</body>
</html>