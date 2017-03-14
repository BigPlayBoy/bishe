<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <meta charset="UTF-8">
      <title>精品课资源网站</title>
      <link rel="shortcut icon" type="image/x-icon" href="images/icon.ico" media="screen"/>
      <link type="text/css" rel="stylesheet" href="public/css/reset.css">
      <link type="text/css" rel="stylesheet" href="public/css/public.css">
      <link type="text/css" rel="stylesheet" href="public/css/index_css/index.css">
      <!--<link type="text/css" rel="stylesheet" href="layui/css/modules/layer/default/layer.css">-->
      <link type="text/css" rel="stylesheet" href="public/iconfont/iconfont.css">
      <link type="text/css" rel="stylesheet" href="public/css/index_css/style.css">
      <script type="text/javascript" src="public/js/jquery-1.11.0.min.js"></script>
      <script type="text/javascript" src="public/js/index_js/index.js"></script>
      <script type="text/javascript" src="public/js/index_js/jquery.easing-1.3.min.js"></script>
      <script type="text/javascript" src="public/js/index_js/jquery.sly.js"></script>
      <script type="text/javascript" src="public/js/shoucang.js"></script>
      <!--<script type="text/javascript" src="layui/layui.js"></script>-->
      <!--<script type="text/javascript" src="layui/lay/modules/layer.js"></script>-->

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
                  <li><a href="#">首页</a></li>
                  <li><a href="#">课程</a></li>
                  <li><a href="#">资源</a></li>
                  <li><a href="messageQuery.action">讨论</a></li>
              </ul>
          </div>
          <div class="login fr">
              <%--<ul class=""></ul>--%>
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
                  <%--alert("${sessionScope.studentInfo.studentID}    :::"+user);--%>
              </script>
                  <%--<%--%>
                      <%--String user="${sessionScope.studentInfo.studentID}";--%>
                  <%--%>--%>
              <%--<ul>--%>
                  <%--<li><a href="view/login/login.jsp">登陆</a></li>--%>
                  <%--<li><a href="view/login/register.jsp">注册</a></li>--%>
              <%--</ul>--%>

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
      //    $(function ($) {
      //        // 占位符项目来填充列表的功能
      //        function populate(container, count, offset) {
      //            var output = '';
      //            offset = isNaN(offset) ? 0 : offset;
      //            for (var i = 0; i < count; i++) {
      //                output += '<li>' + (offset + i) + '</li>';
      //            }
      //            return $(output).appendTo(container);
      //        }
      //
      //        // 填充列表项
      //        $('ul[data-items]').each(function (i, e) {
      //            var items = parseInt($(e).data('items'), 10);
      //            populate(e, items);
      //        });
      //
      //        // 主要调用部分
      //        $(document).on('activated', function (event) {
      //            var $section = $(".scrollbox");
      //            var $frame = $section.find('.frame'),
      //                $ul = $frame.find('ul').eq(0),
      //                $scrollbar = $section.find('.scrollbar'),
      //                $buttons = $section.find('.controlbar [data-action]');
      //
      //            populate($ul, 10);
      //
      //            // 控制
      //            $buttons.on('click', function (e) {
      //                var action = $(this).data('action');
      //                switch (action) {
      //                    case 'reset':
      //                        $frame.sly('toStart');
      //                        setTimeout(function () {
      //                            $ul.find('li').slice(10).remove();
      //                            $frame.sly('reload');
      //                        }, 200);
      //                        break;
      //                    default:
      //                        $frame.sly(action);
      //                }
      //            });
      //
      //            $section.find(".slyWrap").each(function (i, e) {
      //                var cont = $(this),
      //                    frame = cont.find(".sly"),
      //                    slidee = frame.find("ul"),
      //                    scrollbar = cont.find(".scrollbar"),
      //                    pagesbar = cont.find(".pages"),
      //                    options = frame.data("options"),
      //                    controls = cont.find(".controls"),
      //                    prevButton = controls.find(".prev"),
      //                    nextButton = controls.find(".next"),
      //                    prevPageButton = controls.find(".prevPage"),
      //                    nextPageButton = controls.find(".nextPage");
      //
      //                options = $.extend({}, options, {
      //                    scrollBar: scrollbar,
      //                    pagesBar: pagesbar,
      //                    prev: prevButton,
      //                    next: nextButton,
      //                    prevPage: prevPageButton,
      //                    nextPage: nextPageButton,
      //                    disabledClass: 'btn-disabled'
      //                });
      //                frame.sly(options);
      //                cont.find("button").click(function () {
      //                    var action = $(this).data('action'),
      //                        arg = $(this).data('arg');
      //                    switch (action) {
      //                        case 'add':
      //                            slidee.append(slidee.children().slice(-1).clone().removeClass().text(function (i, text) {
      //                                return text / 1 + 1;
      //                            }));
      //                            frame.sly('reload');
      //                            break;
      //                        case 'remove':
      //                            slidee.find("li").slice(-1).remove();
      //                            frame.sly('reload');
      //                            break;
      //                        default:
      //                            frame.sly(action, arg);
      //                    }
      //                });
      //            });
      //        }).trigger('activated');
      //
      //    });
  </script>
  <!--课程滚动条 开始-->
  <!--<div class="course-scroll clearfix">-->
  <!--<div class="scroll-content">-->
  <!--<div class="cs clearfix">-->
  <!--<ul class="clearfix">-->
  <!--<li>-->
  <!--<a href=""><img src="images/banner1.png" alt=""></a>-->
  <!--<span>第一幅图画</span>-->
  <!--<p>第一幅图的内容</p>-->
  <!--</li>-->
  <!--<li>-->
  <!--<a href=""><img src="images/banner2.png" alt="/"></a>-->
  <!--<span>第二幅图画</span>-->
  <!--<p>第二恶幅图的内容</p>-->
  <!--</li>-->
  <!--<li>-->
  <!--<a href=""><img src="images/banner3.jpg" alt="/"></a>-->
  <!--<span>第三幅图画</span>-->
  <!--<p>第三幅图的内容</p>-->
  <!--</li>-->
  <!--<li>-->
  <!--<a href=""><img src="images/banner4.jpg" alt="/"></a>-->
  <!--<span>第四幅图画</span>-->
  <!--<p>第四幅图的内容,第四幅图的内容,第四幅图的内容,第四幅图的内容,第四幅图的内容,第四幅图的内容-->
  <!--</p>-->
  <!--</li>-->
  <!--</ul>-->
  <!--<ul>-->
  <!--<li>-->
  <!--<a href=""><img src="">-->
  <!--<span></span>-->
  <!--<p></p>-->
  <!--</a>-->
  <!--</li>-->
  <!--<li>-->
  <!--<a href=""><img src="">-->
  <!--<span></span>-->
  <!--<p></p>-->
  <!--</a>-->
  <!--</li>-->
  <!--<li>-->
  <!--<a href=""><img src="">-->
  <!--<span></span>-->
  <!--<p></p>-->
  <!--</a>-->
  <!--</li>-->
  <!--<li>-->
  <!--<a href=""><img src="">-->
  <!--<span></span>-->
  <!--<p></p>-->
  <!--</a>-->
  <!--</li>-->
  <!--</ul>-->
  <!--<ul>-->
  <!--<li>-->
  <!--<a href=""><img src="">-->
  <!--<span></span>-->
  <!--<p></p>-->
  <!--</a>-->
  <!--</li>-->
  <!--<li>-->
  <!--<a href=""><img src="">-->
  <!--<span></span>-->
  <!--<p></p>-->
  <!--</a>-->
  <!--</li>-->
  <!--<li>-->
  <!--<a href=""><img src="">-->
  <!--<span></span>-->
  <!--<p></p>-->
  <!--</a>-->
  <!--</li>-->
  <!--<li>-->
  <!--<a href=""><img src="">-->
  <!--<span></span>-->
  <!--<p></p>-->
  <!--</a>-->
  <!--</li>-->
  <!--</ul>-->
  <!--</div>-->
  <!--<div class="arrow-left"></div>-->
  <!--<div class="arrow-right"></div>-->
  <!--</div>-->
  <!--</div>-->
  <!--课程滚动 结束-->
  <!--搜索课程-->
  <!--<div class="search-wrap">-->
  <!--<div class="se-input">-->
  <!--<input type="text" value="您想学习什么课程呢？" class="txt">-->
  <!--<div class="se_find">-->
  <!--<i class="iconfont">&#xe603;</i>-->
  <!--</div>-->
  <!--</div>-->
  <!--</div>-->
  <!--搜索课程结束-->
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
                      <li data="http://hd.mi.com/f/zt/hd/misc/youku.html?vid=XMTY1ODg5ODA0MA==">
                          <img src="images/video/1.jpg" alt="/">
                          <a href="">红米年度平牌视频</a>
                          <p>一亿人喜欢你，是一种责任！</p>
                          <span class="iconfont">&#xe611;</span>
                      </li>
                      <li data="http://hd.mi.com/f/zt/hd/misc/youku.html?vid=XMTY1OTg3NjQ4OA==">
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
                      <li data="http://hd.mi.com/f/zt/hd/misc/youku.html?vid=XMTU2NDM3NjEzMg==">
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
                      <li data="http://hd.mi.com/f/zt/hd/misc/youku.html?vid=XMTY1OTg4NjY0OA=="
                          style="margin-right: 0">
                          <img src="images/video/3.jpg" alt="/">
                          <a href="">小米笔记本Air可靠性测试视频</a>
                          <p>小米记本是如何炼成的！</p>
                          <span class="iconfont">&#xe611;</span>
                      </li>
                  </ul>
              </div>
              <div class="g_v_hide">
                  <div class="g_v_h_con">
                      <div class="g_v_h_title">
                          <p>红米年度品牌视频</p>
                          <span class="close">×</span>
                      </div>
                      <div class="g_v_h_c_content">
                          <iframe src='' frameborder=0
                                  ‘allowfullscreen’></iframe>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
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
                  <script type="text/javascript">
                      var sl=$(".copyright-wrap .copyright .co-right .select-btn ul li");
                      var con=$(".copyright-wrap .copyright .co-right .con .one");
                      sl.mouseover(function () {
//                    $(this).addClass("hover").siblings().removeClass("hover");
                          var _index=$(this).index();
                          con.eq(_index).show().siblings().hide();
//                    alert(_index);
                      })

                  </script>
              </div>
          </div>
      </div>
  </div>
  </body>
</html>
