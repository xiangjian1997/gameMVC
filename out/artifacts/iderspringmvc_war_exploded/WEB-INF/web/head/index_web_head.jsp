<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<%--&lt;%&ndash;  导入logo图标  &ndash;%&gt;--%>
<%--    <link href="${pageContext.request.contextPath}/images/logohead.png" rel="SHORTCUT ICON">--%>
    <!--导入css样式-->
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/index.js"></script>
</head>
<body>

<div class="header bg-shadow1 fn-clear">
    <div class="header-con">
        <div class="header-left">
            <a class="left-icon1" href="${pageContext.request.contextPath}" target="_blank"><i class="icon"></i><span>Game首页</span></a>
            <a class="left-icon2" href="${pageContext.request.contextPath}/web/game_index" target="_blank"><i class="icon"></i><span>Game</span></a>
        </div>
        <div class="header-right">

                <c:if test="${sessionScope.temp==null}">
                    <li id="ali213SSO">
                    <span class="ali213SSO-offline-avatar"></span><span id="user-register" class="ali213SSO-login">登录</span>
                    <span class="ali213SSO-offline-spliter">|</span>
                    <a id="alisso-baidu-signup1" class="ali213SSO-offline-reg" href="${pageContext.request.contextPath}/web/register" target="_blank">注册</a>
                </c:if>
                <c:if test="${sessionScope.temp!=null}">
                    <li id="ali213SSO">
                    <a class="ali213SSO-online-avatar-username-link" href="${pageContext.request.contextPath}/needsigin/personal.jsp" target="_blank"><img class="ali213SSO-online-avatar" src="https://uc.ali213.net/data/avatar/022/88/42/57_avatar_middle.jpg"><span class="ali213SSO-username"><c:out value="${sessionScope.temp.nickname}"></c:out></span></a>
                    <div class="ali213SSO-info-holder" style="display: none;">
                        <div class="ali213SSO-info-block2">
                            <a class="ali213SSO-info-block2-li1" href="${pageContext.request.contextPath}/needsigin/personal.jsp" target="_blank"><em></em>修改资料</a>
                        </div>
                        <div class="ali213SSO-info-block1">
                            <a id="alisso-baidu-comment1" href="${pageContext.request.contextPath}/needsigin/comment.jsp" target="_blank"><em></em>评论</a>
                        </div>
                        <div class="ali213SSO-info-block4">
                            <a id="alisso-info4-myxs1" href="${pageContext.request.contextPath}/needsigin/essay.jsp" target="_blank"><em></em>文章</a>
                            <a class="ali213SSO-info-block2-li3" href="${pageContext.request.contextPath}/game_index.jsp" target="_blank"><em></em>游戏中心</a>
                        </div>

                        <div class="ali213SSO-info-block3">
                            <span class="userExit">退出</span>
                        </div>
                    </div>
                </c:if>
                </li>
        </div>
    </div>
</div>
<!--首页导航-->
<div class="index-header fn-clear">
    <a href="${pageContext.request.contextPath}/index.jsp" title="Game网" class="to-index icon" style="border:1px solid #0B0002"></a>
</div>
<!--头部引导-->
<div class="top-container">
    <div class="top-search-con bg-shadow2">
        <form action="https://so.ali213.net/s/c?" method="get" target="_blank" id="cse-search-box">
            <input type="text" name="keyword" id="soinput" class="soinput" autocomplete="off" value="<c:out value="${applicationScope.all.get(3).get(0).game.gamename}"></c:out>" onblur="if(this.value=='') this.value='<c:out value="${applicationScope.all.get(3).get(0).game.gamename}"></c:out>';" onfocus="if(this.value=='<c:out value="${applicationScope.all.get(3).get(0).game.gamename}"></c:out>') this.value='';">
            <input type="hidden" name="group" value="0">
            <input type="submit" value="搜索" class="msobutton" id="msobutton">
            <label for="sobutton" class="sobutton-label">
                <input type="button" value="" class="sobutton" id="sobutton">
            </label>
        </form>
    </div>
    <ul class="toggle-ul channel-ul">
        <li class="toggle-li change1 active">游戏推荐</li>
        <li class="toggle-li change2">经典游戏</li>
