
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>主页</title>
      <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/images/favicon.ico" media="screen" />
  </head>
  <body>
  <script type="text/javascript">
      var url="${pageContext.request.contextPath}";
      console.log(url);
  </script>
  <div class="index-container">
      <!--头部导航-->
      <jsp:include page="index_web_head.jsp" />
      <!--轮播图-->
      <div class="home_page_content">
          <h2>精选</h2>
          <div id="home_maincap_v7" class="carousel_container maincap">

              <div class="carousel_items">
<%--                  <a class="store_main_capsule broadcast_capsule app_impression_tracked focus" data-manual-tracking="1" id="779340" href="${pageContext.request.contextPath}/web/game_details?id=">--%>
<%--                      <div class="capsule main_capsule"  style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/779340/capsule_616x353.jpg?t=1581336381&quot;);"></div>--%>
<%--                      <div class="info">--%>
<%--                          <div class="app_name"><div>全面战争：三国</div></div>--%>
<%--                          <div class="screenshots"><div><div data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/779340/ss_16346541350f29271399420bffda0da34c8d5ea1.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/779340/ss_16346541350f29271399420bffda0da34c8d5ea1.600x338.jpg&quot;);"></div></div><div><div data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/779340/ss_b367c99f566ecfc3def17673e9015c80e7e3a8d3.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/779340/ss_b367c99f566ecfc3def17673e9015c80e7e3a8d3.600x338.jpg&quot;);"></div></div><div><div data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/779340/ss_fe3108d8affd7a9f7e72959602e49cb5fa105910.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/779340/ss_fe3108d8affd7a9f7e72959602e49cb5fa105910.600x338.jpg&quot;);"></div></div><div><div data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/779340/ss_ced0e321ac9262d29dc0a4e4fe4b91d3144ed2e6.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/779340/ss_ced0e321ac9262d29dc0a4e4fe4b91d3144ed2e6.600x338.jpg&quot;);"></div></div></div><div class="reason"><div class="main default">现已推出</div><div class="additional"><div>热销商品</div></div></div><div class="discount_block  no_discount discount_block_inline" data-price-final="26800"><div class="discount_prices"><div class="discount_final_price">¥ 268</div></div></div><div class="platforms"><span class="platform_img win"></span><span class="platform_img mac"></span><span class="platform_img linux"></span></div></div>--%>
<%--                  </a>--%>
<%--                  <a class="store_main_capsule broadcast_capsule app_impression_tracked " data-manual-tracking="1" id="435150" href="${pageContext.request.contextPath}/web/game_details?id=">--%>
<%--                      <div class="capsule main_capsule" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/435150/capsule_616x353.jpg?t=1581362845&quot;);"></div>--%>
<%--                      <div class="info">--%>
<%--                          <div class="app_name"><div>Divinity: Original Sin 2 - Definitive Edition</div></div>--%>
<%--                          <div class="screenshots"><div><div data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/435150/ss_b59e5889726cab2cf01a93d0c0d192d25928952a.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/435150/ss_b59e5889726cab2cf01a93d0c0d192d25928952a.600x338.jpg&quot;);"></div></div><div><div data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/435150/ss_34a428cdd26113e8645b77331d9fc82fcc50a4a2.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/435150/ss_34a428cdd26113e8645b77331d9fc82fcc50a4a2.600x338.jpg&quot;);"></div></div><div><div data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/435150/ss_66d58326ebea7154d7f3d89e02f13913452caef7.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/435150/ss_66d58326ebea7154d7f3d89e02f13913452caef7.600x338.jpg&quot;);"></div></div><div><div data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/435150/ss_a0fa5dd2f40fffbae32af259afcf588a999e6663.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/435150/ss_a0fa5dd2f40fffbae32af259afcf588a999e6663.600x338.jpg&quot;);"></div></div></div><div class="reason"><div class="main default">现已推出</div><div class="additional"><div>热销商品</div></div></div><div class="discount_block  discount_block_inline" data-price-final="6600"><div class="discount_pct">-50%</div><div class="discount_prices"><div class="discount_final_price">¥ 66</div></div></div><div class="platforms"><span class="platform_img win"></span><span class="platform_img mac"></span></div></div>--%>
<%--                  </a>--%>

