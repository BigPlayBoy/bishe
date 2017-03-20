<%--
  Created by IntelliJ IDEA.
  User: 11517
  Date: 2017/3/16
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:set name="isFirest" value="yes"/>
<html>

<head>
    <meta charset="UTF-8">
    <title>ppt学习资源</title>
    <link rel="shortcut icon" type="image/x-icon" href="../../images/icon.ico" media="screen"/>
    <link type="text/css" rel="stylesheet" href="../../public/css/public2.css">
    <link type="text/css" rel="stylesheet" href="../../public/css/reset.css">
    <link type="text/css" rel="stylesheet" href="../../public/css/public.css">
    <link type="text/css" rel="stylesheet" href="../../public/layui/css/layui.css">
    <link type="text/css" rel="stylesheet" href="../../public/css/ppt_sourse_css/ppt_sourse.css">
    <script type="text/javascript" src="../../public/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="../../public/js/public_js.js"></script>
    <script type="text/javascript" src="../../public/js/ppt_source_js/PicCarousel.js"></script>
    <script type="text/javascript" src="../../public/layui/layui.js"></script>
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
                <a href="javascript:;">退出</a>
            </div>
        </div>
    </div>
</div>
<div class="person-info">
    <div class="p-i-size"><span class="fl">现在是:</span><span class="time1 fl"></span>
    </div>
</div>
<div class="ppt-content">
    <div class="nav clearfix">
        <div class="logo">
            <a class="logo1"><img src="../../images/course_sourse/banner/logo3.png"> </a>
        </div>
    </div>
    <div class="focus-img">
        <div class="container">
            <div class="poster-main focus">
                <div class="poster-btn poster-prev-btn"></div>
                <ul class="poster-list">
                    <li class="poster-item"><a href="http://sc.chinaz.com"><img src="../../images/ppt_sourse/1.jpg"
                                                                                width="100%"></a></li>
                    <li class="poster-item"><a href="http://sc.chinaz.com"><img src="../../images/ppt_sourse/1.jpg"
                                                                                width="100%"></a></li>
                    <li class="poster-item"><a href="http://sc.chinaz.com"><img src="../../images/ppt_sourse/1.jpg"
                                                                                width="100%"></a></li>
                    <li class="poster-item"><a href="http://sc.chinaz.com"><img src="../../images/ppt_sourse/1.jpg"
                                                                                width="100%"></a></li>
                    <li class="poster-item"><a href="http://sc.chinaz.com"><img src="../../images/ppt_sourse/1.jpg"
                                                                                width="100%"></a></li>
                    <li class="poster-item"><a href="http://sc.chinaz.com"><img src="../../images/ppt_sourse/1.jpg"
                                                                                width="100%"></a></li>
                    <li class="poster-item"><a href="http://sc.chinaz.com"><img src="../../images/ppt_sourse/1.jpg"
                                                                                width="100%"></a></li>
                </ul>
                <div class="poster-btn poster-next-btn"></div>
            </div>
        </div>
    </div>
    <div class="nav clearfix">
        <div class="logo">
            <a class="logo1"><img src="../../images/course_sourse/banner/logo4.png"> </a>
        </div>
    </div>
    <div class="ppt-show">
        <div class="ppt-show-t">
            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                <ul class="layui-tab-title">
                    <s:iterator value="#request.ppts" id="ppt">
                        <li > <s:property value="#ppt.pptName"/> </li>
                    </s:iterator>
                </ul>
                <div class="layui-tab-content" style="height: 100px;">
                    <s:iterator value="#request.ppts" id="ppt1">
                        <div class="layui-tab-item ">
                            <div class="ppt-show-t-container">
                                <div  class="layer-photos-demo list">
                                    <s:iterator value="#request.pptUrls" id="pptUrl">
                                        <s:if test="#pptUrl.pptId == #ppt1.pptId">
                                            <img layer-pid="lkmmgmg" layer-src="<s:property value='#pptUrl.pptUrl'/>"
                                                 src="<s:property value='#pptUrl.pptUrl'/>" alt="图片信息">
                                        </s:if>
                                    </s:iterator>
                                    <a class="download" href="<s:property value="#ppt1.pptSourceUrl"/> ">
                                        <button class="layui-btn layui-btn-big layui-btn-primary layui-btn-radius down">下载课件</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </s:iterator>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            //调用示例
            layui.use('layer', function () {
//                var name=$(".ppt-content .ppt-show .ppt-show-t .layui-tab .layui-tab-content .ppt-show-t-container");
                var layer = layui.layer;
                layer.photos({
                    photos: '.layer-photos-demo'
//                    photos: 'name'
                    , anim: 5 //0-6的选择，指定弹出图片动画类型，默认随机（请注意，3.0之前的版本用shift参数）
                })
            });
        </script>
    </div>
</div>
<script type="text/javascript">
    layui.use('element', function () {
        var element = layui.element(); //导航的hover效果、二级菜单等功能，需要依赖element模块

//监听导航点击
        element.on('nav(demo)', function (elem) {
//console.log(elem)
            layer.msg(elem.text());
        });
    });
</script>
<script>
    layui.use('element', function () {
        var $ = layui.jquery
            , element = layui.element(); //Tab的切换功能，切换事件监听等，需要依赖element模块

        //触发事件
        var active = {
            tabAdd: function () {
                //新增一个Tab项
                element.tabAdd('demo', {
                    title: '新选项' + (Math.random() * 1000 | 0) //用于演示
                    , content: '内容' + (Math.random() * 1000 | 0)
                    , id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
                })
            }
            , tabDelete: function (othis) {
                //删除指定Tab项
                element.tabDelete('demo', '44'); //删除：“商品管理”


                othis.addClass('layui-btn-disabled');
            }
            , tabChange: function () {
                //切换到指定Tab项
                element.tabChange('demo', '22'); //切换到：用户管理
            }
        };

        $('.site-demo-active').on('click', function () {
            var othis = $(this), type = othis.data('type');
            active[type] ? active[type].call(this, othis) : '';
        });

        //Hash地址的定位
        var layid = location.hash.replace(/^#test=/, '');
        element.tabChange('test', layid);

        element.on('tab(test)', function (elem) {
            location.hash = 'test=' + $(this).attr('lay-id');
        });

    });
</script>
<script type="text/javascript">
    $(".focus").PicCarousel({
        "width": 1000,
        "height": 300,
        "posterWidth": 520,
        "posterHeight": 300,
        "scale": 0.9,
        "speed": 500,
        "autoPlay": true,
        "delay": 1000,
        "verticalAlign": "top"
    });
</script>
<script type="text/javascript">
    $(".layui-tab-item:first").addClass("layui-show");
</script>
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
