/**
 * Created by wang on 2016/11/19.
 */
    //content 内容切换
$(function () {
    (function () {
        var $li = $("#Goods .g_comment .g_c_con ul .g_c_c_li");
        // tab 四个点的tab切换
        var $tab = $("#Goods .g_comment .g_c_con .g_c_c_li .g_c_tab");
        //标签按钮li集合
        var $tabLi = $("#Goods .g_comment .g_c_con .g_c_c_li .g_c_tab ul li");
        //左边的箭头
        var $left = $("#Goods .g_comment .g_c_con .g_c_c_li .g_c_b_left");
        //右边的箭头
        var $right = $("#Goods .g_comment .g_c_con .g_c_c_li .g_c_b_right");
        //li里内容区div
        var $box_wrap = $("#Goods .g_comment .g_c_con ul .g_c_c_li .b_wrap div");
        var $box_wrap1 = $("#Goods .g_comment .g_c_con ul .g_c_c_li .b_wrap .b_wrap_box");
        //其他商店按钮
        var $otherBtn = $("#Goods .g_comment .g_c_con ul .g_c_c_li .runto");
        var _index = 0;//全局的索引
        var len = $tabLi.length;
        //var len2=$box_wrap1.length;
        //alert(len2);
        //alert(len);
        //var len1=$box_wrap.length;
        //alert(len1);
        var timer = null;
         $li.each(function (index) {
            var color="#f60";
             switch (index){
                 case 1:
                     color="#83c44e";
                     break;
                 case 2:
                     color = "#e53935";
                     break;
                 case 3:
                     color = "#2196f3";
                     break;
             }
             $(this).css("border-color",color).find("h3").css("color",color);
             $(this).find(".runto").css({"border-color":color,"color":color});
             this.background=color;
         });
        $tabLi.hover(function () {
            $(this).addClass("hover");
        }, function () {
            $(this).removeClass("hover");
        }).click(function () {
            _index = $(this).index();
            contentPlay();
        });
        $right.click(function () {
            _index++;
            if (_index > len - 1) {
                _index = 0;
            }
            contentPlay();
        });
        $left.click(function () {
            _index--;
            if (_index < 0) {
                _index = len - 1;
            }
            contentPlay();
        });
        function contentPlay() {
            $tabLi.eq(_index).addClass("click").siblings().removeClass("click");
            $box_wrap.eq(_index).fadeIn().siblings().fadeOut();
        };


        //l轮播
        function auto() {
            timer = setInterval(function () {
                _index++;
                if (_index > len - 1) {
                    _index = 0;
                }
                contentPlay();
            },2000);
        }

        auto();

        $box_wrap1.hover(function () {
            clearInterval(timer);
        }, function () {
            auto();
        });
    })();


    // (function () {
    //     //img
    //     var $img=$("#Goods .g_video .g_v_con li img");
    //     //span
    //     var $span=$("#Goods .g_video .g_v_con li span");
    //     //视频大窗口
    //     var $hide=$("#Goods .g_video .g_v_hide");
    //     //g_v_h_con
    //     var $g_v_h_con=$("#Goods .g_video .g_v_hide .g_v_h_con");
    //     //iframe视频
    //     var $iframe=$("#Goods .g_video .g_v_hide .g_v_h_con .g_v_h_c_content iframe");
    //     //关闭按钮
    //     var $close=$("#Goods .g_video .g_v_hide .g_v_h_con .g_v_h_title .close");
    //
    //     $img.hover(function () {
    //         $(this).parent().find("span").addClass("hover");
    //     }, function () {
    //         $(this).parent().find("span").removeClass("hover");
    //     });
    //
    //     $span.hover(function () {
    //         $(this).addClass("hover");
    //     }, function () {
    //         $(this).removeClass("hover");
    //     });
    //
    //     //创建遮罩大小
    //     function getWidthandHeight(){
    //         $hide.css({
    //             width:$(window).width(),
    //             height:$(window).height()
    //         })
    //     }
    //     getWidthandHeight();
    //     $(window).resize(getWidthandHeight);
    //     //点击img的时候，出现弹出遮罩层
    //     $span.click(function(){
    //         $hide.fadeIn(400).find(".g_v_h_con").show(true).animate({
    //             top:"50%",
    //             opacity:1
    //         },500);
    //         //改变当前iframe视频的src播放地址
    //         var $url=$(this).parent().attr("data");
    //         $iframe.attr("src",$url);
    //         //改变当前title
    //         var html = $(this).parent().find("a").html();
    //         $g_v_h_con.find("p").html(html);
    //     });
    //     //点击close关闭按钮 关闭当前窗口 视频播放窗口
    //     ($close).click(function () {
    //         $g_v_h_con.stop(true).animate({
    //             top:"1000%",
    //             opacity:0
    //         },500,function(){
    //             $hide.fadeOut(300);
    //         });
    //         //清空iframe的src
    //         $iframe.attr("src","");
    //     });
    // })();
});
//内容的li






