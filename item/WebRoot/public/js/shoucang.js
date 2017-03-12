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