/**
 * Created by wang on 2016/10/28.
 */
$(function () {
    (function () {
//购物车的特效
        $(".h_m_r_shop").hover(function () {
            $(".h_m_r_s_hide").stop(true).slideDown(500);
        }, function () {
            $(".h_m_r_s_hide").stop(true).slideUp(500);
        });

//$(document).ready(function () {
//    $(".h_m_r_shop").hover(function () {
//        $(".h_m_r_s_hide").css("display","block")
//    }, function () {
//        $(".h_m_r_s_hide").css("display","none")
//    });
//});
        //search input 获取焦点
        var $search = $("#n_wrap .nav .n_search");
        var $input = $(".nav .n_search .n_s_input input");
        var $search_hide = $(".nav .n_search .n_s_input .n_s_hide");
        $input.focus(function () {
            $search.addClass("focus");
            $search_hide.fadeIn();
        }).blur(function () {
            $search.removeClass("focus");
            $search_hide.fadeOut();
        });

        //鼠标滑过时候  产品显示
        var $one = $(".nav .n_main .n_m_one");
        var $product = $("#n_w_product");
        var $p_ul = $("#n_w_product .n_w_p_main ul");
        $one.hover(function () {
            var _index = $(this).index();
            $product.stop(true).slideDown(500);
            $p_ul.eq(_index).show().siblings().hide();
            $p_ul.eq(_index).hover(function () {
                $(this).show();
            });
            $search_hide.fadeOut();
        }, function () {
            $product.stop(true).slideUp(500);
        });
        $product.hover(function () {
            $(this).stop(true).slideDown(300);
        }, function () {
            $(this).stop(true).slideUp(300);
        });

        //banner 轮播
        var $tabLi = $("#banner .b_main .b_m_tab li");
        var $picLi = $("#banner .b_main .b_m_pic ul li");
        var $b_m_b_l = $("#banner .b_main .b_m_b_left");
        var $b_m_b_r = $("#banner .b_main .b_m_b_right");
        var $b_main = $("#banner .b_main");
        var _index = 0;
        var len = $tabLi.length;
        var timer = null;
        $tabLi.hover(function () {
            $(this).addClass("hover");
        }, function () {
            $(this).removeClass("hover");
        }).click(function () {
            _index = $(this).index();
            bannerPlay();
        });

        //点击按钮
        $b_m_b_r.click(function () {
            _index++;
            if (_index > len - 1) {
                _index = 0;
            }
            bannerPlay();
        });
        $b_m_b_l.click(function () {
            _index--;
            if (_index < 0) {
                _index = len - 1;
            }
            bannerPlay();
        });
        function bannerPlay() {
            $tabLi.eq(_index).addClass("click").siblings().removeClass("click");
            $picLi.eq(_index).fadeIn().siblings().fadeOut();
        };

        //l轮播
        function auto() {
            timer = setInterval(function () {
                _index++;
                if (_index > len - 1) {
                    _index = 0;
                }
                bannerPlay();
            }, 3000);
        }

        auto();

        //鼠标移动在banner上自动轮播结束 离开继续
        $b_main.hover(function () {
            clearInterval(timer);//清除定时器
        }, function () {
            auto();
        });

        (function () {
            var $nav_li = $("#banner .b_nav>ul>li");
            $nav_li.hover(function () {
                $(this).find(".b_n_hide").show();
            }, function () {
                $(this).find(".b_n_hide").hide();
            });
        })();

        //starGoods
        (function () {
            var $data = miData.starGoods;
            var len = $data.imgSrc.length;
            var html = "";
            var timer = null;
            var flag = true;
            var $ul = $("#starGoods .s_goods ul");
            var $btn = $("#starGoods .s_t_btn div");
            var $left = $("#starGoods .s_t_btn .s_t_b_left");
            var $right = $("#starGoods .s_t_btn .s_t_b_right");
            //根据图片的个数生成li
            for (var i = 0; i < len; i++) {
                html += "<li>" +
                    "	<a href=''><img class='s_g_img' src='" + $data.imgSrc[i] + "'/></a>" +
                    "	<a class='s_g_title' href=''>" + $data.title[i] + "</a>" +
                    "	<p class='s_g_detail'>" + $data.detail[i] + "</p>" +
                    "	<p class='s_g_price'>" + $data.price[i] + "</p>" +
                    "	</li>";
            }
            $ul.append(html);
            //li的集合
            var $li = $("#starGoods .s_goods ul li");
            var margin = $li.eq(5).position().left;
            //var margin=$li.width;
            $btn.click(function () {
                var index = $(this).index();
                if (index) {
                    //右边被点击
                    if (flag) {
                        flag = !flag;
                        $ul.stop(true).animate({
                            marginLeft: -margin
                        }, 500);
                        toggle();
                        clearInterval(timer);
                        auto();
                    }
                }
                else {
                    //左边被点击
                    if (!flag) {
                        flag = !flag;
                        $ul.stop(true).animate({
                            marginLeft: 0
                        }, 500);
                        toggle();
                        clearInterval(timer);
                        auto();
                    }
                }
            });

            //实现click样式的轮播切换
            function toggle() {
                $left.toggleClass("click");
                $right.toggleClass("click")
            };
//				//自动轮播
            function auto() {
                timer = setInterval(function () {
                    if (flag) {
                        flag = !flag;
                        $ul.stop(true).animate({
                            marginLeft: -margin
                        }, 500);
                        //toggle();
                    }
                    else {
                        flag = !flag;
                        $ul.stop(true).animate({
                            marginLeft: 0
                        }, 500);
                        //toggle();
                    }
                }, 6000);
            };
            auto();
        })();

        // (function(){
        //     var $data=miData.match;
        //     var len=$data.length;//ul的个数
        //     var $right=$("#Goods .g_match .g_m_right");//获取要生成ul的容器
        //     //title 的li
        //     var $t_li=$("#Goods .g_match .g_m_title ul li");
        //     for(var i=0;i<len;i++){
        //         var $ul= $("<ul></ul>");
        //         $right.append($ul);
        //     }
        //     //获取ul集合
        //     var $ul=$("#Goods .g_match .g_m_right ul");
        //     //默认第一个ul展示
        //     $ul.eq(0).css("display","block");
        //     //循环每一个ull,
        //     $ul.each(function(index){
        //         for(var i=0;i<9;i++){
        //             if(i<7){
        //                 $li = $("<li class='g_m_r_bottom'>"+
        //                     "<a href='' class='m_r_img'><img src='image/match/"+$data.attr[index]+"/"+(i+1)+".jpg'/></a>"+
        //                     "<a href='#' class='m_r_title'>"+$data[$data.attr[index]].title[i]+"</a>"+
        //                     "<p class='m_r_price'>"+$data[$data.attr[index]].price[i]+"</p>"+
        //                     "<p class='m_r_comment'>"+$data[$data.attr[index]].comment[i]+"</p>"+
        //                     "</li>");
        //                 if(i==1||2||3||4||5||6||7 && index==this.index()){
        //                     var $div=$("<div class='m_r_hide'>"+
        //                         "<span class='review'>小米的产品值得信赖，用了一段时间，无论是听歌，打电话...</span>"+
        //                         "<span class='author'>来自于 气功流 的评价</span>"+
        //                         "</div>");
        //                     $li.append($div);
        //                 }
        //             }else if(i==7){
        //                 $li = $("<li class='m_r_eight'>"+
        //                     "<a href='#' class='m_r_e_title'>"+$data[$data.attr[index]].title[i]+"</a>"+
        //                     "<a href='#'><img class='m_r_e_img'  src='image/match/"+$data.attr[index]+"/8.jpg'/></a>"+
        //                     "<p class='m_r_e_price'>99元</p>"+
        //                     "</li>");
        //             }else if(i==8){
        //                 $li = $("<li class='m_r_nine'>"+
        //                     "<a href='#' class='m_r_n_more'>浏览更多</a>"+
        //                     "<a href='#' class='m_r_n_ear'>"+$data.attrName[index]+"</a>"+
        //                     "<a href='#' class='iconfont'>&#xe617;</a>"+
        //                     "</li>");
        //             }
        //             $(this).append($li);
        //         }
        //     });
        //
        //     //当鼠标滑动到li时，即第一个ul 的第六个li有个隐藏的div要显示
        //     var $li=$("#Goods .g_match .g_m_right ul li");
        //     $li.hover(function(){
        //         $(this).find(".m_r_hide").stop(true).animate({
        //             bottom:0,
        //             opacity:1
        //         },300);
        //     },function(){
        //         $(this).find(".m_r_hide").stop(true).animate({
        //             bottom:-74,
        //             opacity:0
        //         },300);
        //     });
        //
        //     //鼠标移入title li 显示对应的ul
        //     $t_li.mouseover(function(){
        //         var _index=$(this).index();
        //         $(this).addClass("hover").siblings().removeClass("hover");
        //         $ul.eq(_index).fadeIn(800).siblings().fadeOut(500);
        //     });
        // })();

    })();
});
