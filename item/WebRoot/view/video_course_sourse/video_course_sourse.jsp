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
    <title>课程资源列表</title>
    <link rel="shortcut icon" type="image/x-icon" href="../../images/icon.ico" media="screen"/>
    <link type="text/css" rel="stylesheet" href="../../public/css/reset.css">
    <link type="text/css" rel="stylesheet" href="../../public/css/public.css">
    <link type="text/css" rel="stylesheet" href="../../public/css/public2.css">
    <link type="text/css" rel="stylesheet" href="../../public/layui/css/modules/layer/default/layer.css">
    <link type="text/css" rel="stylesheet" href="../../public/iconfont/iconfont.css">
    <link type="text/css" rel="stylesheet" href="../../public/css/course_sourse_css/style.css">
    <link type="text/css" rel="stylesheet" href="../../public/css/course_sourse_css/course_sourse.css">
    <script type="text/javascript" src="../../public/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="../../public/js/public_js.js"></script>
    <script type="text/javascript" src="../../public/layui/lay/modules/layer.js"></script>
    <script type="text/javascript" src="../../public/js/course_sourse_js/a.js"></script>
    <script type="text/javascript" src="../../public/js/course_sourse_js/b.js"></script>
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
                <li><a href="../../video_course_sourse/video_course_sourse.jsp" target="_blank">视频</a></li>
                <li><a href="messageQuery.action" target="_blank">讨论</a></li>
                <li><a href="exam.action" target="_blank">测试</a> </li>
            </ul>
        </div>
        <div class="person fr">
            <p>欢迎你：${sessionScope.studentInfo.studentName}</p>
            <div class="person-hide">
                <!--<select class="">退出</select>-->
                <a href="close.action">退出</a>
            </div>
        </div>
    </div>
</div>
<div class="person-info">
    <div class="p-i-size"><span class="fl">现在是:</span><span class="time1 fl"></span>
    </div>
</div>
<!--n_wrap start-->
<div id="n_wrap">
    <div class="nav clearfix">
        <div class="logo">
            <a class="logo1"><img src="../../images/course_sourse/banner/logo1.png"></a>
        </div>
        <div class="n_main clearfix">
            <ul>
                <li class="n_m_one"><a href="#">数据库</a></li>
                <li class="n_m_one"><a href="#">组成原理</a></li>
                <li class="n_m_one"><a href="#">算法</a></li>
                <li class="n_m_one"><a href="#">数据结构</a></li>
                <li class="n_m_one"><a href="#">C语言</a></li>
                <li class="n_m_one"><a href="#">Java编程</a></li>
            </ul>
        </div>
    </div>
    <!--n_w_product start-->
    <div id="n_w_product">
        <div class="n_w_p_main">
            <ul class="ul1">
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/timg0.jpg"></a>
                    <a href="" class="p_title">数据库系统第四版</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/timg2.jpg"></a>
                    <a href="" class="p_title">数据库系统第五版</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/timg3.jpg"></a>
                    <a href="" class="p_title">数据库系统第三版</a>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/timg1.jpg"></a>
                    <a href="" class="p_title">数据库系统第5版</a>
                </li>
            </ul>
            <ul class="ul2">
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/jz.jpg"></a>
                    <a href="" class="p_title">组陈原理第2版</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/jz2.jpg"></a>
                    <a href="" class="p_title">计算机组成原理</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/jz3.jpg"></a>
                    <a href="" class="p_title">计算机组成原理</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/jz4.jpg"></a>
                    <a href="" class="p_title">计算机组成原理</a>
                </li>
            </ul>
            <ul class="ul3">
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/sf.jpg"></a>
                    <a href="" class="p_title">算法设计与分析</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/sf1.jpg"></a>
                    <a href="" class="p_title">程序基本算法教材</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/sf2.jpg"></a>
                    <a href="" class="p_title">算法导论</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/sf3.jpg"></a>
                    <a href="" class="p_title">数据结构与算法</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/sf4.jpg"></a>
                    <a href="" class="p_title">算法教材</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/sf5.jpg"></a>
                    <a href="" class="p_title">数据结构与算法</a>
                </li>
            </ul>
            <ul class="ul4">
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/sg.jpg"></a>
                    <a href="" class="p_title">数据结构C语言板</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/sg1.jpg"></a>
                    <a href="" class="p_title">数据结构c++版</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/sg2.jpg"></a>
                    <a href="" class="p_title">数据结构</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/sg3.jpg"></a>
                    <a href="" class="p_title">数据结构</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/sg4.jpg"></a>
                    <a href="" class="p_title">数据结构与算法</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/sg5.jpg"></a>
                    <a href="" class="p_title">数据结构</a>
                </li>
            </ul>
            <ul class="ul5">
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/c.jpg"></a>
                    <a href="" class="p_title">C语言程序设计</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/c2.jpg"></a>
                    <a href="" class="p_title">C语言程序设计答案</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/c3.jpg"></a>
                    <a href="" class="p_title">C语言程序设计</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/c4.jpg"></a>
                    <a href="" class="p_title">C语言程序设计</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/c5.jpg"></a>
                    <a href="" class="p_title">C语言程序设计</a>
                    <div class="p_border"></div>
                </li>
            </ul>
            <ul class="ul6">
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/java.jpg"></a>
                    <a href="" class="p_title">java编程思想</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/java2.jpg"></a>
                    <a href="" class="p_title">java从入门到精通</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/java3.jpg"></a>
                    <a href="" class="p_title">java概论设计</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/java5.jpg"></a>
                    <a href="" class="p_title">疯狂Java讲义</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/java6.jpg"></a>
                    <a href="" class="p_title">Java案例分析</a>
                    <div class="p_border"></div>
                </li>
                <li>
                    <a href="" class="p_img"><img src="../../images/course_sourse/nav/java1.jpg"></a>
                    <a href="" class="p_title">javaweb设计</a>
                    <div class="p_border"></div>
                </li>
            </ul>
        </div>
    </div>
    <!--product end-->
