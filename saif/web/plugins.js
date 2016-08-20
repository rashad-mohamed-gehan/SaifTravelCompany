/*global $*/
$(document).ready(function () {
    "use strict";
    var scroll = $("#scroll-to-top");
    $("html").niceScroll();
    $(".loadMore").click(function () {
        $(this).hide();
        $(".loadMoreHotels").slideDown();
        $(".travels").css("margin-top", "300px");
    });
    $(".loadMore").mouseenter().css({"cursor": "pointer"});
    $(window).scroll(function () {
        
        $(this).scrollTop() >= 700 ? scroll.show() : scroll.hide();
    });
    scroll.click(function () {
        $("html,body").animate({ scrollTop : 0}, 800);
    });
    $(".admin-buttons").hide();
});