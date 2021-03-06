<%--
  Created by IntelliJ IDEA.
  User: 11517
  Date: 2017/3/16
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0"/>
    <title>HTML5手机网页视频播放器代码</title>
    <link rel="stylesheet" type="text/css" href="../../public/css/video_css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="../../public/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../../public/css/video_css/willesPlay.css"/>
    <script type="text/javascript" src="../../public/js/jquery-1.11.0.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="../../public/js/video_js/willesPlay.js" charset="utf-8"></script>

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div id="willesPlay">
                <div class="playHeader">
                    <!--<div class="videoName">Tara - 懂的那份感觉</div>-->
                </div>
                <div class="playContent">
                    <div class="turnoff">
                        <!--<ul>-->
                        <!--<li><a href="javascript:;" title="喜欢" class="glyphicon glyphicon-heart-empty"></a></li>-->
                        <!--<li><a href="javascript:;" title="关灯" class="btnLight on glyphicon glyphicon-sunglasses"></a></li>-->
                        <!--<li><a href="javascript:;" title="分享" class="glyphicon glyphicon-share"></a></li>-->
                        <!--</ul>-->
                    </div>
                    <video width="100%" height="100%" id="playVideo">
                        <source src="../../video/4.mp4" type="video/mp4"></source>
                        当前浏览器不支持 video直接播放，点击这里下载视频： <a href="/">下载视频</a>
                    </video>
                    <div class="playTip glyphicon glyphicon-play"></div>
                </div>
                <div class="playControll">
                    <div class="playPause playIcon"></div>
                    <div class="timebar">
                        <span class="currentTime">0:00:00</span>
                        <div class="progress">
                            <div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar"
                                 aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
                        </div>
                        <span class="duration">0:00:00</span>
                    </div>
                    <div class="otherControl">
                        <span class="volume glyphicon glyphicon-volume-down"></span>
                        <span class="fullScreen glyphicon glyphicon-fullscreen"></span>
                        <div class="volumeBar">
                            <div class="volumewrap">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuemin="0"
                                         aria-valuemax="100" style="width: 8px;height: 40%;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
