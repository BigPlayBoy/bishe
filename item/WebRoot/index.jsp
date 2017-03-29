<%--
  Created by IntelliJ IDEA.
  User: 11517
  Date: 2017/3/16
  Time: 23:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>精品课资源网站</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/icon.ico" media="screen"/>
    <link type="text/css" rel="stylesheet" href="public/css/reset.css">
    <link type="text/css" rel="stylesheet" href="public/css/public.css">
    <link type="text/css" rel="stylesheet" href="public/css/public2.css">
    <link type="text/css" rel="stylesheet" href="public/css/index_css/index.css">
    <link type="text/css" rel="stylesheet" href="public/layui/css/modules/layer/default/layer.css">
    <link type="text/css" rel="stylesheet" href="public/iconfont/iconfont.css">
    <link type="text/css" rel="stylesheet" href="public/css/index_css/style.css">
    <script type="text/javascript" src="public/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="public/js/index_js/index.js"></script>
    <script type="text/javascript" src="public/js/index_js/jquery.easing-1.3.min.js"></script>
    <script type="text/javascript" src="public/js/index_js/jquery.sly.js"></script>
    <script type="text/javascript" src="public/js/public_js.js"></script>
    <!--<script type="text/javascript" src="layui/layui.js"></script>-->
    <script type="text/javascript" src="public/layui/lay/modules/layer.js"></script>
</head>
<body>
<!--header start-->
<div id="header">
    <div class="header-content">
        <div class="logo fl pr">
            <img src="images/logo1.png">
            <p class="fl">计信学院精品课程</p>
        </div>
        <div class="nav fl">
            <ul>
                <li><a href="index.jsp">首页</a></li>
                <li><a href="jiaocai.action" target="_blank">教材</a> </li>
                <li><a href="queryVideo.action" target="_blank">视频</a></li>
                <li><a href="messageQuery.action" target="_blank">讨论</a></li>
                <li><a href="exam.action" target="_blank">测试</a> </li>
                <li><a href="login.jsp" target="_blank">教师登陆</a> </li>
            </ul>
        </div>
        <div class="login fr">
            <script type="text/javascript">
                var user="";
                var ul="<ul><li><a href='view/login/login.jsp'>登陆</a></li><li><a href='view/login/register.jsp'>注册</a></li></ul>";
                try {
                    if("${sessionScope.studentInfo.studentName}"!="") user="${sessionScope.studentInfo.studentName}";
                }
                catch (e) {
                    alert("出了错误，我也不知道是啥"+e);
                }
                var welcome="<ul><li><a href='#' style='width: 150px'> 欢迎你 "+user+"</a></li></ul>";
                if(""!=user){
                    $(".login " ).append(welcome);
                }
                else {
                    $(".login" ).append(ul);
                }
            </script>
        </div>
    </div>
</div>
<!--header ends-->
<!--banner start-->
<div id="banner">
    <div class="b_main">
        <div class="b_m_pic">
            <ul>
                <li><a href=""><img src="images/banner1.png"></a></li>
                <li><a href=""><img src="images/banner2.png"></a></li>
                <li><a href=""><img src="images/banner5.jpg"></a></li>
                <li><a href=""><img src="images/banner1.png"></a></li>
                <li><a href=""><img src="images/banner4.jpg"></a></li>
            </ul>
        </div>

        <div class="b_m_b_left"></div>
        <div class="b_m_b_right"></div>
        <div class="b_m_tab">
            <ul>
                <li class="click"></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
    </div>
</div>
<!--banner ends-->
<div id="content">
    <div id="sections" class="container">
        <div class="scrollbox" id="horizontal">
            <div class="slyWrap example1">
                <div class="scrollbar">
                    <div class="handle"></div>
                </div>
                <div class="sly" data-options='{ "horizontal": 1, "itemNav": "basic", "dragContent": 1, "startAt": 3, "scrollBy": 2}'>
                    <ul class="big cfix">
                        <li><img src="images/scorll-img/01.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/02.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/03.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/4.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/05.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/06.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/07.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/08.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/09.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/10.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/11.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/12.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/13.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/14.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/15.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/12.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/13.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/14.jpg" width="187" height="170" alt="女装" /></li>
                        <li><img src="images/scorll-img/15.jpg" width="187" height="170" alt="女装" /></li>
                    </ul>
                </div>
                <!--<ul class="pages"></ul>-->
                <div class="controls btn-toolbar">
                    <div class="btn-group">
                        <button class="btn prevPage">&laquo; 上一页</button>
                        <button class="btn nextPage">下一页 &raquo;</button>
                    </div>
                </div>
            </div><!--example1 end-->
        </div>
    </div>
</div>
<script type="text/javascript">

