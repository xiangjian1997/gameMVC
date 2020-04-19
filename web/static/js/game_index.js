$(function () {
    $(".load-more").click(unfold);      //展开或收起
    $(".list-ul span a").click(newType);
});
//点击展开或收起
function unfold() {
    if($(this).hasClass("checked"))
    {
        $(this).removeClass("checked");
        $(this).html("展开");
        $(this).parent().eq(2).eq(1).attr("style","height:auto");
    }
    else {
        $(this).addClass("checked");
        $(this).html("收起");
        $(this).parent().eq(2).eq(1).attr("style","height:auto");
    }
}
function newType() {
    $(this).parent().parent().parent().attr("value",$(this).attr("value"));
    $(this).addClass("checked").parent().siblings().children().removeClass("checked");
    var type="";
    $(".list-ul-box").each(function (i) {
        if(i==$(".list-ul-box").length-1) {type=type+$(this).attr("value");}
        else {type=type+$(this).attr("value")+",";}
    });
    $.ajax({
        url:"ider/web/GameType",
        type:"post",
        data:"action=getDataType&allType="+type,
        success:(function () {

        })
    });
}



