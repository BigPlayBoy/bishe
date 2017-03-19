<%--
  Created by IntelliJ IDEA.
  User: 11517
  Date: 2017/3/16
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="shortcut icon" type="image/x-icon" href="../../images/icon.ico" media="screen"/>
    <link type="text/css" rel="stylesheet" href="../../public/css/public2.css">
    <link type="text/css" rel="stylesheet" href="../../public/css/reset.css">
    <link type="text/css" rel="stylesheet" href="../../public/css/public.css">
    <link type="text/css" rel="stylesheet" href="../../public/css/score_test_css/score_test.css">
    <script type="text/javascript" src="../../public/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="../../public/js/public_js.js"></script>
    <style type="text/css">
        <!--
        .STYLE3 {font-size: 18px; }
        .STYLE4 {font-size: 18px; font-weight: bold; }
        .STYLE5 {color: #FF0000}
        -->
    </style>

    <script type="text/javascript">
        var ksTime; //定义考试时间以分钟计算
        ksTime = 120; //设置时间 这里设置为0.1代表是6秒,测试用
        if (readCookie("ss") == "") {
            setCookie("ss", new Date(), ksTime / 60);
        }
        function sT() {
            var tti = new Date();
            var lt = parseInt((tti - new Date(readCookie("ss"))) / 1000)
            if ((ksTime * 60 - lt) < 0) {
                setCookie("ss", new Date(), 0);
                alert("考试时间到!\n即将提交试卷!");
                document.forms[0].submit();
            } else {
                lm = Math.floor(lt / 60);
                ls = lt % 60;
                allY = ksTime * 60 - lt;
                ym = Math.floor(allY / 60);
                ys = allY % 60;
                document.getElementById("tTime").innerHTML = "考试已经开始了" + lm + "分" + ls + "秒" + ",剩余" + ym + "分" + ys + "秒";
                var ttt = setTimeout("sT()", 1000);
            }
        }
        function readCookie(name) {
            var cookieValue = "";
            var search = name + "=";
            if (document.cookie.length > 0) {
                offset = document.cookie.indexOf(search);
                if (offset != -1) {
                    offset += search.length;
                    end = document.cookie.indexOf(";", offset);
                    if (end == -1)
                        end = document.cookie.length;
                    cookieValue = document.cookie.substring(offset, end)
                }
            }
            return cookieValue;
        }
        function setCookie(name, value, hours) {
            var expire = "";
            if (hours != null) {
                expire = new Date((new Date()).getTime() + hours * 3600000);
                expire = "; expires=" + expire.toGMTString();
            }
            document.cookie = name + "=" + value + expire;
        }
    </script>

</head>
<body>
<div id="header">
    <div class="header-content">
        <div class="logo fl pr">
            <img src="../../images/logo1.png">
            <p class="fl">计信学院精品课程</p>
        </div>
        <div class="nav fl">
            <ul>
                <li><a href="../../index.jsp" target="_blank">首页</a></li>
                <li><a href="../ppt_sourse/ppt_sourse.jsp" target="_blank">教材</a></li>
                <li><a href="../video_course_sourse/video_course_sourse.jsp" target="_blank">视频</a></li>
                <li><a href="../liuyanban/message.jsp" target="_blank">讨论</a></li>
                <li><a href="#">考试</a></li>
            </ul>
        </div>
        <div class="person fr">
            <p>欢迎你：${sessionScope.studentInfo.studentName}</p>
            <div class="person-hide">
                <!--<select class="">退出</select>-->
                <a href="javascript:;">退出</a>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    var $person=$("#header .header-content .person");
    var $personhide=$("#header .header-content .person .person-hide");
    $person.hover(function () {
//        alert("你好！");
//        $personhide.css("display","block");
        $personhide.slideDown(500);
    },function () {
//        $personhide.css("display","none");
        $personhide.slideUp(500);
    })
</script>
<div class="person-info">
    <div class="p-i-size"><span class="fl">现在是:</span><span class="time1 fl"></span>
    </div>
</div>
<div class="test-container">
    <div class="nav clearfix">
        <div class="logo">
            <a class="logo1"><img src="../../images/course_sourse/banner/logo5.png"> </a>
        </div>
    </div>
    <div class="t-c-list">
        <table width="1003" height="485" border="0" cellpadding="0" cellspacing="0" class="centerbg">
            <tr>
                <td width="149" height="485">&nbsp;</td>
                <td width="741" valign="top" class="rightbian">
                    <table width="60%" align="center" cellpadding="10" cellspacing="0" border="1">
                        <tr>
                            <td height="35" colspan="2"></td>
                        </tr>
                        <tr>
                            <td height="49" colspan="2"><div align="center"><span class="STYLE4"><strong>eggpeijun</strong>考试情况表</span></div></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td><div align="center">考试姓名:${request.studentName}</div></td>
                            <td><div align="center">考生得分:${request.GeneralPoint}分</div></td>
                        </tr>
                        <tr>
                            <td colspan="2"><div align="center"><a href="showSubjectAnswer.action">查看答案</a></div></td>
                        </tr>
                    </table></td>
                <td width="113">&nbsp;</td>
            </tr>
        </table>
    </div>
</div>
<div class="copyright-wrap">
    <div class="copyright">
        <div class="co-left">
            <p>主办单位：天津师范大学-计信学院</p>
            <p>技术支持：天津师范大学-计信学院</p>
        </div>
        <div class="co-right">
            <div class="select-btn">
                <ul>
                    <li><p href="">关于我们</p>
                    </li>
                    <li><p href="">联系我们</p>
                    </li>
                </ul>
            </div>
            <a href="javascript:" class="shoucang">收藏本站(ctrl+d)</a>
            <div class="con">
                <div class="one">
                    <p>我们的团队非常强大，能做出最好的产品</p>
                </div>
                <div class="one" style="display: none">
                    <p>13102130830</p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
