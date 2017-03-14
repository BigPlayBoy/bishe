<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2017/2/21
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>

    <title>用户注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" href="../../public/css/login_css/register.css">
    <script src="../../public/js/jquery-1.11.0.min.js"></script>
    <script src="../../public/js/login_js/common.js"></script>
    <!--背景图片自动更换-->
    <script src="../../public/js/login_js/supersized.3.2.7.min.js"></script>
    <script src="../../public/js/login_js/supersized-init.js"></script>
    <!--表单验证-->
    <script src="../../public/js/login_js/jquery.validate.min.js?var1.14.0"></script>
</head>
<body>

<div class="register-wrap">
    <p>用户注册</p>
    <div class="register-container">
        <form action="register.action" method="post" ><%-- id="registerForm"--%>
            <div><FONT color="red"><s:actionerror/></FONT></td><!--显示错误信息 --></div>
            <div>
                <input type="text" name="studentId" class="username" placeholder="您的用户名" autocomplete="off"/>
            </div>
            <div>
                <input type="password" name="password" class="password" placeholder="输入密码" oncontextmenu="return false"
                       onpaste="return false"/>
            </div>
            <div>
                <input type="password" name="confirm_password" class="confirm_password" placeholder="再次输入密码"
                       oncontextmenu="return false" onpaste="return false"/>
            </div>
            <div>
                <input type="text" name="studentName" class="" placeholder="输入姓名" autocomplete="off"
                       id="number"/>
            </div>
            <!--<div>-->
            <!--<input type="email" name="email" class="email" placeholder="输入邮箱地址" oncontextmenu="return false"-->
            <!--onpaste="return false"/>-->
            <!--</div>-->

            <button id="submit" type="submit">注 册</button>
        </form>
        <a href="login.html">
            <button type="button" class="register-tis">已经有账号？</button>
        </a>
    </div>
</div>
</body>
</html>
