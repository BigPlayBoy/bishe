<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2017/2/24
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<base href="<%=basePath%>">
<html>
<head>
    <title>用户登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" href="../../public/css/login_css/style1.css">
    <script src="../../public/js/jquery-1.11.0.min.js"></script>
    <script src="../../public/js/login_js/common.js"></script>
    <!--背景图片自动更换-->
    <script src="../../public/js/login_js/supersized.3.2.7.min.js"></script>
    <script src="../../public/js/login_js/supersized-init.js"></script>
    <!--表单验证-->
    <script src="../../public/js/login_js/jquery.validate.min.js?var1.14.0"></script>
</head>
<body>
<div class="wrap-login">
    <p>用户登录</p>
    <div class="login-container">
        <form action="mylogin.action" method="post" id="loginForm">
            <div>
                <input type="text" name="StudentId" class="username" placeholder="用户名" autocomplete="off"/>
            </div>
            <div>
                <input type="password" name="StudentPassword" class="password" placeholder="密码" oncontextmenu="return false"
                       onpaste="return false"/>
            </div>
            <button id="submit" type="submit">登 陆</button>
        </form>
        <a href="register.jsp">
            <button type="button" class="register-tis">还有没有账号？</button>
        </a>
    </div>
</div>
</body>
</html>
