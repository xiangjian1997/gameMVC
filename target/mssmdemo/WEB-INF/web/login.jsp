
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><!--登录页面-->
    <title>Game登录页面</title>
    <!--头部-start-->
    <jsp:include page="head/head.jsp"></jsp:include>
    <!--头部-end-->
    <!--导入css样式-->
    <link href="${pageContext.request.contextPath}/css/signin.css" rel="stylesheet" type="text/css">
    <!--导入js-->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/web/signin.js" type="text/javascript"></script>
</head>
<body>

<c:if test="${sessionScope.temp!=null}">
    <div class="msg-before-transfer-holder">
        <div>您已登录<a href="${pageContext.request.contextPath}/index.jsp" style="color: red;">如果没有跳转请点此链接</a></div>
    </div>
    <meta http-equiv="refresh" content="3;url=${pageContext.request.contextPath}/index.jsp">
</c:if>
<c:if test="${sessionScope.temp==null}">
    <div class="ucenter_body">
        <div class="ucenter_body_con">
            <div class="ucenter_body_left"><img src="statics/images/images.jpg" width="530" height="320"></div>
            <div class="ucenter_body_right">
                <form id="signin" action="${pageContext.request.contextPath}/web/user/register" method="post" novalidate="novalidate">
                    <div class="ucenter_input">
                        <span></span>
                        <input type="text" name="username" class="input_common" id="input_username" value="用户名/手机/邮箱" onblur="if(this.value.replace(/\s/g,'')=='') this.value='用户名/手机/邮箱';" onfocus="if(this.value.replace(/\s/g,'')=='用户名/手机/邮箱') this.value='';">
                        <em></em>
                    </div>
                    <div class="ucenter_input">
                        <span class="u_pwd"></span>
                        <input type="password" name="passwd" class="input_common input_common_passwd" id="input_pwd" value="">
                        <em></em>
                    </div>
                    <input type="hidden" name="inputYzm" id="input_yzm" value="">
                    <div class="ucenter_forget">
                        <div class="ucenter_forget_con"><input type="checkbox" name="input_radio" id="input_radio"><span>记住通行证</span></div>
                        <div class="forgot_report_holder"><a href="/forgot.html">忘记密码</a> / <a style="color:red;" href="http://game.ali213.net/thread-6080716-1-1.html" target="_blank">登录反馈</a></div>
                    </div>
                    <div class="ucenter_btn">
                        <input type="submit" id="ucenter_login" value="登 录">
                        <a id="signin_login" href="${pageContext.request.contextPath}/web/register">注册</a>
                    </div>
                    <div class="ucenter_other">
                        <em>一键登录：</em><a id="signin_wx" class="u_wx" href="/api.html?action=wxrequest&amp;method=wxcallback">&nbsp;</a><a id="signin_qq" class="u_qq" href="/api.html?action=qqrequest&amp;method=qqcallback">&nbsp;</a><a id="signin_wb" class="u_wb" href="/api.html?action=wbrequest&amp;method=wbcallback">&nbsp;</a>
                    </div>
                </form>
            </div>
        </div>
        <div class="ucenter_cline"></div>
        <div class="ucenter_adv"><script src="//bmp.ali213.net/js/473.js"></script><script type="text/javascript" src="//bmp.ali213.net/pubjs/lb.js"></script><link rel="stylesheet" type="text/css" href="//bmp.ali213.net/pubjs/lunbo.css"><div class="pn ad adfhyxSlideToggle index_ad_stl"><div class="ad-slide ad-slide-all"><ul class="ad-slide-list" style="margin-left: 0px;"><li class="item" style="width:242px; overflow: hidden;"><div class="c1"><a href="https://ali213.fhyx.hk/item/3829.html" target="_blank" class="art-item-pt"> <img src="//pbmp.ali213.net/Pics/2020/zt_indextl255_1_234c80.jpg" width="234" height="80" style="opacity: 1;"></a></div><div class="c2" style="width: 0px; overflow: hidden;"><a href="https://ali213.fhyx.hk/item/3829.html" target="_blank"><img src="//pbmp.ali213.net/Pics/2020/zt_indextl255_1_718c80.jpg" width="718" height="80" style="opacity: 1;"></a></div></li><li class="item" style="width:242px; overflow: hidden;"><div class="c1"><a href="https://ali213.fhyx.hk/item/1810.html" target="_blank" class="art-item-pt"> <img src="//pbmp.ali213.net/Pics/2020/zt_indextl255_2_234c80.jpg" width="234" height="80" style="opacity: 1;"></a></div><div class="c2" style="width: 0px; overflow: hidden;"><a href="https://ali213.fhyx.hk/item/1810.html" target="_blank"><img src="//pbmp.ali213.net/Pics/2020/zt_indextl255_2_718c80.jpg" width="718" height="80" style="opacity: 1;"></a></div></li><li class="item" style="width:242px; overflow: hidden;"><div class="c1"><a href="https://ali213.fhyx.hk/item/3737.html#attrone=7394" target="_blank" class="art-item-pt"> <img src="//pbmp.ali213.net/Pics/2020/zt_indextl255_3_234c80.jpg" width="234" height="80" style="opacity: 1;"></a></div><div class="c2" style="width: 0px; overflow: hidden;"><a href="https://ali213.fhyx.hk/item/3737.html#attrone=7394" target="_blank"><img src="//pbmp.ali213.net/Pics/2020/zt_indextl255_3_718c80.jpg" width="718" height="80" style="opacity: 1;"></a></div></li><li class="item" style="width:242px;"><div class="c1"><a href="https://ali213.fhyx.com/zt/2020newyear/" target="_blank" class="art-item-pt"> <img src="//pbmp.ali213.net/Pics/2020/zt_indextl255_4_234c80.jpg" width="234" height="80" style="opacity: 1;"></a></div><div class="c2" style="width: 0px;"><a href="https://ali213.fhyx.com/zt/2020newyear/" target="_blank"><img src="//pbmp.ali213.net/Pics/2020/zt_indextl255_4_718c80.jpg" width="718" height="80" style="opacity: 1;"></a></div></li></ul></div></div><script src="//bmp.ali213.net/pubjs/lunbo.js" type="text/javascript"></script></div>
        <script src="${pageContext.request.contextPath}/js/lib/require.js" defer="" async="true" ></script>
            <%--    data-main="${pageContext.request.contextPath}/js/?r=19"--%>
    </div>
    <!--尾部-start-->
    <jsp:include page="/all/include/tail.jsp"></jsp:include>
    <!--尾部-end-->
</c:if>


</body>
</html>
