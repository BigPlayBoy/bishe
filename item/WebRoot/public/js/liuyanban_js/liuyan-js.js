/**
 * Created by WANGTAO on 2017/2/9.
 */
$(document).ready(function () {
    function currentTime(){
        var weekday=new Array(7);
        weekday[1]="星期一";
        weekday[2]="星期二";
        weekday[3]="星期三";
        weekday[4]="星期四";
        weekday[5]="星期五";
        weekday[6]="星期六";
        weekday[7]="星期日";
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
    var $mtln=$(".message .m-t .m-t-left ul li:nth-child(2)");
    var $mtln2=$(".message .m-t .m-t-left ul li:nth-child(3)");
    var $mbrf=$(".message .m-b .m-b-r .m-b-r-first");
    var $mbrs=$(".message .m-b .m-b-r .m-b-r-second");
    $mtln.click(function () {
        // $mbrf.css("display","block");
        $mbrf.slideDown(2500);
        // $mbrs.css("display","none");
        $mbrs.hide();
    });
    $mtln2.click(function () {
        // $mbrf.css("display","none");
        // $mbrs.css("display","block");
        $mbrs.slideDown(2500);
        $mbrf.hide();
    })
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

$(document).ready(function () {//轮播切换图
    $('.quake-slider').quake({ effects: ['fade','swirlFadeIn', 'swirlFadeOut', 'swirlFadeIn', 'linearPealReverse', 'slideIn', 'swirlFadeIn', 'explodeFancy'],
        thumbnails: true,
        captionOpacity: '0.3',
        captionsSetup: [
            {
                "orientation": "bottom",
                "slides": [0, 1],
                "callback": captionAnimateCallback
            },
            {
                "orientation": "top",
                "slides": [2, 3],
                "callback": captionAnimateCallback
            }
            ,
            {
                "orientation": "left",
                "slides": [4, 5],
                "callback": captionAnimationCallback1
            }
            ,
            {
                "orientation": "right",
                "slides": [6, 7],
                "callback": captionAnimationCallback1
            }
        ]

    });

    function captionAnimateCallback(captionWrapper, captionContainer, orientation) {
        captionWrapper.css({ left: '-990px' }).stop(true, true).animate({ left: 0 }, 500);
        captionContainer.css({ left: '-990px' }).stop(true, true).animate({ left: 0 }, 500);
    }
    function captionAnimationCallback1(captionWrapper, captionContainer, orientation) {
        captionWrapper.css({ top: '-330px' }).stop(true, true).animate({ top: 0 }, 500);
        captionContainer.css({ top: '-330px' }).stop(true, true).animate({ top: 0 }, 500);
    }

});

$(document).ready(function () {//layui 所用到的js
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form()
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 5){
                    return '标题至少得5个字符啊';
                }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });
        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            });
            return false;
        });
    });
});

$(document).ready(function () {
    layui.use('layedit', function(){
        var layedit = layui.layedit
            ,$ = layui.jquery;

        //构建一个默认的编辑器
        var index = layedit.build('LAY_demo1');

        //编辑器外部操作
        var active = {
            content: function(){
                alert(layedit.getContent(index)); //获取编辑器内容
            }
            ,text: function(){
                alert(layedit.getText(index)); //获取编辑器纯文本内容
            }
            ,selection: function(){
                alert(layedit.getSelection(index));
            }
        };

        $('.site-demo-layedit').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
    });
})