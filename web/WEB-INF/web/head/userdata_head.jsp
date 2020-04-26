<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="ucenter_index">
    <div class="ucenter_index_left">
        <div class="ucenter_index_left_top">
            <img src="https://uc.ali213.net/data/avatar/022/88/42/57_avatar_middle.jpg" onerror="this.src='https://uc.ali213.net/images/noavatar_middle.gif'">
            <span><p><el:out value="${sessionScope.temp.nickname}"></el:out></p><em>,你好!</em></span>
            <div><a class="signout" href="javascript:void (0)">退出登录</a></div>
        </div>
        <div class="ucenter_index_left_center" >
            <a class="active" href="javascript:void(0)">
                <span class="u_name"></span><em>基本资料</em>
            </a>
            <a href="${pageContext.request.contextPath}/needsigin/essay.jsp">
                <span class="u_myxs"></span><em>我的文章</em>
            </a>
            <a href="${pageContext.request.contextPath}/needsigin/comment.jsp">
                <span class="u_comment"></span><em>我的评论</em>
            </a>
            <a href="${pageContext.request.contextPath}/needsigin/headPic.jsp">
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