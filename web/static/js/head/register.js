/*主页登录点击事件等相关--》开始*/
$(function () {
    $("#user-register").click(dl);   //登录点击事件
    $(".ali213SSOPopSheild").click(closeThis);
    $(".ali213SSOPopHolderNormal").click(dll);
    //主页登录表单提交事件
    $("#loginForm").submit(checkLogin);
});
function dl(){//登录点击的事件
    $(".ali213SSOPopSheild").prop('style','display:block');
}
function closeThis() {
    $(".ali213SSOPopSheild").prop('style','display:none');
}
function dll() {
    event.cancelBubble = true; // 阻止事件冒泡   详情https://segmentfault.com/a/1190000003007361
}
//登录框提交事件
/*正则表达式*/
var checkPhone=/^1[3456789]\d{9}$/;       /*手机正则表达式*/
var checkEmail=/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;       //邮箱正则表达式
var checkCoden=/^\d{6}$/;       //验证码正则
var checkUser=/^\w{6,16}$/;    //用户名正则
var checkPassw=/(?!^[0-9]+$)(?!^[A-z]+$)(?!^[^A-z0-9]+$)^.{6,16}$/;
function checkLogin() {
    var flag=false;
    var checkN=checkUserName();
    var checkP=checkUserPassword();
    if(checkN&&checkP)  {flag=Sigin($("#input_username").val(),$("#ali213SSO_input_pwd").val());}
    return flag;
}
function checkUserName() {//检查用户名
    var userName=$("#input_username").val();
    if(userName!=""&&userName!="用户名/手机/邮箱")
    {
        if(checkPhone.test(userName)||checkEmail.test(userName)||checkUser.test(userName)) {$("#input_username").next().html(""); return true;}
        else{$("#input_username").next().html("用户名格式不正确");return false;}
    }
    else {$("#input_username").next().html("用户名不能为空");return false;}
}
function checkUserPassword() {//检查用户名
    var userPassword=$("#ali213SSO_input_pwd").val();
    if(userPassword!=""&&userPassword!="密码")
    {
        if(checkPassw.test(userPassword)) {$("#ali213SSO_input_pwd").next().html(""); return true;}
        else{$("#ali213SSO_input_pwd").next().html("密码格式不正确");return false;}
    }
    else {$("#ali213SSO_input_pwd").next().html("密码不能为空");return false;}
}
/*登录表单提交检查*/
function Sigin(UNname,UPass) {
    $.ajax({
        url:"/ider/web/User",
        data:"action=checkUserP&name="+UNname+"&password="+UPass,
        type:"post",
        async:false,
        success:function (a) {
            switch (a) {

                case "0":
                    alert("用户名、邮箱、手机号或密码错误");
                    return false;
                case "1":
                    location.reload();
                    return true;
                default :
                    return false;
            }
        }
    });
    return false;
}
/*主页登录点击事件等相关--》结束*/