</div>
<!--n_wrap end-->

<!--banner start-->
<div id="banner">
    <div class="b_main">
        <div class="b_m_pic">
            <ul>
                <li><a href=""><img src="../../images/course_sourse/banner/ABC.jpg"></a></li>
                <li><a href=""><img src="../../images/course_sourse/banner/timg.jpg"></a></li>
                <li><a href=""><img src="../../images/course_sourse/banner/3.jpg"></a></li>
                <li><a href=""><img src="../../images/course_sourse/banner/4.jpg"></a></li>
                <li><a href=""><img src="../../images/course_sourse/banner/5.jpg"></a></li>
            </ul>
        </div>
        <!--<div class="b_m_btn">-->
        <!--<div class="b_m_b_left"></div>-->
        <!--<div class="b_m_b_right"></div>-->
        <!--</div>-->
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
    <!--b_nav start-->
    <div class="b_nav">
        <ul>
            <li>
                <a href="">第一章，第二章<span class="iconfont">&#xe60a;</span></a>
                <div class="b_n_hide">
                    <ul>

                    </ul>
                    <ul>

                    </ul>
                </div>
            </li>
            <li>
                <a href="">第三章，第四章<span class="iconfont">&#xe60a;</span></a>
                <div class="b_n_hide">
                    <ul>

                    </ul>
                </div>
            </li>
            <li>
                <a href="">第五章，第六章<span class="iconfont">&#xe60a;</span></a>
                <div class="b_n_hide">
                    <ul>

                    </ul>
                    <ul>

                    </ul>
                </div>
            </li>
            <li>
                <a href="">第七章，第八章<span class="iconfont">&#xe60a;</span></a>
                <div class="b_n_hide">
                </div>
            </li>
            <li>
                <a href="">第九章，第十章<span class="iconfont">&#xe60a;</span></a>
                <div class="b_n_hide">
                </div>
            </li>
            <li>
                <a href="">第十一章<span class="iconfont">&#xe60a;</span></a>
                <div class="b_n_hide">
                </div>
            </li>

        </ul>
    </div>
</div>

