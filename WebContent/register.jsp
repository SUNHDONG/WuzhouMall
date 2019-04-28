<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录注册界面</title>
<style type="text/css">
</style>
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
<form action="${pageContext.request.contextPath}/RegistServlet" method="post">
		
			<input type="text" name="username">
			<input type="password" name="password">
			<input type="text" name="email" class="email">
			<input type="button" class="btn" id="btns" value="发送邮箱验证码"/>
			<input type="text" name="code" class="code">

			<input type="submit" id="submit" value="注册">
		
	
 </form>
</body>
</html>