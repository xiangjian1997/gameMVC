
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>注册登录页</title>
    <!--导入js文件-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/register.js"></script>
</head>
<body>
<!--头部-start-->
<jsp:include page="head/head.jsp"></jsp:include>
<!--头部-end-->

<div class="register_body">
    <c:if test="${sessionScope.temp!=null}">
        <div class="msg-before-transfer-holder">
            <div>您已登录<a href="${pageContext.request.contextPath}/index" style="color: red;">如果没有跳转请点此链接</a></div>
        </div>
        <meta http-equiv="refresh" content="3;url=${pageContext.request.contextPath}/index"><%--延时跳转--%>
    </c:if>
    <c:if test="${sessionScope.temp==null}">
        <div class="register_body_left">
            <div class="register_body_left_con">
                <div class="register_body_tab">
                    <span class="active">邮箱注册</span>
                </div>
                <div class="register_body_contain" style="display: block;">
                    <div class="register_body_form">
                        <form id="emailsignup" action="/web/user/register" method="post" novalidate="novalidate">
                            <div class="register_body_input">
                                <input type="text" name="email" class="register_tel" value="邮箱地址" onblur="if(this.value.replace(/\s/g,'')=='') this.value='邮箱地址';" onfocus="if(this.value.replace(/\s/g,'')=='邮箱地址') this.value='';" aria-required="true" aria-describedby="email-error" aria-invalid="true">
                                <em id="emailem"></em>
                            </div>
                            <div class="register_body_input">
                                <input type="text" name="emYzm" class="register_yzm" value="邮箱验证码" maxlength="6" onblur="if(this.value.replace(/\s/g,'')=='') this.value='邮箱验证码';" onfocus="if(this.value.replace(/\s/g,'')=='邮箱验证码') this.value='';" aria-required="true" aria-describedby="emYzm-error" aria-invalid="true"><span class="get_code" rel="emailsignup">获取验证码</span>
                                <em></em>
                            </div>
                            <div class="register_body_input">
                                <input type="text" id="emusername" name="name" class="register_username" value="用户名" maxlength="16" onblur="if(this.value.replace(/\s/g,'')=='') this.value='用户名';" onfocus="if(this.value.replace(/\s/g,'')=='用户名') this.value='';" aria-required="true" aria-describedby="emusername-error" aria-invalid="true">
                                <em></em>
                            </div>
                            <div class="register_body_input">
                                <input type="password" id="empasswd" name="password" class="register_pwd register_pwd_bg" maxlength="16" value="" aria-required="true" aria-describedby="empasswd-error" aria-invalid="true" >
                                <em></em>
                            </div>
                            <div class="register_body_input">
                                <input type="password" id="emrepasswd" name="emrepasswd" class="register_check register_check_bg" maxlength="16" value="" aria-required="true" aria-describedby="emrepasswd-error" aria-invalid="true" >
                                <em></em>
                            </div>
                            <div class="register_body_sub">
                                <input type="hidden" name="action" value="setUser">
                                <input id="signup_email" type="submit" class="register_sub" value="同意服务条款并注册">
                                <span><a href="${pageContext.request.contextPath}/agreement.html" target="_blank">&gt;Game网通行证服务条款&lt;</a></span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="register_body_right">
            <div class="register_body_right_con">
                <div class="register_body_right_con_title">已有通行证？</div>
                <div class="register_body_right_login"><a href="${pageContext.request.contextPath}/signin.jsp">立即登录</a></div>
                <div class="register_body_right_other">
                    <span>一键登录：</span>
                    <div class="register_body_right_path">
                        <a id="signup_wx" class="u_wx" href="/api.html?action=wxrequest&amp;method=wxcallback">&nbsp;</a><a id="signup_qq" class="u_qq" href="/api.html?action=qqrequest&amp;method=qqcallback">&nbsp;</a><a id="signup_wb" class="u_wb" href="/api.html?action=wbrequest&amp;method=wbcallback">&nbsp;</a>
                    </div>
                </div>
            </div>
        </div>
    </c:if>

</div>

<!--弹窗-start-->
<div class="register_window">
    <div class="register_window_con">
        <div class="register_window_close"></div>
        <div class="register_window_content">
            <input type="text" class="window_code" value="验证码" onblur="if(this.value.replace(/\s/g,'')=='') this.value='验证码';" onfocus="if(this.value.replace(/\s/g,'')=='验证码') this.value='';">
            <div class="window_img">
                <img class="form-yzm-img" src="/yzm/signup.jpg" width="104" height="36"><em class="changeInputYzm">换一张</em>
            </div>
            <div class="window_btn">确定</div>
        </div>
    </div>
</div>
<!--弹窗-end-->
<!--尾部-start-->
<%--<jsp:include page="/all/include/tail.jsp"></jsp:include>--%>
<!--尾部-end-->


</body>
</html>
