<%--
  Created by IntelliJ IDEA.
  User: xiangjian
  Date: 2020/2/14
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<%--    评论--%>
    <title>评论</title>
    <link href="${pageContext.request.contextPath}/css/needregister/personal/personal.css" rel="stylesheet" type="text/css">
    <!--导入js-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/personal/comment.js"></script>
</head>
<body>
<!--头部-start-->
<jsp:include page="../head/head.jsp"></jsp:include>
<!--头部-end-->
<div class="ucenter_index">
    <div class="ucenter_index_left">
        <div class="ucenter_index_left_top">
            <img src="https://uc.ali213.net/data/avatar/022/88/42/57_avatar_middle.jpg" onerror="this.src='https://uc.ali213.net/images/noavatar_middle.gif'">
            <span><p><c:out value="${sessionScope.temp.nickname}"></c:out></p><em>,你好!</em></span>
            <div><a class="signout" href="javascript:void (0)">退出登录</a></div>
        </div>
        <div class="ucenter_index_left_center" >
            <a href="${pageContext.request.contextPath}/needsigin/personal.jsp">
                <span class="u_name"></span><em>基本资料</em>
            </a>
            <a href="${pageContext.request.contextPath}/needsiginessay.jsp">
                <span class="u_myxs"></span><em>我的文章</em>
            </a>
            <a class="active" href="javascript:void(0)">
                <span class="u_comment"></span><em>我的评论</em>
            </a>
            <a href="${pageContext.request.contextPath}/needsiginheadPic.jsp">
                <span class="u_message"></span><em>头像设置</em>
            </a>
            <a href="${pageContext.request.contextPath}/needsigin">
                <span class="u_set"></span><em>安全设置</em>
            </a>
            <a href="${pageContext.request.contextPath}/needsigin">
                <span class="u_bind"></span><em>账号绑定</em>
            </a>
        </div>
    </div>
    <div>
        <div class="ucenter_index_rightext">
            <div class="ucenter_index_rightext">
                <div class="title commenttitle"><span></span><em>我的评论</em></div>
                <div class="comment-trigger-outer-holder">
                    <div class="comment-trigger-inner-holder">
                        <div class="comment-my-comments current">我的评论</div>
                        <div class="comment-commented-of-mine">评论我的</div>
                    </div>
                </div>
                <div class="comment-tab-content-outer-holder">
                    <div class="comment-tab-content-inner-holder comment-my-comments-contents current">
                        <div class="nav">还没有评论哦，快去参与评论吧！</div>
                    </div>

                    <div class="comment-tab-content-inner-holder comment-commented-of-mine-contents">
                        <div class="nav">还没有评论哦，快去参与评论吧！</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--尾部-start-->
<jsp:include page="/all/include/tail.jsp"></jsp:include>

</body>
</html>