<%--                  <a class="store_main_capsule broadcast_capsule app_impression_tracked" data-manual-tracking="1" data-ds-appid="391220" href="https://store.steampowered.com/app/391220/Rise_of_the_Tomb_Raider/?snr=1_4_4__129_6" data-ds-tagids="[21,19,21722,7208,4182,1697,3834,4106,1695,1742,1662,1664,1687,4166,3814]"><div class="capsule main_capsule" data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/391220/capsule_616x353_schinese.jpg?t=1570657621" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/391220/capsule_616x353_schinese.jpg?t=1570657621&quot;);"><div class="screenshot" data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/391220/ss_2b612bfa62d920b061e900e1f7a975a2de6729ec.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/391220/ss_2b612bfa62d920b061e900e1f7a975a2de6729ec.600x338.jpg&quot;);"></div><div class="screenshot" data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/391220/ss_4ef0868ecfc6b19bc1af18b88cabe33fe8147cf7.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/391220/ss_4ef0868ecfc6b19bc1af18b88cabe33fe8147cf7.600x338.jpg&quot;);"></div><div class="screenshot" data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/391220/ss_749f99146e5ebad371e37d95bfab7b17847c1d81.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/391220/ss_749f99146e5ebad371e37d95bfab7b17847c1d81.600x338.jpg&quot;);"></div><div class="screenshot" data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/391220/ss_0602fd918166985793cbae01df4c8a944f1f76dd.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/391220/ss_0602fd918166985793cbae01df4c8a944f1f76dd.600x338.jpg&quot;);"></div></div><div class="info"><div class="app_name"><div>Rise of the Tomb Raider™</div></div>--%>
<%--                      <div class="screenshots"><div><div data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/391220/ss_2b612bfa62d920b061e900e1f7a975a2de6729ec.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/391220/ss_2b612bfa62d920b061e900e1f7a975a2de6729ec.600x338.jpg&quot;);"></div></div><div><div data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/391220/ss_4ef0868ecfc6b19bc1af18b88cabe33fe8147cf7.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/391220/ss_4ef0868ecfc6b19bc1af18b88cabe33fe8147cf7.600x338.jpg&quot;);"></div></div><div><div data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/391220/ss_749f99146e5ebad371e37d95bfab7b17847c1d81.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/391220/ss_749f99146e5ebad371e37d95bfab7b17847c1d81.600x338.jpg&quot;);"></div></div><div><div data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/391220/ss_0602fd918166985793cbae01df4c8a944f1f76dd.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/391220/ss_0602fd918166985793cbae01df4c8a944f1f76dd.600x338.jpg&quot;);"></div></div></div><div class="reason"><div class="main default">现已推出</div><div class="additional"><div>热销商品</div></div></div><div class="discount_block  discount_block_inline" data-price-final="4800"><div class="discount_pct">-70%</div><div class="discount_prices"><div class="discount_original_price">¥ 160</div><div class="discount_final_price">¥ 48</div></div></div><div class="platforms"><span class="platform_img win"></span><span class="platform_img mac"></span><span class="platform_img linux"></span><span class="platform_img hmd_separator"></span><span class="platform_img htcvive"></span><span class="platform_img oculusrift"></span></div></div></a>--%>