<%--        <li class="toggle-li change3">FC游戏</li>--%>
    </ul>
    <div class="toggle-con-ul channel-con">
        <!--头部引导-样式1-->
        <div class="toggle-con-li">
            <ul>
                <li>
                    <p>热门游戏</p>
                    <div>
                        <c:forEach items="${applicationScope.all.get(0)}" var="rank" varStatus="ranks">
                            <em><a href="${pageContext.request.contextPath}/game_details.jsp?id=${rank.game.id}" style="line-height: 20px;" target="_blank" title="${rank.game.gamename}"><span style="color: rgb(255, 73, 59);">${rank.game.gamename}</span></a></em>
                        </c:forEach>
                    </div>
                </li>
                <li>
                    <p>近期新作</p>
                    <div>
                        <c:forEach items="${applicationScope.all.get(1)}" var="rank">
                            <em>
                                <a href="${pageContext.request.contextPath}/game_details.jsp?id=${rank.game.id}" style="line-height: 20px;" target="_blank" title="${rank.game.gamename}">${rank.game.gamename}</a>
                            </em>
                        </c:forEach>
                    </div>
                </li>
            </ul>
        </div>
        <!--头部引导-样式2-->
        <div class="toggle-con-li channel-type2">
            <div class="letter-ul toggle-ul">
                <span class="toggle-li active">ABCD</span>
                <span class="toggle-li">EFGH</span>
                <span class="toggle-li">IJKL</span>
                <span class="toggle-li">MNOP</span>
                <span class="toggle-li">QRST</span>
                <span class="toggle-li">UVWX</span>
                <span class="toggle-li">YZ</span>
            </div>
            <div class="toggle-con-ul">
                <ul class="toggle-con-li">
                    <li>
                        <p>A</p>

                            <div>
                                <c:forEach var="rank" items="${applicationScope.all.get(5)}">
                                <em><a target="_blank" href="//www.ali213.net/zt/ateliera14/" title="${rank.game.gamename}">${rank.game.gamename}</a></em>
                                </c:forEach>
                            </div>

                    </li>
                    <li>
                        <p>B</p>
                        <div>
                        </div>
                    </li>
                    <li>
                        <p>C</p>
                        <div>

                        </div>
                    </li>
                    <li>
                        <p>D</p>
                        <div>

                        </div>
                    </li>
                </ul>
                <ul class="toggle-con-li">
                    <li>
                        <p>E</p>
                        <div>

                        </div>
                    </li>
                    <li>
                        <p>F</p>
                        <div>

                        </div>
                    </li>
                    <li>
                        <p>G</p>
                        <div>

                        </div>
                    </li>
                    <li>
                        <p>H</p>
                        <div>

                        </div>
                    </li>
                </ul>
                <ul class="toggle-con-li">
                    <li>
                        <p>I</p>
                        <div>

                        </div>
                    </li>
                    <li>
                        <p>J</p>
                        <div>
                        </div>
                    </li>
                    <li>
                        <p>K</p>

                    </li>
                    <li>
                        <p>L</p>
                    </li>
                </ul>
                <ul class="toggle-con-li">
                    <li>
                        <p>M</p>

                    </li>
                    <li>
                        <p>N</p>

                    </li>
                    <li>
                        <p>O</p>

                    </li>
                    <li>
                        <p>P</p>

                    </li>
                </ul>
                <ul class="toggle-con-li">
                    <li>
                        <p>Q</p>

                    </li>
                    <li>
                        <p>R</p>

                    </li>
                    <li>
                        <p>S</p>

                    </li>
                    <li>
                        <p>T</p>

                    </li>
                </ul>
                <ul class="toggle-con-li">
                    <li>
                        <p>U</p>

                    </li>
                    <li>
                        <p>V</p>

                    </li>
                    <li>
                        <p>W</p>

                    </li>
                    <li>
                        <p>X</p>

                    </li>
                </ul>
                <ul class="toggle-con-li">
                    <li>
                        <p>Y</p>

                    </li>
                    <li>
                        <p>Z</p>

                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
