<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="description" content="This is my page">
	<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="login/login/css/style.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <body>
    <div class="wrap-login">
		<p>用户登录</p>
		<div class="login-container">
			<form action="mylogin.action" method="post" id="loginForm">
				<div>
					<input type="text" name="StudentId" class="StudentId"
						placeholder="学号" autocomplete="off" />
						<input type="radio" name="role" value="student" hidden checked="checked">
				</div>
				<div>
					<input type="password" name="StudentPassword" class="password"
						placeholder="密码" oncontextmenu="return false"
						onpaste="return false" />
				</div>
				<button id="submit" type="submit">登 陆</button>
			</form>
			<a href="register.jsp">
				<button type="button" class="register-tis">还有没有账号？</button>
			</a>
		</div>
	</div>
	<script src="login/login/js/jquery.min.js"></script>
	<script src="login/login/js/common.js"></script>
	<!--背景图片自动更换-->
	<script src="login/login/js/supersized.3.2.7.min.js"></script>
	<script src="login/login/js/supersized-init.js"></script>
	<!--表单验证-->
	<script src="login/login/js/jquery.validate.min.js?var1.14.0"></script>
	</div>
  </body>
</html>