<div class="course_v_list">
    <div class="c_v_l_t">
        <a class="c_v_l_t_logo fl"><img src="../../images/course_sourse/v_l_logo.png"></a>
        <!--<p>查看更多<span class="iconfont">&#xe601;</span></p>-->
    </div>

    <div class="c_v_l_content" style="">
        <div class="full-length">
            <div class="container1 clearfix">
                <ul>
                    <li data="../../video/1.mp4">
                        <div class="port-2 effect-1">
                            <div class="image-box">
                                <img src="../../images/course_sourse/img-2.jpg" alt="Image-1">
                            </div>
                            <div class="text-desc">
                                <h3>Your Title</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt
                                    ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn"><span class="triangle"></span> </a>
                            </div>
                        </div>
                    </li>
                    <li data="../../video/5.mp4">
                        <!--data是每个视频的地址-->
                        <div class="port-2 effect-2">
                            <div class="image-box">
                                <img src="../../images/course_sourse/img-2.jpg" alt="Image-2">
                            </div>
                            <div class="text-desc">
                                <h3>第一章</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt
                                    ut labore et dolore magna aliqua.</p>
                                <a class="btn"><span class="triangle"></span> </a>
                            </div>
                        </div>
                    </li>
                    <li data="../../video/4.mp4">
                        <div class="port-2 effect-3">
                            <div class="image-box">
                                <img src="../../images/course_sourse/img-2.jpg" alt="Image-3">
                            </div>
                            <div class="text-desc">
                                <h3>Your Title</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt
                                    ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn"><span class="triangle"></span> </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="port-2 effect-1">
                            <div class="image-box">
                                <img src="../../images/course_sourse/img-2.jpg" alt="Image-1">
                            </div>
                            <div class="text-desc">
                                <h3>Your Title</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt
                                    ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn"><span class="triangle"></span> </a>
                            </div>
                        </div>
                    </li>
                </ul>
                <ul>
                    <li>
                        <div class="port-2 effect-1">
                            <div class="image-box">
                                <img src="../../images/course_sourse/img-2.jpg" alt="Image-1">
                            </div>
                            <div class="text-desc">
                                <h3>Your Title</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt
                                    ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn"><span class="triangle"></span> </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="port-2 effect-2">
                            <div class="image-box">
                                <img src="../../images/course_sourse/img-2.jpg" alt="Image-2">
                            </div>
                            <div class="text-desc">
                                <h3>Your Title</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt
                                    ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn"><span class="triangle"></span> </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="port-2 effect-3">
                            <div class="image-box">
                                <img src="../../images/course_sourse/img-2.jpg" alt="Image-3">
                            </div>
                            <div class="text-desc">
                                <h3>Your Title</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt
                                    ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn"><span class="triangle"></span> </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="port-2 effect-1">
                            <div class="image-box">
                                <img src="../../images/course_sourse/img-2.jpg" alt="Image-1">
                            </div>
                            <div class="text-desc">
                                <h3>Your Title</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt
                                    ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn"><span class="triangle"></span> </a>
                            </div>
                        </div>
                    </li>
                </ul>
                <ul>
                    <li>
                        <div class="port-2 effect-1">
                            <div class="image-box">
                                <img src="../../images/course_sourse/img-2.jpg" alt="Image-1">
                            </div>
                            <div class="text-desc">
                                <h3>Your Title</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt
                                    ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn"><span class="triangle"></span> </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="port-2 effect-2">
                            <div class="image-box">
                                <img src="../../images/course_sourse/img-2.jpg" alt="Image-2">
                            </div>
                            <div class="text-desc">
                                <h3>Your Title</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt
                                    ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn"><span class="triangle"></span> </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="port-2 effect-3">
                            <div class="image-box">
                                <img src="../../images/course_sourse/img-2.jpg" alt="Image-3">
                            </div>
                            <div class="text-desc">
                                <h3>Your Title</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt
                                    ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn"><span class="triangle"></span> </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="port-2 effect-1">
                            <div class="image-box">
                                <img src="../../images/course_sourse/img-2.jpg" alt="Image-1">
                            </div>
                            <div class="text-desc">
                                <h3>Your Title</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt
                                    ut labore et dolore magna aliqua.</p>
                                <a href="#" class="btn"><span class="triangle"></span> </a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
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
<script type="text/javascript">

    var $play = $(".course_v_list .c_v_l_content .full-length .container1 ul li .text-desc .btn");
    $play.click(function () {
//        var $surl='../../video/5.mp4';
        var $surl = $(this).parent().parent().parent().attr("data");
//        var $soursetitle='你好';
        var $soursetitle=$(this).parent().parent().find('h3').html();
        var vcontent='<div class="vcontainer"> <video controls="controls" class="vstyle"> <source src="'+$surl+'" type="video/mp4">您的浏览器不支持video标签。 </video> </div>';

//        var index = layer.open({
//            type: 2,
//            content: '../../view/video/index.html',
//            area: ['800px', '600px'],
//            shadeClose: true,
//            maxmin: true
//        });
//        alert("nihao")
//        var $url = $(this).parent().attr("data");
//        alert($url);
        var index = layer.open({
//            type: 2,
//            content: '../../view/video/index.html',
//            area: ['800px', '600px'],
//            shadeClose: true,
//            maxmin: true
//        });
//            type: 2,
//            title: ["标题"],
//            area: ['630px', '500px'],
//            shade: 0.8,
//            closeBtn: 2,
//            shadeClose: true,
////                    content:'http://hd.mi.com/f/zt/hd/misc/youku.html?vid=XMTY1OTg4NjY0OA=='
//            content: "video/1.mp4"
//        });
//            type: 1,
//            skin: 'layui-layer-rim', //加上边框
//            area: ['1000px', '800px'], //宽高
//            content: ''
//        });
            type: 1 //Page层类型
            ,area: ['1013px', '656px']
            ,title: $soursetitle
            ,shade: [0.6,'#000'] //遮罩透明度
            ,maxmin: false //允许全屏最小化
            ,fixed:true
            ,anim: 0 //0-6的动画形式，-1不开启
            ,content: vcontent
        });
    });
</script>
</body>
</html>
