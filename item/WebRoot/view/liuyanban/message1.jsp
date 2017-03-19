<%--
  Created by IntelliJ IDEA.
  User: 11517
  Date: 2017/3/19
  Time: 22:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>讨论区</title>
    <link rel="shortcut icon" type="image/x-icon" href="../../images/icon.ico" media="screen"/>
    <link type="text/css" rel="stylesheet" href="../../public/css/message_css/liuyan-css.css">
    <link type="text/css" rel="stylesheet" href="../../public/css/public2.css">
    <link type="text/css" rel="stylesheet" href="../../public/css/reset.css">
    <link type="text/css" rel="stylesheet" href="../../public/css/public.css">
    <!--<link type="text/css" rel="stylesheet" href="../liuyanban/css/demo.css">-->
    <link type="text/css" rel="stylesheet" href="../../public/iconfont1/iconfont.css">
    <link type="text/css" rel="stylesheet" href="../../public/css/message_css/quake.slider.css">
    <link type="text/css" rel="stylesheet" href="../../public/layui/css/layui.css" media="all">
    <script type="text/javascript" src="../../public/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="../../public/js/public_js.js"></script>
    <script type="text/javascript" src="../../public/js/liuyanban_js/liuyan-js.js"></script>
    <script type="text/javascript" src="../../public/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../../public/js/liuyanban_js/quake.slider-min.js"></script>
    <style type="text/css">
    </style>

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
                <li><a href="../../index.html" target="_blank">首页</a></li>
                <li><a href="../ppt_sourse/ppt_sourse.html" target="_blank">教材</a> </li>
                <li><a href="../video_course_sourse/video_course_sourse.html" target="_blank">视频</a></li>
                <li><a href="#">讨论</a></li>
                <li><a href="../score_test/score_test.html" target="_blank">考试</a> </li>
            </ul>
        </div>
        <div class="person fr">
            <p>欢迎你：admin</p>
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
    $person.click(function () {
//        alert("你好！");
        $personhide.css("display","block");
    })
</script>
<!--<script type="text/javascript">-->
<!--var $mtln=$(".message .m-t .m-t-left ul li");-->
<!--$mtln.click(function () {-->
<!--//        var a=$(this).size();-->
<!--alert("ggggg");-->
<!--});-->
<!--</script>-->
<div class="person-info">
    <div class="p-i-size"><span class="fl">现在是:</span><span class="time1 fl"></span>
    </div>
</div>

<div class="message">
    <div class="m-t">
        <div class="m-t-left fl mr10 mt10">
            <ul>
                <li><p>在线留言</p></li>
                <li><p><span class="iconfont">&#xe626;</span>发表留言</p></li>
                <li><p><span class="iconfont">&#xe626;</span>浏览留言</p></li>
            </ul>
        </div>
        <div class="m-t-right fl mt10">
            <div class="wrapper">
                <div class="quake-slider">
                    <div class="quake-slider-images">
                        <a target="_blank" href="">
                            <img src="../../images/liuyanban/1.jpg" alt=""/>
                        </a>
                        <a target="_blank" href="">
                            <img src="../../images/liuyanban/2.jpg" alt=""/>
                        </a>
                        <a target="_blank" href="">
                            <img src="../../images/liuyanban/3.jpg" alt=""/>
                        </a>
                        <a target="_blank" href="">
                            <img src="../../images/liuyanban/4.jpg" alt=""/>
                        </a>
                        <a target="_blank" href="">
                            <img src="../../images/liuyanban/5.jpg" alt=""/>
                        </a>
                        <a target="_blank" href="">
                            <img src="../../images/liuyanban/6.jpg" alt=""/>
                        </a>
                        <a target="_blank" href="">
                            <img src="../../images/liuyanban/9.jpg" alt=""/>
                        </a>
                        <a target="_blank" href="">
                            <img src="../../images/liuyanban/16.jpg" alt=""/>
                        </a>
                    </div>
                </div>
            </div>
            <div class="clearfix">
            </div>
        </div>
    </div>
    <div class="m-b">
        <div class="m-b-l mr10">
            <ul>
                <li><p>联系我们</p></li>
                <li><span>电话：xxx</span><br><span>地址：天津师范大学</span><br>其他信息：xxx</li>
            </ul>
        </div>
        <div class="m-b-r fr">
            <div class="m-b-r-first">
                <p class="ps">发表留言</p>
                <form class="layui-form mt10" action="">
                    <div class="layui-form-item">
                        <label class="layui-form-label">留言人姓名</label>
                        <div class="layui-input-block">
                            <input type="text" name="name" lay-verify="title" autocomplete="off" placeholder="请输入姓名"
                                   class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">留言标题</label>
                        <div class="layui-input-block">
                            <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题"
                                   class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-inline">
                            <label class="layui-form-label">留言日期</label>
                            <div class="layui-input-block">
                                <input type="text" name="date" id="date" lay-verify="date" placeholder="yyyy-mm-dd"
                                       autocomplete="off" class="layui-input" onclick="layui.laydate({elem: this})">
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">留言内容</label>
                        <div class="layui-input-block">
                            <textarea class="layui-textarea layui-hide" name="content" lay-verify="content"
                                      id="LAY_demo_editor"></textarea>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="m-b-r-second">
                <p class="ps">留言列表</p>
                <div class="message-list">
                    <div class="m-l-num" style="margin-top: 0">
                        <ul>
                            <li><p>用户名：<span>MrWangtao</span></p></li>
                            <li><p>主题：<span>数据库的概念是什么：</span></p></li>
                            <li><p>
                                内容：<span>数据库(Database)是按照数据结构来组织、存储和管理数据的仓库，它产生于距今六十多年前，随着信息技术和市场的发展，特别是二十世纪九十年代以后，</span>
                            </p></li>
                            <li><p>时间：<span>2017-2-11</span></p></li>
                        </ul>
                    </div>
                    <div class="m-l-num">
                        <ul>
                            <li><p>用户名：<span>MrWangtao</span></p></li>
                            <li><p>主题：<span>数据库的概念是什么：</span></p></li>
                            <li><p>
                                内容：<span>数据库(Database)是按照数据结构来组织、存储和管理数据的仓库，它产生于距今六十多年前，随着信息技术和市场的发展，特别是二十世纪九十年代以后，</span>
                            </p></li>
                            <li><p>时间：<span>2017-2-11</span></p></li>
                        </ul>
                    </div>
                    <div class="m-l-num">
                        <ul>
                            <li><p>用户名：<span>MrWangtao</span></p></li>
                            <li><p>主题：<span>数据库的概念是什么：</span></p></li>
                            <li><p>
                                内容：<span>数据库(Database)是按照数据结构来组织、存储和管理数据的仓库，它产生于距今六十多年前，随着信息技术和市场的发展，特别是二十世纪九十年代以后，</span>
                            </p></li>
                            <li><p>时间：<span>2017-2-11</span></p></li>
                        </ul>
                    </div>
                    <div id="pages"></div>
                </div>

            </div>
        </div>
    </div>
</div>
<!--message ends-->
<!--copyright start-->
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
<!-- copyright ends-->
</body>
</html>
