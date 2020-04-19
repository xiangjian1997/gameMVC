
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Game网</title>
    <link href="${pageContext.request.contextPath}/static/css/games.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/web/game_index.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="head/head.jsp"></jsp:include>
<div id="BAIDU_DUP_fp_wrapper" style="position: absolute; left: -1px; bottom: -1px; z-index: 0; width: 0px; height: 0px; overflow: hidden; visibility: hidden; display: none;"><iframe id="BAIDU_DUP_fp_iframe" src="https://pos.baidu.com/wh/o.htm?ltr=" style="width: 0px; height: 0px; visibility: hidden; display: none;"></iframe></div>
<div id="EyeableArea">
        <div id="down-container">
            <!--搜索部分-->
            <div class="downlistsearch">
                <form action="${pageContext.request.contextPath}/game_index.jsp" method="get" target="_blank">
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
                        <c:forEach items="${applicationScope.gameType}" var="type">
                            <span><a value="<c:out value="${type.id}"></c:out>" href="javascript:void(0)"><c:out value="${type.cname}"></c:out></a></span>
                        </c:forEach>
                        </div>
                    </div>
                    <span class="load-more hide">展开</span>
                </div>
<%--                <div class="list-type" data-type="2">--%>
<%--                    <p>游戏厂商</p><div class="list-ul-box">--%>
<%--                    <div class="list-ul" style="height: 68px;">--%>
<%--                        <span><a href="/pcgame/" class="checked">全部</a></span>--%>
<%--                        <span><a href="/pcgame/all/koei-0-0-0-new-pic-1" rel="nofollow" title="KOEI">光荣</a></span>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                    <span class="load-more checked">展开</span></div>--%>
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
                    <div class="result-num">共有<span>游戏数量</span>款单机游戏</div></div>
            </div>
        <div class="result-container" id="rqjxhb">
            <div class="sort-container"><a href="/pcgame/all/0-0-0-0-new-pic-1" rel="nofollow" class="active">最新</a><a href="/pcgame/all/0-0-0-0-hot-pic-1" rel="nofollow">人气</a></div>
            <div class="famous-ul-container">
                <div class="famous-ul">
                    <c:if test="${requestScope.chooseGame!=null}">
                        <c:forEach items="${requestScope.chooseGame}" var="game">
                            <div class="famous-li">
                                <a href="game_details.jsp&id=${game.game.id}" target="_blank" class="content-a"><img src="//imgs.ali213.net/oday/uploadfile/2020/02/29/2020022915419366.jpg"><span class="game-lang">英文</span><div class="hover-content"><div>时间：<span>2020-02-28</span></div><div>大小：<span>3.87G</span></div><p><span>单人单机</span><span>3D画面</span><span>不支持手柄</span><span>中级水平</span><span>模拟</span><span>冒险</span><span>休闲</span><span>动作</span><span>独立</span></p></div></a><div class="game-name">${game.game.gamename}</div><!--<a href="/pcgame/jef.html#xgxz" class="other-edition" target="_blank">其他版本</a>--><a href="/pcgame/jef.html" target="_blank" class="game-down">下载(3.87G)</a>
                            </div>
                        </c:forEach>
                    </c:if>
                    <c:if test="${requestScope.chooseGame==null}">
                        <c:forEach items="${applicationScope.all.get(0)}" var="rank">
                            <div class="famous-li">
                                <a href="${pageContext.request.contextPath}/game_details.jsp?id=${rank.game.id}" target="_blank" class="content-a"><img src="${pageContext.request.contextPath}/images/gamepic/${rank.gamePics.get(0).picName}"><span class="game-lang">英文</span><div class="hover-content"><div>时间：<span>2020-02-28</span></div><div>大小：<span>3.87G</span></div><p><span>单人单机</span><span>3D画面</span><span>不支持手柄</span><span>中级水平</span><span>模拟</span><span>冒险</span><span>休闲</span><span>动作</span><span>独立</span></p></div></a><div class="game-name">${rank.game.gamename}</div><!--<a href="/pcgame/jef.html#xgxz" class="other-edition" target="_blank">其他版本</a>--><a href="/pcgame/jef.html" target="_blank" class="game-down">下载(3.87G)</a>
                            </div>
                        </c:forEach>
                    </c:if>
                    <div class="famous-li">
                        <a href="/pcgame/jef.html" target="_blank" class="content-a"><img src="//imgs.ali213.net/oday/uploadfile/2020/02/29/2020022915419366.jpg"><span class="game-lang">英文</span><div class="hover-content"><div>时间：<span>2020-02-28</span></div><div>大小：<span>3.87G</span></div><p><span>单人单机</span><span>3D画面</span><span>不支持手柄</span><span>中级水平</span><span>模拟</span><span>冒险</span><span>休闲</span><span>动作</span><span>独立</span></p></div></a><div class="game-name">JEF</div><!--<a href="/pcgame/jef.html#xgxz" class="other-edition" target="_blank">其他版本</a>--><a href="/pcgame/jef.html" target="_blank" class="game-down">下载(3.87G)</a>
                    </div>
                    <div class="famous-li">
                        <a href="/pcgame/rtr.html" target="_blank" class="content-a"><img src="//imgs.ali213.net/oday/uploadfile/2020/02/29/20200229121458148.jpg"><span class="game-lang">中文</span><em class="zh"></em><div class="hover-content"><div>时间：<span>2020-02-28</span></div><div>大小：<span>1.9G</span></div><p><span>单人单机</span><span>2D画面</span><span>不支持手柄</span><span>中级水平</span><span>冒险</span><span>休闲</span><span>独立</span></p></div></a><div class="game-name">逆转：回归</div><!--<a href="/pcgame/rtr.html#xgxz" class="other-edition" target="_blank">其他版本</a>--><a href="/pcgame/rtr.html" target="_blank" class="game-down">下载(1.9G)</a></div>
                    <div class="famous-li">
                        <a href="/pcgame/grid2019.html" target="_blank" class="content-a"><img src="//imgs.ali213.net/oday/uploadfile/2019/05/22/20190522112017837.jpg"><span class="game-lang">英文</span><div class="hover-content"><div>时间：<span>2019-10-11</span></div><div>大小：<span>73.19G</span></div><p><span>单人单机</span><span>3D画面</span><span>支持手柄</span><span>中级水平</span><span>竞速</span><span>运动</span><span>休闲</span><span>动作</span></p></div></a><div class="game-name">超级房车赛</div><!--<a href="/pcgame/grid2019.html#xgxz" class="other-edition" target="_blank">其他版本</a>--><a href="/pcgame/grid2019.html" target="_blank" class="game-down">下载(73.19G)</a></div>
                </div>
            </div>
            <div class="page-container">
                <a href="javascript:void(0);" class="checked">1</a>
                <a href="/pcgame/all/0-0-0-0-new-pic-2.html">2</a>
                <a href="/pcgame/all/0-0-0-0-new-pic-3.html">3</a>
                <a href="/pcgame/all/0-0-0-0-new-pic-4.html">4</a>
                <a href="/pcgame/all/0-0-0-0-new-pic-5.html">5</a>
                <a href="/pcgame/all/0-0-0-0-new-pic-6.html">6</a>
                <a href="/pcgame/all/0-0-0-0-new-pic-7.html">7</a>
                <a href="/pcgame/all/0-0-0-0-new-pic-8.html">8</a>
                <a href="/pcgame/all/0-0-0-0-new-pic-9.html">9</a>
                <a href="/pcgame/all/0-0-0-0-new-pic-2.html" class="page-next">下一页</a>
                <a href="/pcgame/all/0-0-0-0-new-pic-483.html" class="page-last">尾页</a>
            </div>
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