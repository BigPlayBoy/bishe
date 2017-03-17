/**
 * Created by WANGTAO on 2017/2/22.
 */
/**
 * Created by WANGTAO on 2017/2/11.
 */
$(document).ready(function () {
    jQuery.fn.addFavorite = function(l, h) {
        return this.click(function() {
            var t = jQuery(this);
            if(jQuery.browser.msie) {
                window.external.addFavorite(h, l);
            } else if (jQuery.browser.mozilla || jQuery.browser.opera) {
                t.attr("rel", "sidebar");
                t.attr("title", l);
                t.attr("href", h);
            } else {
                alert("请使用Ctrl+D将本页加入收藏夹！");
            }
        });
    };
    $(function(){
        $('.shoucang').addFavorite('收藏本站',location.href);
    });
});


$(document).ready(function () {
    function currentTime(){
        var weekday=new Array(7);
        weekday[1]="星期一";
        weekday[2]="星期二";
        weekday[3]="星期三";
        weekday[4]="星期四";
        weekday[5]="星期五";
        weekday[6]="星期六";
        weekday[0]="星期日";
        var d = new Date(),str = '';
        str += d.getFullYear()+'年';
        str  += d.getMonth() + 1+'月';
        str  += d.getDate()+'日';
        str += d.getHours()+'时';
        str  += d.getMinutes()+'分';
        str +='&nbsp;&nbsp;&nbsp;'+weekday[d.getDay()];//获取当前星期
        return str;
    }
    setInterval(function(){
        $('.time1').html(currentTime)},1000);
});



$(document).ready(function () {
    var sl=$(".copyright-wrap .copyright .co-right .select-btn ul li");
    var con=$(".copyright-wrap .copyright .co-right .con .one");
    sl.mouseover(function () {
//                    $(this).addClass("hover").siblings().removeClass("hover");
        var _index=$(this).index();
        con.eq(_index).show().siblings().hide();
//                    alert(_index);
    })
});

$(document).ready(function () {
    var $person=$("#header .header-content .person");
    var $personhide=$("#header .header-content .person .person-hide");
    $person.hover(function () {
//        alert("你好！");
//        $personhide.css("display","block");
        $personhide.slideDown(500);
    },function () {
//        $personhide.css("display","none");
        $personhide.slideUp(500);
    })
});