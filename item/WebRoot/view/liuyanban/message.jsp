<%--
  Created by IntelliJ IDEA.
  User: jarvis
  Date: 2017/2/21
  Time: 22:53
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
    <s:if test="#request.isFirst==1">
        <script type="text/javascript">
            $(document).ready(function () {
                var $mtln=$(".message .m-t .m-t-left ul li:nth-child(2)");
                var $mtln2=$(".message .m-t .m-t-left ul li:nth-child(3)");
                var $mbrf=$(".message .m-b .m-b-r .m-b-r-first");
                var $mbrs=$(".message .m-b .m-b-r .m-b-r-second");
                    // $mbrf.css("display","none");
                    // $mbrs.css("display","block");
                    $mbrs.slideDown(2500);
                    $mbrf.hide();
            });
        </script>
    </s:if>
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
                <li><a href="jiaocai.action" target="_blank">教材</a> </li>
                <li><a href="queryVideo.action" target="_blank">视频</a></li>
                <li><a href="messageQuery.action" target="_blank">讨论</a></li>
                <li><a href="exam.action" target="_blank">测试</a> </li>
            </ul>
        </div>
        <div class="login fr">
            <p>欢迎你：${sessionScope.studentInfo.studentName}</p>
            <div class="person-hide">
                <a href="close.action">退出</a>
            </div>
        </div>
    </div>
</div>

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
                <form class="layui-form mt10" action="liuyan.action" method="post">
                    <div class="layui-form-item" hidden>
                        <label class="layui-form-label">留言人姓名</label>
                        <div class="layui-input-block">
                            <input type="text" name="UserName" lay-verify="title" autocomplete="off" placeholder="请输入姓名"
                                   class="layui-input" value="${sessionScope.studentInfo.studentName}">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">留言标题</label>
                        <div class="layui-input-block">
                            <input type="text" name="Theme" lay-verify="title" autocomplete="off" placeholder="请输入标题"
                                   class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item" hidden>
                        <div class="layui-inline" >
                            <label class="layui-form-label">留言日期</label>
                            <div class="layui-input-block">
                                <input type="text" name="Time" id="date" lay-verify="date" placeholder="yyyy-mm-dd"
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
                            <button class="layui-btn" >立即提交</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="m-b-r-second">
                <p class="ps">留言列表</p>
                <div class="message-list">
                    <s:iterator value="#request.messageBoards" id="messageBoard">
                        <div class="m-l-num" style="margin-top: 0">
                            <ul>
                               <li><p>用户名：<span><s:property value="#messageBoard.UserName" /> </span></p></li> <%--${messageBoard.UserName}--%>
                                <li><p>主题：<span><s:property value="#messageBoard.Theme" /></span></p></li>
                                <li><p>
                                    内容：<span><s:property value="#messageBoard.Content" /></span>
                                </p></li>
                                <li><p>时间：<span><s:property value="#messageBoard.Time" /></span></p></li>
                            </ul>
                        </div>
                    </s:iterator>

                        <div >
                            共${page.totalCount}条纪录，当前第${page.currentPage}/${page.totalPage}页，每页${page.everyPage}条纪录
                            <s:if test="#request.page.hasPrePage">
                                <a href="messageQuery.action?isFirst=1&currentPage=1">首页</a> |
                                <a href="messageQuery.action?isFirst=1&currentPage=${page.currentPage - 1}">上一页</a> |
                            </s:if>
                            <s:else>
                                首页 | 上一页 |
                            </s:else>
                            <s:if test="#request.page.hasNextPage">
                                <a href="messageQuery.action?isFirst=1&currentPage=${page.currentPage + 1}">下一页</a> |
                                <a href="messageQuery.action?isFirst=1&currentPage=${page.totalPage}">尾页</a>
                            </s:if>
                            <s:else>
                                下一页 | 尾页
                            </s:else>
                        </div>
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
                    <li><a href="">关于我们</a>
                    </li>
                    <li><a href="">联系我们</a>
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
