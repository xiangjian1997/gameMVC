$(function () {
    $("#ali213SSO").mouseover(changebn);
    $("#ali213SSO").mouseout(changebna);
    $(".userExit").click(Exit);     //点击退出事件
    /*排行榜鼠标焦点*/
    $(".ranking-li").mouseover(thisoverout);
    $(".toggle-li").click(thisoverout);
});
//主页登录显示个人资料框
function changebn() {
    $(".ali213SSO-info-holder").prop('style','display:block');
}
function changebna() {
    $(".ali213SSO-info-holder").prop('style','display:none');
}
//退出事件
function Exit() {
    $.ajax({
        url:"/iderspringmvc_war_exploded/web/user/userExit",
        type:"post",
    });
    location.reload();
}
//鼠标排行榜方法
function thisoverout() {
    $(this).addClass("active").siblings().removeClass("active");
    var zz=/^\d$/;
    if(zz.test($(".toggle-li").index(this)))
    {
        var th=$(this).parent().next().children();
        th.siblings().css( "display", "none" );
        var shu=$(".toggle-li").index(this);
        if(shu>=$(".channel-ul .toggle-li").length){shu-=$(".channel-ul .toggle-li").length}
        th.get(shu).style.display="block";
        // $(this).parent().next().children().get($(".toggle-li").index(this)).siblings().css("display","none");
    }
}
/*轮播图开始*/
var time=-1;
$(function () {
   $(".screenshots div").mouseover(onThis);
   $(".screenshots div").mouseleave(leaveThis);
   $(".carousel_thumbs div").click(changePicture);
   $("#home_maincap_v7").mouseover(clearTime);         //当home_page_content获得鼠标时自动轮播图停止
   $("#home_maincap_v7").mouseleave(startTime);        //当home_page_content离开鼠标时自动轮播图开始
   $(".arrow").click(changeLeftOrRight);                       //轮播图的左右切换
   startTime();
});
var picture=null;
function onThis() {//鼠标在当前的小图片上
    if(picture==null) {picture=$(".focus .main_capsule").attr("style");}
    $(".focus .main_capsule").attr("style",$(this).children().attr("style"));
}
function leaveThis() {//鼠标移出当前的小图片上
    if(picture!=null){$(".focus .main_capsule").attr("style",picture);picture=null;}
}
//自动切换轮播图
var number=0;       //用来获得当前轮播图下标
function changePictureSelf() {
    number+=1;
    if(number==$(".store_main_capsule").length) {number=0;}
    $(".broadcast_capsule").eq(number).addClass("focus").siblings().removeClass("focus");
    $(".carousel_thumbs div").eq(number).addClass("focus").siblings().removeClass("focus");
    picture=null;
}
//计时器
function startTime() {
    time=window.setInterval(changePictureSelf,5000);
}
function clearTime() {
    clearInterval(time);
}

//点击向左或向右时的轮播图切换
function changeLeftOrRight() {
    if($(this).hasClass("left")) {number-=1}
    else {number+=1}
    if(number>$(".store_main_capsule").length-1) {number=0;}
    if(number<0) {number=$(".store_main_capsule").length-1;}
    $(".broadcast_capsule").eq(number).addClass("focus").siblings().removeClass("focus");
    $(".carousel_thumbs div").eq(number).addClass("focus").siblings().removeClass("focus");     //下方点击的框对应，此做法繁琐，后期考虑是否可优化或换种方法
    picture=null;
}
//点击切换轮播图
function changePicture() {
    $(this).addClass("focus").siblings().removeClass("focus");
    var shu=$(".carousel_thumbs div").index(this);
    number=shu;
    $(".broadcast_capsule").eq(shu).addClass("focus").siblings().removeClass("focus");
    picture=null;
}

/*轮播图结束*/









