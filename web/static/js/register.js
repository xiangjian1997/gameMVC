/*仅点击事件*/
$(function () {
    $(".get_code").click(sendCode);     //获取邮箱验证码点击事件
    $("#emailsignup").submit(checkemailall);         //邮箱注册提交事件
    //键盘事件`
    $("input").keyup(checkall);
    $("[name='email']").keyup(checkemail);
    //获取焦点事件
    $(".register_pwd").focus(removeClass);        //密码框css样式
    $(".register_check ").focus(removeClass);     //确认密码css样式
    //失去焦点事件
    $("[type='password']").blur(addClass);
    $("input").blur(checkall);
});
/*正则表达式*/
var checkPhone=/^1[3456789]\d{9}$/;       /*手机正则表达式*/
var checkEmail=/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;       //邮箱正则表达式
var checkCoden=/^\d{6}$/;       //验证码正则
var checkYname=/^\w{6,16}$/;    //用户名正则
var checkPassw=/(?!^[0-9]+$)(?!^[A-z]+$)(?!^[^A-z0-9]+$)^.{6,16}$/;

var checkHave='2';  //用来判断改邮箱是否可以注册；0代表可以注册，1代表有该邮箱，2代表该邮箱不可注册
/**/
function removeClass() {$(this).removeClass("register_pwd_bg");$(this).removeClass("register_check_bg");}//注册密码框移除css样式
function addClass() {if($(this).val()==""&&$(this).prop("class")=="register_pwd"){$(this).addClass("register_pwd_bg");}if($(this).val()==""&&$(this).prop("class")=="register_check"){$(this).addClass("register_check_bg");}}//注册密码框添加css样式
/*选择注册方式*/
$(function(){
    $(".register_body_tab span").click(function () {
        if($(this).html()!=$("span[class='active']").html())
        {
            $(this).addClass("active").siblings().removeClass("active");
            $(".register_body_contain").each(function () {
                switch ($(this).css('display')) {
                    case 'block':
                        $(this).css('display',"none");
                        break;
                    case 'none':
                        $(this).css('display',"block");
                        break;
                }
            });
        }
    });
})
/*邮箱*/
function checkemail() /*邮箱验证格式正则表达式*/
{
    if($(".active").html()=="手机注册")
    {
        var phone=$("[name='']");
    }
    else{
        var email=$("[name='email']").val();
        var flag=checkEmail.test(email);
        if (flag==true)
        {
            $("#emailem").html("");
            $.ajax({
                url:url+"/web/User",
                data:"action=checkhave&email="+email,
                type:"post",
                async:false,
                success:function (fi) {
                    switch(fi)
                    {
                        case '0':
                            $("#emailem").html("");
                            checkHave='0';
                            break;
                        case '1':
                            $("#emailem").html("该邮箱已被注册");
                            checkHave='1';
                            break;
                        default:
                            $("#emailem").html("");
                            checkHave='0';
                    }
                }
            });
        }
        else{
            $("#emailem").html("请输入正确的邮箱格式");
            checkHave='2';
        }
    }
}
function checkUsername() {//判断该用户名是否注册过

}
function ajaxcheck(url,checksz) {
    $.ajax({
        url:url,
        data:checksz,
        async:false,
        type:"post",
        success:function (shu) {
            switch (shu) {
                case "1":

                    break;
            }
        }
    });
}
function sendCode() /*发送验证码or发送注册链接*/
{
    var emailflag=checkemail();
    if (emailflag==true){

    }

}
/*键盘事件*/
function checkall() {
    var checka=$(this).prop("name");
    var f=true;
    alert("你好");
    switch (checka) {
        case 'email':
            f=checkEmail.test($(this).val());
                if(f==true) {$(this).next().html("");}
                else{$(this).next().html("请输入正确的邮箱地址");}
            if(checkHave=='1') {$(this).next().html("该邮箱已被注册");}
            break;
        case 'emYzm':
            f=checkCoden.test($(this).val());
            if(f==true) {$(this).next().next().html("");}
            else {$(this).next().next().html("请正确输入您所收到的验证码")}
            break;
        case 'emusername':
            f=checkYname.test($(this).val());
            if(f==true&&!checkPhone.test($(this).val())&&!checkEmail.test($(this).val())) {$(this).next().html("");}
            else {$(this).next().html("请输入6-16位的字母数字并不能为邮箱和手机号");}
            break;
        case 'empasswd':
            f=checkPassw.test($(this).val());
            if(f==true) {$(this).next().html("");}
            else {$(this).next().html("请输入6-16字母、数字或特殊字符的两种组合")}
            break;
        case 'emrepasswd':
            if($(this).val()!=$("#empasswd").val()) {$(this).next().html("两次输入的密码不一致");}
            else{$(this).next().html("");}
            break;

        default:
            ;
    }
}

/*邮箱注册表单点击检查事件*/
function checkemailall() //检查填写是否符合标准
{
    var email=$("[name='email']").val();
    var ncode=$("[name='emYzm']").val();
    var uname=$("[name='emusername']").val();
    var fpass=$("[name='empasswd']").val();
    var spass=$("[name='emrepasswd']").val();
    if(checkEmail.test(email)==false) {$("[name='email']").next().html("请输入正确的邮箱格式");}
    if(checkCoden.test(ncode)==false) {$("[name='emYzm']").next().next().html("请正确输入您所收到的验证码");}
    if(!checkYname.test(uname)||checkEmail.test(uname)|checkPhone.test(uname)) {$("[name='emusername']").next().html("请输入6-16位的字母数字并不能为邮箱和手机号");}
    if(checkPassw.test(fpass)==false) {$("[name='empasswd']").next().html("请输入6-16字母、数字或特殊字符的两种组合");}
    if(fpass!=spass) {$("#emrepasswd").html("两次输入的密码不一致");}
    return (checkHave=='0')&&checkEmail.test(email)&&checkCoden.test(ncode)&&checkYname.test(uname)&&!checkEmail.test(uname)&&!checkPhone.test(uname)&&checkPassw.test(fpass)&&(fpass==spass);
}


















