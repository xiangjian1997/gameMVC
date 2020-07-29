
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Game网</title>
    <link rel="shortcut icon"type="image/x-icon" href="${pageContext.request.contextPath}/static/images/favicon.ico"media="screen" />
    <link href="${pageContext.request.contextPath}/static/css/games.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/game_index.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="head/head.jsp"/>
<div id="EyeableArea">
        <div id="down-container">
            <!--搜索部分-->
            <div class="downlistsearch">
                <form action="${pageContext.request.contextPath}/web/game_index" method="post" target="_blank">
                    <div class="t1">游戏下载搜索</div>
                    <div class="t2"><input type="text" name="keyword" placeholder="输入搜索内容" autocomplete="off"><input type="hidden" name="sub" value="93"></div>
                    <div class="t3"><input type="submit" value=""></div>
                </form>
            </div>
        <!--分类部分-->
            <div class="assort-container">
                <div class="list-type" data-type="0" value="0">
                    <p>游戏类型</p>
                    <div class="list-ul-box" value="0">
                    <div class="list-ul" >
                        <span value="0"><a href="javascript:void(0)" class="checked">全部</a></span>
                        <c:forEach items="${types}" var="type">
                            <span><a value="<c:out value="${type.id}"></c:out>" href="javascript:void(0)"><c:out value="${type.typeName}"></c:out></a></span>
                        </c:forEach>
                        </div>
                    </div>
                    <span class="load-more hide">展开</span>
                </div>
                <div class="list-type" data-type="0" value="0"><p>游戏语言</p>
                    <div class="list-ul-box" value="0">
                        <div class="list-ul">
                            <span><a value="0" href="javascript:void(0)" rel="nofollow" class="checked">全部</a></span>
                            <span><a value="1" href="javascript:void(0)" rel="nofollow">中文</a></span>
                            <span><a value="2" href="javascript:void(0)" rel="nofollow">英文</a></span>
                            <span><a value="3" href="javascript:void(0)" rel="nofollow">日文</a></span>
                        </div>
                    </div>
                    <span class="load-more hide">展开</span>
                </div>
                <div class="list-type" data-type="1" value="0"><p>推出年份</p>
                    <div class="list-ul-box" value="0">
                        <div class="list-ul" style="height: 34px;">
                            <span><a value="0" href="javascript:void(0)" class="checked">全部</a></span>
                            <span><a value="1" href="javascript:void(0)">2020</a></span>
                            <span><a value="2" href="javascript:void(0)">2019</a></span>
                            <span><a value="3" href="javascript:void(0)" rel="nofollow">2018</a></span>
                            <span><a value="4" href="javascript:void(0)" rel="nofollow">2017</a></span>
                            <span><a value="5" href="javascript:void(0)" rel="nofollow">2016</a></span>
                            <span><a value="6" href="javascript:void(0)" rel="nofollow">2015</a></span>
                            <span><a value="7" href="javascript:void(0)" rel="nofollow">2014</a></span>
                            <span><a value="8" href="javascript:void(0)" rel="nofollow">2013</a></span>
                            <span><a value="9" href="javascript:void(0)" rel="nofollow">更早</a></span>
                        </div>
                    </div>
                    <span class="load-more">展开</span></div>
                <div class="assort-result-container"><p>筛选结果：</p>
                    <div class="result-num">共有<span>${page.sum}</span>款单机游戏</div></div>
            </div>
        <div class="result-container" id="rqjxhb">
            <div class="sort-container"><a href="/pcgame/all/0-0-0-0-new-pic-1" rel="nofollow" class="active">最新</a><a href="/pcgame/all/0-0-0-0-hot-pic-1" rel="nofollow">人气</a></div>
            <div class="famous-ul-container">
                <div class="famous-ul">
                        <c:forEach items="${gameTypes}" var="gameType" varStatus="gamets">
                            <div class="famous-li">
                                <a href="${pageContext.request.contextPath}/web/game_details?id=${gameType.game.id}" target="_blank" class="content-a"><img src="${pageContext.request.contextPath}/static/images/game_picture/${gameType.gamePictures.get(0).pictureName}"><span class="game-lang">英文</span><div class="hover-content"><div>时间：<span>2020-02-28</span></div><div>大小：<span>3.87G</span></div><p><span>单人单机</span><span>3D画面</span><span>不支持手柄</span><span>中级水平</span><span>模拟</span><span>冒险</span><span>休闲</span><span>动作</span><span>独立</span></p></div></a><div class="game-name">${game.game.gamename}</div><!--<a href="/pcgame/jef.html#xgxz" class="other-edition" target="_blank">其他版本</a>--><a href="/pcgame/jef.html" target="_blank" class="game-down">下载(3.87G)</a>
                            </div>
                        </c:forEach>
                </div>
            </div>

            <%--分页页码start--%>
            <div class="page-container">
                <c:if test="${page.present>1}">
                    <a href="${pageContext.request.contextPath}/web/game_type?num=1" class="page-last">首页</a>
                    <a href="${pageContext.request.contextPath}/web/game_type?num=${page.present-1}" class="page-next">上一页</a>
                </c:if>
                <%--<c:forEach var="p" begin="1" end="${page.count}">--%>
                <c:forEach items="${page.pageCounts}" var="p">
                    <c:if test="${p==page.present}"><a href="javascript:void(0);" class="checked">${p}</a></c:if>
                    <c:if test="${p!=page.present}"><a href="${pageContext.request.contextPath}/web/game_type?num=${p}" class="page-next">${p}</a></c:if>
                </c:forEach>
                <c:if test="${page.present<page.pageCount}">
                    <a href="${pageContext.request.contextPath}/web/game_type?num=${page.present+1}" class="page-next">下一页</a>
                    <a href="${pageContext.request.contextPath}/web/game_type?num=${page.pageCount}" class="page-last">尾页</a>
                </c:if>
            </div>
            <%--分页页码end--%>
        </div>
        <div class="list_clear"></div>
    </div>
</div>
<div id="cs_DIV_cscpvrich8388B" style="position: fixed; bottom: 2px; right: 0px; width: 300px; height: 250px; overflow: hidden; display: block !important; z-index: 2147483647;"><div style="margin: 0px; padding: 0px; width: 300px; height: 250px;"><div style="position: absolute; z-index: 3;">
</div>
</div>
</div>
</body>
</html>