</script>
<!--课程开始-->
<div class="course-detail">
    <div class="c-d-head">
        <h2>课 程</h2>
        <p>学最好的课程，学自己想学的课程！</p>
    </div>
    <div class="c-d-con">
        <ul>
            <li><a href="#"><img src="images/con-img/1.jpg"></a>
                <p>课程简介</p>
            </li>
            <li><a href="#"><img src="images/con-img/2.jpg"></a>
                <p>课程简介</p>
            </li>
            <li><a href="#"><img src="images/con-img/0.jpg"></a>
                <p>课程简介</p>
            </li>
            <li style="margin-right: 0"><a href="#"><img src="images/con-img/4.jpg"></a>
                <p>内容是？</p>
            </li>
            <li><a href="#"><img src="images/con-img/0.jpg"></a>
                <p>课程简介</p>
            </li>
            <li><a href="#"><img src="images/con-img/8.jpg"></a>
                <p>课程简介</p>
            </li>
            <li><a href="#"><img src="images/con-img/10.jpg"></a>
                <p>课程简介</p>
            </li>
            <li style="margin-right: 0"><a href="#"><img src="images/con-img/6.jpg"></a>
                <p>内容是什么？</p>
            </li>
        </ul>
    </div>
</div>

<!--课程结束-->
<!--学习 课程 开始-->
<div class="learn-source-wrap">
    <div class="learn-source">
        <div class="g_video">
            <div class="g_v_title">
                <p class="g_v_t_title">视频</p>
                <a href="#">查看全部<span class="iconfont">&#xe601;</span></a>
            </div>
            <div class="g_v_con">
                <ul>
                    <li data="video/1.mp4">
                        <img src="images/video/1.jpg" alt="/">
                        <a href="">红米年度平牌视频</a>
                        <p>一亿人喜欢你，是一种责任！</p>
                        <span class="iconfont">&#xe611;</span>
                    </li>
                    <li data="video/5.mp4">
                        <img src="images/video/2.jpg" alt="/">
                        <a href="">小米笔记本Air最全介绍视频</a>
                        <p>带独立显卡的笔记本！</p>
                        <span class="iconfont">&#xe611;</span>
                    </li>
                    <li data="http://hd.mi.com/f/zt/hd/misc/youku.html?vid=XMTY1OTg4NjY0OA=="
                        style="margin-right: 0">
                        <img src="images/video/3.jpg" alt="/">
                        <a href="">小米笔记本Air可靠性测试视频</a>
                        <p>小米记本是如何炼成的！</p>
                        <span class="iconfont">&#xe611;</span>
                    </li>
                    <!--<li data="http://hd.mi.com/f/zt/hd/misc/youku.html?vid=XMTU2NDM3NjEzMg==">-->
                    <li data="video/4.mp4">
                        <img src="images/video/4.jpg" alt="/">
                        <a href="">显密Max绝美外观视频</a>
                        <p>4.4英寸全屏幕视频，看什么都震撼</p>
                        <span class="iconfont">&#xe611;</span>
                    </li>
                    <li data="http://hd.mi.com/f/zt/hd/misc/youku.html?vid=XMTY1OTg3NjQ4OA==">
                        <img src="images/video/2.jpg" alt="/">
                        <a href="">小米笔记本Air最全介绍视频</a>
                        <p>带独立显卡的笔记本！</p>
                        <span class="iconfont">&#xe611;</span>
                    </li>
                    <li data="video/4.mp4"
                        style="margin-right: 0">
                        <img src="images/video/3.jpg" alt="/">
                        <a href="">小米笔记本Air可靠性测试视频</a>
                        <p>小米记本是如何炼成的！</p>
                        <span class="iconfont">&#xe611;</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    var $play=$(".learn-source-wrap .learn-source .g_video .g_v_con ul li span");
    $play.click(function () {
        var $url=$(this).parent().attr("data");
        var $title=$(this).parent().find("a").html();
        var vcontent='<div class="vcontainer"> <video controls="controls" class="vstyle"> <source src="'+$url+'" type="video/mp4">您的浏览器不支持video标签。 </video> </div>';
        var index = layer.open({
            type: 1 //Page层类型
            ,area: ['1013px', '656px']
            ,title: $title
            ,shade: [0.6,'#000'] //遮罩透明度
            ,maxmin: false //允许全屏最小化
            ,fixed:true
            ,anim: 0 //0-6的动画形式，-1不开启
            ,content: vcontent
        });
    });
</script>
<!--学习结束-->
<!--资源库 开始-->
<div class="source">
    <p>资源库</p>
    <div class="source-list">
        <ul>
            <li><span class="img1"></span><a href="">教学课件</a></li>
            <li><span class="img2"></span><a href="">电子教案</a></li>
            <li><span class="img3"></span><a href="">教学课件</a></li>
            <li><span class="img4"></span><a href="">电子教案</a></li>
            <li><span class="img5"></span><a href="">教学课件</a></li>
            <li><span class="img6"></span><a href="">电子教案</a></li>
            <li><span class="img7"></span><a href="">教学课件</a></li>
        </ul>
        <ul>
            <li><span class="img8"></span><a href="">教学课件</a></li>
            <li><span class="img9"></span><a href="">电子教案</a></li>
            <li><span class="img10"></span><a href="">教学课件</a></li>
            <li><span class="img11"></span><a href="">电子教案</a></li>
            <li><span class="img12"></span><a href="">教学课件</a></li>
            <li><span class="img13"></span><a href="">电子教案</a></li>
            <li><span class="img14"></span><a href="">教学课件</a></li>
        </ul>
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
                <script type="text/javascript">

                </script>
            </div>
        </div>
    </div>
</div>
</body>
</html>
