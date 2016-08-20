$(document).ready(function(){
    $("#my-tabs li").click(function(){
        var myId=$(this).attr("id");
        $(this).removeClass("inactive").siblings().addClass("inactive");
        $(".my-container div").hide();
        $("#"+myId+"-content").fadeIn(1500);
    });
});