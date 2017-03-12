<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/register.css">
</head>

<body>
<div class="register-wrap">
    <p>用户注册</p>
    <div class="register-container">
        <form action="register.action" method="post" id="registerForm">
            <div>
            <FONT color="red"><s:actionerror /></FONT>
                <input type="text" name="username" class="username" placeholder="您的用户名" autocomplete="off"/>
            </div>
            <div>
                <input type="password" name="password" class="password" placeholder="输入密码" oncontextmenu="return false"
                       onpaste="return false"/>
            </div>
            <div>
                <input type="password" name="confirm_password" class="confirm_password" placeholder="再次输入密码"
                       oncontextmenu="return false" onpaste="return false"/>
            </div>
            <!--<div>-->
                <!--<input type="text" name="phone_number" class="phone_number" placeholder="输入手机号码" autocomplete="off"-->
                       <!--id="number"/>-->
            <!--</div>-->
            <!--<div>-->
                <!--<input type="email" name="email" class="email" placeholder="输入邮箱地址" oncontextmenu="return false"-->
                       <!--onpaste="return false"/>-->
            <!--</div>-->

            <button id="submit" type="submit">注 册</button>
        </form>
        <a href="login.jsp">
            <button type="button" class="register-tis">已经有账号？</button>
        </a>
    </div>
</div>
</body>
<script src="js/jquery.min.js"></script>
<script src="js/common.js"></script>
<!--背景图片自动更换-->
<script src="js/supersized.3.2.7.min.js"></script>
<script src="js/supersized-init.js"></script>
<!--表单验证-->
<script src="js/jquery.validate.min.js?var1.14.0"></script>
</html>