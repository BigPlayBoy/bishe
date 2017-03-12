/**
 * Created by wang on 2016/12/10.
 */
        $(document).ready(function () {
            var $tabLi = $("#banner .b_main .b_m_tab li");
            var $picLi = $("#banner .b_main .b_m_pic ul li");
            var $b_m_b_l = $("#banner .b_main .b_m_b_left");
            var $b_m_b_r = $("#banner .b_main .b_m_b_right");
            var $b_main = $("#banner .b_main");
            var $pic = $("#banner .b_main .b_m_pic");
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

            $b_main.hover(function () {
                $b_m_b_l.css("display", "block");
                $b_m_b_r.css("display", "block");
            }, function () {
                $b_m_b_l.css("display", "none");
                $b_m_b_r.css("display", "none");
            })
        });



$(document).ready(function () {
    var $input=$(".search-wrap .se-input input");
    var si=$(".search-wrap .se-input");
    var sf=$(".search-wrap .se-input .se_find");
    $input.focus(function () {
        si.addClass("focus");
        sf.addClass("focus");
    }).blur(function () {
        si.removeClass("focus");
        sf.addClass("focus");
    })
});

$(document).ready(function () {
    var arrowl = $(".course-scroll .scroll-content .arrow-left");
    var arrowr = $(".course-scroll .scroll-content .arrow-right");
    var $ul = $(".course-scroll .scroll-content .cs ul");
    var $cs = $(".course-scroll .scroll-content .cs");
    var $ulW = $cs.width();
    arrowl.click(function () {
        $ul.stop(true).animate({
            marginLeft: -$ulW
        }, 1000, function () {
            $(this).css({marginLeft: "0"}).find("ul:last").appendTo(this);
        })
    });
    arrowr.click(function () {
        $ul.stop(true).animate({
            marginLeft: $ulW
        }, 1000, function () {
            $(this).css({marginRight: "0"}).find("ul:last").appendTo(this);
        })
    })
});

$(document).ready(function () {
    var setxt=$(".search-wrap .se-input input");
    $(function(){
        setxt.bind({
            focus:function(){
                if (this.value == this.defaultValue){
                    this.value="";
                }
            },
            blur:function(){
                if (this.value == ""){
                    this.value = this.defaultValue;
                }
            }
        });
    });
});


$(document).ready(function () {
    var $img=$(".g_video .g_v_con li img");
    //span
    var $span=$(".g_video .g_v_con li span");
    //视频大窗口
    var $hide=$(".g_video .g_v_hide");
    //g_v_h_con
    var $g_v_h_con=$(".g_video .g_v_hide .g_v_h_con");
    //iframe视频
    var $iframe=$( ".g_video .g_v_hide .g_v_h_con .g_v_h_c_content iframe");
    //关闭按钮
    var $close=$(".g_video .g_v_hide .g_v_h_con .g_v_h_title .close");

    $img.hover(function () {
        $(this).parent().find("span").addClass("hover");
    }, function () {
        $(this).parent().find("span").removeClass("hover");
    });

    $span.hover(function () {
        $(this).addClass("hover");
    }, function () {
        $(this).removeClass("hover");
    });

    //创建遮罩大小
    function getWidthandHeight(){
        $hide.css({
            width:$(window).width(),
            height:$(window).height()
        })
    }
    getWidthandHeight();
    $(window).resize(getWidthandHeight);
    //点击img的时候，出现弹出遮罩层
    $span.click(function(){
        $hide.fadeIn(400).find(".g_v_h_con").show(true).animate({
            top:"50%",
            opacity:1
        },500);
        //改变当前iframe视频的src播放地址
        var $url=$(this).parent().attr("data");
        $iframe.attr("src",$url);
        //改变当前title
        var html = $(this).parent().find("a").html();
        $g_v_h_con.find("p").html(html);
    });
    //点击close关闭按钮 关闭当前窗口 视频播放窗口
    ($close).click(function () {
        $g_v_h_con.stop(true).animate({
            top:"1000%",
            opacity:0
        },500,function(){
            $hide.fadeOut(300);
        });
        //清空iframe的src
        $iframe.attr("src","");
    });
});
$(document).ready(function () {
    $(function($){
        // 占位符项目来填充列表的功能
        function populate(container, count, offset){
            var output = '';
            offset = isNaN(offset) ? 0 : offset;
            for(var i = 0; i<count; i++ ){
                output += '<li>'+(offset+i)+'</li>';
            }
            return $(output).appendTo(container);
        }
        // 填充列表项
        $('ul[data-items]').each(function(i,e){
            var items = parseInt($(e).data('items'), 10);
            populate(e, items);
        });

        // 主要调用部分
        $(document).on('activated',function(event){
            var $section = $(".scrollbox");
            var $frame = $section.find('.frame'),
                $ul = $frame.find('ul').eq(0),
                $scrollbar = $section.find('.scrollbar'),
                $buttons = $section.find('.controlbar [data-action]');

            populate($ul, 10);

            // 控制
            $buttons.on('click',function(e){
                var action = $(this).data('action');
                switch(action){
                    case 'reset':
                        $frame.sly('toStart');
                        setTimeout(function(){
                            $ul.find('li').slice(10).remove();
                            $frame.sly('reload');
                        }, 200);
                        break;
                    default:
                        $frame.sly(action);
                }
            });

            $section.find(".slyWrap").each(function(i,e){
                var cont = $(this),
                    frame = cont.find(".sly"),
                    slidee = frame.find("ul"),
                    scrollbar = cont.find(".scrollbar"),
                    pagesbar = cont.find(".pages"),
                    options = frame.data("options"),
                    controls = cont.find(".controls"),
                    prevButton = controls.find(".prev"),
                    nextButton = controls.find(".next"),
                    prevPageButton = controls.find(".prevPage"),
                    nextPageButton = controls.find(".nextPage");

                options = $.extend({},options,{
                    scrollBar: scrollbar,
                    pagesBar: pagesbar,
                    prev: prevButton,
                    next: nextButton,
                    prevPage: prevPageButton,
                    nextPage: nextPageButton,
                    disabledClass: 'btn-disabled'
                });
                frame.sly( options );
                cont.find("button").click(function(){
                    var action = $(this).data('action'),
                        arg = $(this).data('arg');
                    switch(action){
                        case 'add':
                            slidee.append(slidee.children().slice(-1).clone().removeClass().text(function(i,text){
                                return text/1 + 1;
                            }));
                            frame.sly('reload');
                            break;
                        case 'remove':
                            slidee.find("li").slice(-1).remove();
                            frame.sly('reload');
                            break;
                        default:
                            frame.sly(action, arg);
                    }
                });
            });
        }).trigger('activated');
    });
});