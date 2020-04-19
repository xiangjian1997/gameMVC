<%--
  Created by IntelliJ IDEA.
  User: xiangjian
  Date: 2020/3/9
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title><!--登录弹窗div-->
    <!--导入css样式-->
    <link href="${pageContext.request.contextPath}/static/css/head/register.css">
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/static/js/head/register.js"></script>
</head>
<body>

    <div class="ali213SSOPopSheild" style="display: none;">
    <div class="ali213SSOCloseBtn"></div>
    <div class="ali213SSOPopHolderNormal">
        <div class="ali213SSOLoginMethodTrigger">
        </div>
        <div class="ali213SSOloginToggle">
            <span class="checked"><i></i>用户名密码登录</span>
        </div>
        <div class="ali213SSOloginToggleCon"><div class="ali213SSOloginToggleConLi">
            <form id="loginForm" action="" method="post">
                <div class="ali213SSO_input">
                    <span></span>
                    <input type="text" name="username" class="ali213SSO_input_common" id="input_username" value="用户名/邮箱" onblur="if(this.value.replace(/s/g,'')=='') this.value='用户名/邮箱';" onfocus="if(this.value.replace(/s/g,'')=='用户名/邮箱') this.value='';">
                    <em></em>
                </div>

                <div class="ali213SSO_input"><span class="ali213SSO_u_pwd"></span>
                    <input type="password" name="alissopasswd" class="ali213SSO_input_common ali213SSO_input_common_passwd" id="ali213SSO_input_pwd" value="">
                    <em></em>
                </div>
                <input type="hidden" name="alissoyzm" class="ali213SSO_input_check" id="ali213SSO_input_yzm">
                <div class="ali213SSO_btn">
                    <input id="alisso-baidu-signin2" type="submit" class="ali213SSO-submit" value="登 录">
                </div>
            </form>
            <div class="ali213SSO-register-forgot"><a class="ali213SSO-forgot-link" href="//i.ali213.net/forgot.html?redirect=https://www.ali213.net/" target="_blank">忘记密码</a>
                <a class="ali213SSO-register-link" href="${pageContext.request.contextPath}/static/register" target="_blank">注册</a>
            </div>

        </div>
        </div>
    </div>
    </div>
</body>
</html>