<%--                  <a class="store_main_capsule broadcast_capsule app_impression_tracked" data-manual-tracking="1" data-ds-appid="637650" href="https://store.steampowered.com/app/637650/FINAL_FANTASY_XV_WINDOWS_EDITION/?snr=1_4_4__129_8" data-ds-tagids="[122,1695,4434,1684,1742,1756,21,4182,19,3859,4231,1697,4085,1646,15564]"><div class="capsule main_capsule" data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/637650/capsule_616x353.jpg?t=1553563213" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/637650/capsule_616x353.jpg?t=1553563213&quot;);"><div class="screenshot" data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/637650/ss_da4aaf619760c0f075e735bcc4f2f8b850c0c581.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/637650/ss_da4aaf619760c0f075e735bcc4f2f8b850c0c581.600x338.jpg&quot;);"></div><div class="screenshot" data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/637650/ss_031800eb49e2c1da5d8a31f8fe0bbb64544c2d0a.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/637650/ss_031800eb49e2c1da5d8a31f8fe0bbb64544c2d0a.600x338.jpg&quot;);"></div><div class="screenshot" data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/637650/ss_1b02d71822001f88219574bd02d65004d26a4299.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/637650/ss_1b02d71822001f88219574bd02d65004d26a4299.600x338.jpg&quot;);"></div><div class="screenshot" data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/637650/ss_999e73c2cb361d41451d1a84d85f3ff59aa30110.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/637650/ss_999e73c2cb361d41451d1a84d85f3ff59aa30110.600x338.jpg&quot;);"></div></div><div class="info"><div class="app_name"><div>FINAL FANTASY XV WINDOWS EDITION</div></div><div class="screenshots"><div><div data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/637650/ss_da4aaf619760c0f075e735bcc4f2f8b850c0c581.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/637650/ss_da4aaf619760c0f075e735bcc4f2f8b850c0c581.600x338.jpg&quot;);"></div></div><div><div data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/637650/ss_031800eb49e2c1da5d8a31f8fe0bbb64544c2d0a.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/637650/ss_031800eb49e2c1da5d8a31f8fe0bbb64544c2d0a.600x338.jpg&quot;);"></div></div><div><div data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/637650/ss_1b02d71822001f88219574bd02d65004d26a4299.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/637650/ss_1b02d71822001f88219574bd02d65004d26a4299.600x338.jpg&quot;);"></div></div><div><div data-background-image-url="https://media.st.dl.eccdnx.com/steam/apps/637650/ss_999e73c2cb361d41451d1a84d85f3ff59aa30110.600x338.jpg" style="background-image: url(&quot;https://media.st.dl.eccdnx.com/steam/apps/637650/ss_999e73c2cb361d41451d1a84d85f3ff59aa30110.600x338.jpg&quot;);"></div></div></div><div class="reason"><div class="main default">现已推出</div><div class="additional"><div>热销商品</div></div></div><div class="discount_block  discount_block_inline" data-price-final="11500"><div class="discount_pct">-50%</div><div class="discount_prices"><div class="discount_original_price">¥ 230</div><div class="discount_final_price">¥ 115</div></div></div><div class="platforms"><span class="platform_img win"></span></div></div></a>--%>
                    <c:forEach items="${applicationScope.indexHotGames}" var="hotgames" >
                        <a class="store_main_capsule broadcast_capsule app_impression_tracked" data-manual-tracking="1" data-ds-appid="346110" href="${pageContext.request.contextPath}/web/game_details?id=${hotgames.game.id}" data-ds-tagids="[1100689,1662,1695,3859,5160,1702,1643,21,7332,1685,19,3839,3810,128,493]">
                            <div class="capsule main_capsule" data-background-image-url="${pageContext.request.contextPath}/static/images/game_picture/game_details/cover/${hotgames.game.gamePicture}" style="background-image: url(&quot;${pageContext.request.contextPath}/static/images/game_picture/game_details/cover/${hotgames.game.gamePicture}&quot;);">
                            <c:forEach items="${hotgames.gamePictures}" end="4" var="gamePicture">
                            <div class="screenshot" data-background-image-url="${pageContext.request.contextPath}/static/images/game_picture/game_details/${gamePicture.pictureName}" style="background-image: url(&quot;${pageContext.request.contextPath}/static/images/game_details/${gamePicture.pictureName}&quot;);"></div>
                            </c:forEach>
                            </div>
                            <div class="info">
                                <div class="app_name">
                                    <div><c:out value="${hotgames.game.gameName}"></c:out></div>
                                </div>
                                <div class="screenshots">
                                    <c:forEach items="${hotgames.gamePictures}" end="4" var="gamePicture">
                                        <div><div data-background-image-url="${pageContext.request.contextPath}/static/images/game_picture/game_details/${gamePicture.pictureName}" style="background-image: url(&quot;${pageContext.request.contextPath}/static/images/game_details/${gamePicture.pictureName}&quot;);"></div></div>
                                    </c:forEach>
                                </div>
