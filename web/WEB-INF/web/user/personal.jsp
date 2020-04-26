
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="el" uri="http://java.sun.com/jsp/jstl/core" %>
<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>基本资料-Game网用户中心</title>
    <link href="${pageContext.request.contextPath}/css/needregister/personal/personal.css" rel="stylesheet" type="text/css">
    <!--导入js文件-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/web/personal.js" ></script>

<body>
<!--头部-start-->
<jsp:include page="../head/head.jsp"></jsp:include>
<jsp:include page="../head/userdata_head.jsp"></jsp:include>
<!--头部-end-->
<div class="ucenter_index_rightext">
            <div class="title profiletitle"><span></span><em>基本资料</em></div>
            <div class="profileform">
                <form id="profile" action="${pageContext.request.contextPath}/web/User" method="post" novalidate="novalidate">
                    <div class="inner-input">
                        <span>昵称：</span>
                        <input name="nickname" class="text_inner" id="nickname" value="${sessionScope.temp.nickname}" placeholder="请输入昵称">
                    </div>
                    <div class="inner-input">
                        <span>性别：</span>
                        <select name="gender" class="select_inner" id="gender" >
                            <option value="0">保密</option>
                            <option value="1">男</option>
                            <option value="2">女</option>
                        </select>
                        <script>
                            $(function () {
                                $("#gender").val(<el:out value='${sessionScope.temp.sex}'></el:out>);
                            });
                        </script>
                    </div>
                    <div class="inner-input">
                        <span>生日：</span>
                        <select name="birthyear" class="select_inner" id="birthyear" rel="">
                            <option value="0">--</option>
                            <option value="2020">2020</option>
                            <option value="2019">2019</option>
                            <option value="2018">2018</option>
                        </select>
                        <p>年</p>
                        <select name="birthmonth" class="select_inner" id="birthmonth" rel=""><option value="0">--</option></select>
                        <p>月</p>
                        <select name="birthday" class="select_inner" id="birthday" rel=""><option value="0">--</option></select>
                        <p>日</p>
                    </div>
                    <div class="inner-input">
                        <span>所在地：</span>
                        <select name="country" class="select_inner" id="country" rel="中国">
                            <option value="0">--</option>
                            <option value="中国" selected="">中国</option>
                        </select>
                        <select name="province" class="select_inner" id="province" rel="--">
                            <option value="0">--</option>
                            <option value="北京">北京</option>
                            <option value="上海">上海</option>
                        </select>
                        <select name="city" class="select_inner" id="city" rel="--"><option value="0">--</option></select>
                    </div>
                    <div class="inner-textarea">
                        <span>签名：</span>
                        <textarea name="signature" class="textarea_inner" id="signature"></textarea>
                    </div>
                    <div class="inner_btn">
                        <input type="hidden" name="action" value="updateUser">
                        <input type="submit" id="submit" value="确定修改">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!--尾部-start-->
<%--<jsp:include page="/all/include/tail.jsp"></jsp:include>--%>
<!--尾部-end-->

</body>
</html>