<%--                                <div class="reason"><div class="main default">最新更新</div><div class="additional"><div>热销商品</div></div></div>--%>
<%--                                <div class="discount_block  discount_block_inline" data-price-final="2700"><div class="discount_pct">-80%</div><div class="discount_prices"><div class="discount_original_price">¥ 138</div><div class="discount_final_price">¥ 27</div></div></div>--%>
                                <div class="platforms">
                                    <span class="platform_img win"></span>
                                    <span class="platform_img mac"></span>
                                    <span class="platform_img linux"></span>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>
              <div class="carousel_thumbs" data-usability="1">
                    <c:forEach items="${applicationScope.indexHotGames}" var="hotgames"  varStatus="index">
                        <c:if test="${index.index==0}"><div class="focus"></div></c:if>
                        <c:if test="${index.index!=0}"><div class=""></div></c:if>
                    </c:forEach>
              </div>
              <div class="arrow left" data-usability="1"><div></div></div>
              <div class="arrow right" data-usability="1"><div></div></div>
          </div>
      </div>
      <!--第一屏-->
      <!--排行榜-->
        <div class="section section8 bg-shadow3">
            <c:forEach items="${applicationScope.rankings}" var="ranking" varStatus="ranknum">
                <div class="ranking-container">
                    <div class="part-title"><span>${ranking.name}</span><!--<a href="/paihb.html" target="_blank">MORE+</a>--></div>
                    <div class="ranking-ul">
                        <c:forEach items="${ranking.gameTypes}" var="rank" varStatus="ranks">
                            <div class="ranking-li <c:if test="${(ranks.index+1)==1}">active</c:if>">
                                <div class="ranking-head">
                                    <div class="ranking-num"><c:out value="${ranks.index+1}"></c:out></div>
                                    <span>01.30</span>
                                    <a href="$${pageContext.request.contextPath}/web/game_details?id=${rank.game.id}" target="_blank" title="<c:out value="${rank.game.gameName}"></c:out>" class="game-name"><c:out value="${rank.game.gameName}"></c:out></a>
                                    <em class="level"></em>
                                    <div class="hot-num"><i></i>
                                        <c:if test="${ranknum.index==0}"><c:out value="${rank.game.grade}"></c:out></c:if>
                                        <c:if test="${ranknum.index==1}"><c:out value="${rank.game.grade}"></c:out></c:if>
                                        <c:if test="${ranknum.index==2}"><c:out value="${rank.game.downloadCount}"></c:out></c:if>
                                    </div>
                                </div>
                                <div class="ranking-con">
                                    <a href="${pageContext.request.contextPath}/web/game_details?id=${rank.game.id}" title="<c:out value="${rank.game.gameName}"></c:out>" target="_blank" action="123">
                                        <img src="${pageContext.request.contextPath}/static/images/game_picture/<c:out value="${rank.gamePictures.get(0).pictureName}"></c:out>" data-original="//imgs.ali213.net/oday/uploadfile/2018/11/05/2018110555436913.jpg" alt="<c:out value="${rank.game.gameName}"></c:out>">
                                    </a>
                                    <div class="ranking-r">
                                        <p>类型：<c:out value="${rank.type.typeName}"></c:out></p><p>发行：Blizzard</p><p>平台：PC</p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <i class="col-line"></i>
            </c:forEach>
            <%--                    <!--底部--><jsp:include page="/all/include/tail.jsp"></jsp:include>--%>
            <!--登录弹窗-->
            <jsp:include page="register.jsp"/>/

            >
        </div>

  </div>
  </body>
</html>
