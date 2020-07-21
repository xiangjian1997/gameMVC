<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title><c:out value="${gameT.game.gameName}"></c:out></title>
    <meta name="renderer" content="ie-comp">
    <link href="${pageContext.request.contextPath}/static/css/game_details.css" rel="stylesheet" type="text/css">
<%--    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>--%>
    <script src="js/web/game_details.js"></script>
</head>

<body>
<jsp:include page="head/head.jsp"></jsp:include>
<div style="display: none; z-index: 2147483646; top: 0px; left: 0px; position: absolute; height: 0px; width: 0px;"></div><div style="display: none; z-index: 2147483646; top: 0px; left: 0px; position: absolute; height: 0px; width: 0px;"></div><div style="display: none; z-index: 2147483646; top: 0px; left: 0px; position: absolute; height: 0px; width: 0px;"></div><div style="display: none; z-index: 2147483646; top: 0px; left: 0px; position: absolute; height: 0px; width: 0px;"></div>
<div id="EyeableArea">
    <div class="detail_game" id="top" itemscope="" itemtype="http://schema.org/SoftwareApplication">
        <div class="detail_game_l">
            <div class="detail_game_l_nav">
                <a href="${pageContext.request.contextPath}/web/game_index">单机游戏</a> &gt;
                <a href="${pageContext.request.contextPath}/web/game_index?id=${gameT.type.id}" target="_blank"><c:out value="${gameT.type.typeName}"></c:out></a> &gt;
                <span itemprop="name"><c:out value="${gameT.game.gameName}"></c:out></span>
            </div>
            <div class="detail_game_l_l">
                <img src="${pageContext.request.contextPath}/static/images/game_picture/<c:out value="${gameT.gamePictures.get(0).pictureName}"></c:out>" alt="${gameT.game.gameName}">
                <em class="zh"></em>
            </div>
            <div class="detail_game_l_r">
                <div class="detail_game_l_r_tit">
                    <div class="detail_game_l_r_ctit">
                        <h1><c:out value="${gameT.game.gameName}"></c:out></h1>
                        <span style="display:none" itemprop="inLanguage">中文</span>
                        <span style="display:none" itemprop="license">绿色版</span>
                        <span style="display:none" itemprop="alias">Call of Duty: Modern Warfare</span>
                    </div>
                </div>
                <div class="detail_game_l_r_info mt5">
                    <ul>
                        <li>游戏类型：<a href="http://down.ali213.net/pcgame/FPS/0-0-0-0-new-pic-1.html" target="_blank"><c:out value="${gameT.type.typeName}"></c:out></a></li>
                        <li>更新时间：<a href="/pcgame/all/0-0-2019-0-new-pic-1.html" target="_blank"><span itemprop="dateModified">2019-10-28</span></a></li>
                        <li>游戏发行：Activision</li>
                    </ul>
                </div>
                <div class="detail_game_l_r_tag ">
                    游戏标签：<a href="/pcgame/all/0-0-0-danrdj-new-pic-1.html" target="_blank">单人单机</a>、<a href="/pcgame/all/0-0-0-3d-new-pic-1.html" target="_blank">3D画面</a>、<a href="/pcgame/all/0-0-0-zcsb-new-pic-1.html" target="_blank">支持手柄</a>、<a href="/pcgame/all/0-0-0-zjsp-new-pic-1.html" target="_blank">中级水平</a>、<a href="/pcgame/all/0-0-0-sheji-new-pic-1.html" target="_blank">射击</a>
                </div>
                <div class="detail_game_l_r_down">
                    <div class="detail_game_l_r_down_l">
                        <a id="xz"><em class="sbg"></em><span>本地下载</span><font>文件大小：179G</font></a>
                    </div>
                    <div class="detail_game_l_r_down_r"></div>
                </div>
            </div>
        </div>
        <div class="detail_game_r"></div>
    </div>
    <div class="detail_body">
        <div class="detail_body_left" id="left">
            <div class="detail_body_left_nav" style="width: 860px; position: static; margin-left: 0px; background-color: white;">
                <ul>
                    <li class="liang hover"><a class="yxgs"><em class="sbg"></em><span>游戏概述</span></a></li>
                    <li class="liang"><a class="pzyq"><em class="sbg"></em><span>配置要求</span></a></li>
                    <li class="liang"><a class="azsm"><em class="sbg"></em><span>安装说明</span></a></li>
                    <li class="liang"><a class="xzdz"><em class="sbg"></em><span>下载地址</span></a></li>
                </ul>
            </div>
            <div class="detail_body_left_pic">
                <div class="detail_body_con_bb"><div id="images" class="detail_body_con_bb_title"><h2 id="yxjt">游戏截图</h2></div><div class="detail_body_con_bb_con" id="bimg"><div class="detail_body_con_bb_con_con"><div class="detail_body_con_jt_con_title"><span><a href="//images.ali213.net/picfile/pic/2019/10/14/2019101465810273.jpg" target="_blank">查看原图</a>&nbsp;&nbsp; | &nbsp;&nbsp;<a href="http://pic.ali213.net/html/2019-10-14/94341.html" target="_blank">大图模式</a></span></div><div class="detail_body_con_jt_con_img"><img src="//images.ali213.net/picfile/pic/2019/10/14/927_2019101465810273.jpg" alt="《使命召唤16》游戏截图-3"><div class="detail_body_con_jt_con_img_left" style="height: 457px;"></div><div class="detail_body_con_jt_con_img_right" style="height: 457px;"></div></div></div><div class="detail_body_con_bb_con_con" style="display:none;"><div class="detail_body_con_jt_con_title"><span><a href="//images.ali213.net/picfile/pic/2019/10/14/2019101465812797.jpg" target="_blank">查看原图</a>&nbsp;&nbsp; | &nbsp;&nbsp;<a href="http://pic.ali213.net/html/2019-10-14/94341.html" target="_blank">大图模式</a></span></div><div class="detail_body_con_jt_con_img"><img src="//images.ali213.net/picfile/pic/2019/10/14/927_2019101465812797.jpg" alt="《使命召唤16》游戏截图-3"><div class="detail_body_con_jt_con_img_left"></div><div class="detail_body_con_jt_con_img_right"></div></div></div><div class="detail_body_con_bb_con_con" style="display:none;"><div class="detail_body_con_jt_con_title"><span><a href="//images.ali213.net/picfile/pic/2019/10/14/201910146581253.jpg" target="_blank">查看原图</a>&nbsp;&nbsp; | &nbsp;&nbsp;<a href="http://pic.ali213.net/html/2019-10-14/94341.html" target="_blank">大图模式</a></span></div><div class="detail_body_con_jt_con_img"><img src="//images.ali213.net/picfile/pic/2019/10/14/927_201910146581253.jpg" alt="《使命召唤16》游戏截图-3"><div class="detail_body_con_jt_con_img_left"></div><div class="detail_body_con_jt_con_img_right"></div></div></div><div class="detail_body_con_bb_con_con" style="display:none;"><div class="detail_body_con_jt_con_title"><span><a href="//images.ali213.net/picfile/pic/2019/10/14/2019101465813997.jpg" target="_blank">查看原图</a>&nbsp;&nbsp; | &nbsp;&nbsp;<a href="http://pic.ali213.net/html/2019-10-14/94341.html" target="_blank">大图模式</a></span></div><div class="detail_body_con_jt_con_img"><img src="//images.ali213.net/picfile/pic/2019/10/14/927_2019101465813997.jpg" alt="《使命召唤16》游戏截图-3"><div class="detail_body_con_jt_con_img_left"></div><div class="detail_body_con_jt_con_img_right"></div></div></div><div class="detail_body_con_bb_con_con" style="display:none;"><div class="detail_body_con_jt_con_title"><span><a href="//images.ali213.net/picfile/pic/2019/10/14/2019101465814319.jpg" target="_blank">查看原图</a>&nbsp;&nbsp; | &nbsp;&nbsp;<a href="http://pic.ali213.net/html/2019-10-14/94341.html" target="_blank">大图模式</a></span></div><div class="detail_body_con_jt_con_img"><img src="//images.ali213.net/picfile/pic/2019/10/14/927_2019101465814319.jpg" alt="《使命召唤16》游戏截图-3"><div class="detail_body_con_jt_con_img_left"></div><div class="detail_body_con_jt_con_img_right"></div></div></div><div class="detail_body_con_bb_con_bottom"><div class="detail_body_con_bb_con_bottom_center"><div id="smallImg"><span class="checked sbg" style="margin:0px;"><img src="//images.ali213.net/picfile/pic/2019/10/14/120X90_2019101465810273.jpg" width="89" height="72"></span><span><img src="//images.ali213.net/picfile/pic/2019/10/14/120X90_2019101465812797.jpg" width="89" height="72"></span><span><img src="//images.ali213.net/picfile/pic/2019/10/14/120X90_201910146581253.jpg" width="89" height="72"></span><span><img src="//images.ali213.net/picfile/pic/2019/10/14/120X90_2019101465813997.jpg" width="89" height="72"></span><span><img src="//images.ali213.net/picfile/pic/2019/10/14/120X90_2019101465814319.jpg" width="89" height="72"></span></div></div></div>
                    <div class="detail_body_con_bb_con_foot">
                        <div class="detail_body_con_bb_con_foot_left"></div>
                        <div class="detail_body_con_bb_con_foot_center"><em id="ficon"></em></div>
                        <div class="detail_body_con_bb_con_foot_right"></div>
                    </div>
                </div>
                </div>
            </div>

            <div class="detail_body_left_info" id="pzyq">
                <div class="detail_body_left_info_tit"><h2>配置要求</h2></div>
                <div class="detail_body_left_info_con">
                    <div class="peizhi_con">
                        <div class="gameSetting">
                            <ul class="settingCol1">
                                <li></li>
                                <li><span>操作系统</span></li>
                                <li><span>CPU</span></li>
                                <li><span>内存</span></li>
                                <li><span>显卡</span></li>
                                <li><span>存储空间</span></li>
                            </ul>
                            <ul>
                                <li>推荐配置</li>
                                <li title="Windows® 10 64-bit最新更新"><span itemprop="operatingSystem">Windows® 10 64-bit最新更新</span></li>
                                <li title="Intel® Core™ i5-2500K或AMD Ryzen™ R5 1600X"><span>Intel® Core™ i5-2500K或AMD Ryzen™ R5 1600X</span></li>
                                <li title="12 GB RAM"><span>12 GB RAM</span></li>
                                <li title="NVIDIA® GeForce® GTX 970 / NVIDIA® GeForce® GTX 1660 or AMD Radeon™ R9 390 / AMD Radeon™ RX 580 – DirectX 12.0兼容系统"><span>NVIDIA® GeForce® GTX 970 / NVIDIA® GeForce® GTX 1660 or AMD Radeon™ R9 390 / AMD Radeon™ RX 580 – DirectX 12.0兼容系统</span></li>
                                <li title="175 GB 硬盘空间"><span>175 GB 硬盘空间</span></li>
                            </ul>
                            <ul>
                                <li>最低配置</li>
                                <li title="Windows® 7 64-bit (SP1) 或 Windows® 10 64-bit"><span itemprop="operatingSystem">Windows® 7 64-bit (SP1) 或 Windows® 10 64-bit</span></li>
                                <li title="Intel® Core™ i3-4340 or AMD FX-6300"><span>Intel® Core™ i3-4340 or AMD FX-6300</span></li>
                                <li title="NVIDIA® GeForce® GTX 670 / NVIDIA® GeForce® GTX 1650或AMD Radeon™ HD 7950 – DirectX 12.0 兼容系统"><span>NVIDIA® GeForce® GTX 670 / NVIDIA® GeForce® GTX 1650或AMD Radeon™ HD 7950 – DirectX 12.0 兼容系统</span></li>
                                <li title="8GB RAM"><span>8GB RAM</span></li>
                                <li title="175 GB硬盘空间"><span>175 GB硬盘空间</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="detail_body_left_info" id="down_load">
                <div class="detail_body_left_info_tit"><h2>下载地址</h2><a href="//game.ali213.net/thread-3584469-1-1.html" target="_blank">版本说明</a><a href="//www.ali213.net/about/feedback.html" target="_blank">我要报错</a></div>
                <div class="detail_body_left_info_con">
                    <div class="detail_body_left_info_con_tit">普通下载：</div>
                    <div class="detail_body_left_info_con_con">
                        <div class="common_down_l">
                            <div class="common_down_l_one"><h4><a rel="0" name="download" id="game591BoxOpen"><em class="sbg"></em><p>点击查找</p><i>资源地址</i></a></h4><span>由</span><font>苍龙飓风</font><em>网友推荐</em></div><div class="common_down_l_one mt10"><h4><a rel="1" name="download" id="dddBoxOpen"><em class="sbg"></em><p>点击查找</p><i>资源地址</i></a></h4><span>由</span><font>yaxu9811</font><em>网友推荐</em></div><div class="common_down_l_one mt10"><h4><a rel="2" name="download" id="cdromBoxOpen"><em class="sbg"></em><p>点击查找</p><i>资源地址</i></a></h4><span>由</span><font>gcwoo</font><em>网友推荐</em></div><div class="common_down_l_one mt10"><h4><a rel="3" name="download" id="game691BoxOpen"><em class="sbg"></em><p>点击查找</p><i>资源地址</i></a></h4><span>由</span><font>偶是路人</font><em>网友推荐</em></div>
                            <div id="game591Box" class="divShow" style="z-index: 2147483647; display: none; position: fixed; width: 855px; height: 818px; top: 50%; left: 50%; margin-top: -409px; margin-left: -427.5px;"><img src="https://imgs.ali213.net/zpro/2019/06/15/2019061531848319.png" class="closedBtn2017" rel="0" style="position: absolute; display: block; width: 28px; height: 28px; top: 225px; right: 90px; z-index: 200; cursor: pointer;"><a href="http://gm.wy213.com/ahdts_alilt.html?comefrm=alixz" target="_blank" class="picBg" style="width: 855px; height: 818px; background: url(&quot;https://imgs.ali213.net/zpro/2020/02/17/2020021730431206.png&quot;) no-repeat; display: block; z-index: 100; position: absolute;"></a><iframe allowtransparency="true" marginheight="0" marginwidth="0" frameborder="0" scrolling="no" src="//www.soft8899.com/down?key=c510CQlTCQcEAQQIAwEBAlBQVlsFCg8IUldRCVRXDgcLUk4I" width="510px" height="315px" class="pageCont" style="position: relative; top: 262px; left: 271px; overflow: hidden; z-index: 2147483647;"></iframe></div><div id="dddBox" class="divShow" style="z-index: 2147483647; display: none; position: fixed; width: 855px; height: 818px; top: 50%; left: 50%; margin-top: -409px; margin-left: -427.5px;"><img src="https://imgs.ali213.net/zpro/2019/08/23/201908239275351.png" class="closedBtn2017" rel="1" style="position: absolute; display: block; width: 28px; height: 28px; top: 225px; right: 90px; z-index: 200; cursor: pointer;"><a href="http://gm.wy213.com/sj_alilt.html?comefrm=alixz" target="_blank" class="picBg" style="width: 855px; height: 818px; background: url(&quot;https://imgs.ali213.net/zpro/2020/02/17/2020021730317878.png&quot;) no-repeat; display: block; z-index: 100; position: absolute;"></a><iframe allowtransparency="true" marginheight="0" marginwidth="0" frameborder="0" scrolling="no" src="//www.soft8899.com/down?key=c510CQlTCQcEAQQIAwEBAlBQVlsFCg8IUldRCVRXDgcLUk4I" width="510px" height="315px" class="pageCont" style="position: relative; top: 262px; left: 271px; overflow: hidden; z-index: 2147483647;"></iframe></div><div id="cdromBox" class="divShow" style="z-index: 2147483647; display: none; position: fixed; width: 855px; height: 818px; top: 50%; left: 50%; margin-top: -409px; margin-left: -427.5px;"><img src="https://imgs.ali213.net/zpro/2019/08/23/201908239275351.png" class="closedBtn2017" rel="2" style="position: absolute; display: block; width: 28px; height: 28px; top: 225px; right: 90px; z-index: 200; cursor: pointer;"><a href="http://gm.wy213.com/sj_alilt.html?comefrm=alixz" target="_blank" class="picBg" style="width: 855px; height: 818px; background: url(&quot;https://imgs.ali213.net/zpro/2020/02/17/2020021730317878.png&quot;) no-repeat; display: block; z-index: 100; position: absolute;"></a><iframe allowtransparency="true" marginheight="0" marginwidth="0" frameborder="0" scrolling="no" src="//www.soft8899.com/down?key=c510CQlTCQcEAQQIAwEBAlBQVlsFCg8IUldRCVRXDgcLUk4I" width="510px" height="315px" class="pageCont" style="position: relative; top: 262px; left: 271px; overflow: hidden; z-index: 2147483647;"></iframe></div><div id="game691Box" class="divShow" style="z-index: 2147483647; display: none; position: fixed; width: 855px; height: 818px; top: 50%; left: 50%; margin-top: -409px; margin-left: -427.5px;"><img src="https://imgs.ali213.net/zpro/2019/08/23/201908239275351.png" class="closedBtn2017" rel="3" style="position: absolute; display: block; width: 28px; height: 28px; top: 225px; right: 90px; z-index: 200; cursor: pointer;"><a href="http://gm.wy213.com/sj_alilt.html?comefrm=alixz" target="_blank" class="picBg" style="width: 855px; height: 818px; background: url(&quot;https://imgs.ali213.net/zpro/2020/02/17/2020021730317878.png&quot;) no-repeat; display: block; z-index: 100; position: absolute;"></a><iframe allowtransparency="true" marginheight="0" marginwidth="0" frameborder="0" scrolling="no" src="//www.soft8899.com/down?key=c510CQlTCQcEAQQIAwEBAlBQVlsFCg8IUldRCVRXDgcLUk4I" width="510px" height="315px" class="pageCont" style="position: relative; top: 262px; left: 271px; overflow: hidden; z-index: 2147483647;"></iframe></div>
                        </div>
                        <div class="common_down_r"></div>
                    </div>

                </div>
            </div>


            <div class="detail_body_left_xgxz">
                <div id="ALI213COMMENT">

                    <div class="ali-comment-article"><div class="ali-comment-article-name-w">评论<a id="pl" style="width:1px;height:1px;overflow:hidden;"></a></div><div class="ali-comment-article-join-w">(<em id="ali-comment-cyrs">7165</em>人参与 , <em id="ali-comment-plrs">793</em>条评论)</div></div>

                    <div class="ali-comment-post" style="height: 160px;">
                        <c:if test="${sessionScope.temp==null}">
                            <div >
                                先<span id="user-register" style="color: #3bb5f8;cursor: pointer;">登录</span>才能评论
                                <!--登录弹窗-->
                                <jsp:include page="head/register.jsp"></jsp:include>
                            </div>
                        </c:if>
                        <c:if test="${sessionScope.temp!=null}">
                            <div class="comment-post-wrap-area-w" style="background: url(//comment.ali213.net/images/share_bottom.jpg) no-repeat right top;height: 120px;">

                                <!-- 加载编辑器的容器 -->
                                <script id="container" name="content" type="text/plain">说点什么吧！</script>
                                <!-- 配置文件 -->
                                <script type="text/javascript" charset="utf-8" src="/ider/all/include/UEditor/ueditor.config.js"></script>
                                <!-- 编辑器源码文件 -->
                                <script type="text/javascript" charset="utf-8" src="/ider/all/include/UEditor/ueditor.all.min.js"> </script>
                                <!-- 实例化编辑器 -->
                                <script type="text/javascript">
                                    var ue = UE.getEditor('container',
                                        {
                                            initialFrameWidth: 807,   //设置宽度为500px
                                            initialFrameHeight: 100,  //设置高度为500px
                                            scaleEnabled:true         //设置当内容超出控件高度时出现滚动条，而不是越撑越高
                                        });
                                </script>
<%--                                <jsp:include page="all/include/UEditor/demo.html"></jsp:include>--%>
                            </div>
                            <div class="ali-comment-post-wrap-action">
                                <div class="ali-comment-post-userinfo">
                                    <a id="comment-add-face">
                                        <i class="comment-face"></i></a>
                                    <span class="ali-comment-add-user">
                    <img src="https://uc.ali213.net/data/avatar/022/88/42/57_avatar_middle.jpg" width="30" height="30">
                    <a href="//i.ali213.net/image.html" target="_blank">
                        <label></label>
                    </a>
                </span>
                <span class="username-ydl">
                    <a href="${pageContext.request.contextPath}/needsigin/personal.jsp" target="_blank"><c:out value="${sessionScope.temp.nickname}"></c:out></a><!--用户名以及个人中心链接-->
                </span>
                <span class="ali-comment-logout">
                    <a href="javascript:void(0);" class="userExit">退出</a>
                </span>
                                </div>
                                <div class="ali-comment-sub"><button class="ali-comment-sub-button" style="display: inline-block;" id="ali_comment_fabu">发布</button></div><div class="ali-comment-nm-yzm"><input type="text" id="ali_comment_yzm" name="ali_comment_yzm" value=""><img style="cursor:hand;border:0px;" src="//comment.ali213.net/inc/code.php" id="ali-comment-yzm-url" onclick="this.src='//comment.ali213.net/inc/code.php?'+Math.random()"></div></div>
                        </c:if>


                    </div>
                    <div class="ali-comment-alert" id="ali_comment_alert">
                        <span>未输入评论内容</span></div>
                    <div class="ali-comment-no" id="ali_comment_if_content" style="display: none;">
                        <span>还没有评论内容，快来抢沙发吧！</span>
                    </div>
                    <div class="ali-comment-jbcon"></div><div class="ali-comment-box" id="ali_comment_body_display"><div class="c_clear_30"></div>
                <div class="ali-comment-box-tit">
                    <strong>热门评论</strong>
                </div>
                <div class="c_clear_10"></div>
                    <!--一个评论开始-->
                <div class="ali-c-block-box ">
                    <div class="ali-msg-wrap-gw">
                        <div class="ali-wrap-user-gw">
                            <span class="user-name_pic">
                                <img src="https://uc.ali213.net/data/avatar/028/37/66/84_avatar_small.jpg" width="40" height="40"><i></i></span>
                            <span class="user-name-gw" style="color:#969696;">游侠网友</span>
                            <span class="user-time-gw">11-26 13:32</span>
                        </div>
                        <div class="ali-wrap-issue-gw">
                            <div class="ali-issue-wrap-gw">
                                <div class="comment-hf-body" style="border-bottom:0px;">
                                    <div class="user-name">网友名称</div>
                                    <div class="ali-comment-hf-lou-num">1</div>
                                    <div class="ali-comment-hf-content">可以把游戏送你</div>
                                    <div class="comment-correlation">
                                        <div class="comment-correlation-click">
                                            <span class="ali-click-jb-gw" data-id="2845281">举报</span>
                                            <span class="ali-click-ding-gw">
                                                <a href="javascript:void(0)" title="顶" class="ali-evt-support ali-action-ding" data-id="2845281" id="ali_kg_ding_2845281"><i class="ali-icon-ding-bg"></i><em class="ali-icon-name-bg" id="ali_ding_num_2845281">35</em></a></span>
                                            <span class="ali-click-cai-gw">
                                                <a href="javascript:void(0)" title="踩" class="ali-evt-opposed ali-action-cai" data-id="2845281" id="ali_kg_cai_2845281"><i class="ali-icon-cai-bg"></i><em class="ali-icon-name-bg" id="ali_cai_num_2845281">102</em></a></span>
                                            <span class="ali-reply-gw"><a href="javascript:void(0);" class="ali-evt-reply" data-id="2845281" data-pid="2845281" data-cid="2847663">回复</a></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="s_content">阿迪斯发到付飒飒大大是</div>
                            </div>
                        </div>
                        <div class="comment-correlation">
                            <div class="comment-correlation-click">
                                <span class="ali-click-jb-gw" data-id="2847663">举报</span>
                                <span class="ali-click-ding-gw">
                                    <a href="javascript:void(0)" title="顶" class="ali-evt-support ali-action-ding" data-id="2847663" id="ali_kg_ding_2847663">                        <i class="ali-icon-ding-bg"></i><em class="ali-icon-name-bg" id="ali_ding_num_2847663">2204</em></a>
                                </span>
                                <span class="ali-click-cai-gw">
                                    <a href="javascript:void(0)" title="踩" class="ali-evt-opposed ali-action-cai" data-id="2847663" id="ali_kg_cai_2847663">                        <i class="ali-icon-cai-bg"></i><em class="ali-icon-name-bg" id="ali_cai_num_2847663">29</em>                        </a>                    </span>                    <span class="ali-reply-gw">                    	<a href="javascript:void(0);" class="ali-evt-reply" data-id="2847663" data-pid="2845281" data-cid="2847663">回复</a>                    </span>                </div>
                        </div>
                        <div class="ali-comment-huifu-input" id="ali_hf_input_2847663"></div>
                    </div>
                </div>
                    <!--一个评论结束-->
                <div class="ali-c-block-box ">
                    <div class="ali-msg-wrap-gw">
                        <div class="ali-wrap-user-gw">
                            <span class="user-name_pic"><img src="https://uc.ali213.net/data/avatar/068/12/76/65_avatar_small.jpg" width="40" height="40"><i></i></span>            	<span class="user-name-gw" style="color:#969696;">游侠网友</span>                <span class="ali-user-address-gw">[江西省赣州市网友]</span>
                            <span class="user-time-gw">10-23 20:54</span>
                        </div>
                        <div class="ali-wrap-issue-gw">
                            <div class="ali-issue-wrap-gw">                靠靠靠空间和高考过后就看              </div>            </div>            <div class="comment-correlation">            	<div class="comment-correlation-click">            		<span class="ali-click-jb-gw" data-id="2763813">举报</span>                    <span class="ali-click-ding-gw">                        <a href="javascript:void(0)" title="顶" class="ali-evt-support ali-action-ding" data-id="2763813" id="ali_kg_ding_2763813">                        <i class="ali-icon-ding-bg"></i><em class="ali-icon-name-bg" id="ali_ding_num_2763813">959</em>                        </a>                    </span>                    <span class="ali-click-cai-gw">                        <a href="javascript:void(0)" title="踩" class="ali-evt-opposed ali-action-cai" data-id="2763813" id="ali_kg_cai_2763813">                        <i class="ali-icon-cai-bg"></i><em class="ali-icon-name-bg" id="ali_cai_num_2763813">47</em>                        </a>                    </span>                    <span class="ali-reply-gw">                    	<a href="javascript:void(0);" class="ali-evt-reply" data-id="2763813" data-pid="2763813" data-cid="2763813">回复</a>                    </span>                </div>            </div>				<div class="ali-comment-huifu-input" id="ali_hf_input_2763813"></div>        </div>    </div>
                <div class="ali-c-block-box ">
                    <div class="ali-msg-wrap-gw">        	<div class="ali-wrap-user-gw">        	    <span class="user-name_pic"><img src="https://uc.ali213.net/data/avatar/015/59/63/69_avatar_middle.jpg" width="40" height="40"><i></i></span>            	<span class="user-name-gw">华仔hua</span>                <span class="ali-user-address-gw">[四川省成都市网友]</span>                <span class="user-time-gw">10-30 22:48</span>            </div>            <div class="ali-wrap-issue-gw">            	<div class="ali-issue-wrap-gw">                破解组加油 加油  加油！加密这么严密，我们中国高手多的很，中国万岁！给它破了              </div>            </div>            <div class="comment-correlation">            	<div class="comment-correlation-click">            		<span class="ali-click-jb-gw" data-id="2782966">举报</span>                    <span class="ali-click-ding-gw">                        <a href="javascript:void(0)" title="顶" class="ali-evt-support ali-action-ding" data-id="2782966" id="ali_kg_ding_2782966">                        <i class="ali-icon-ding-bg"></i><em class="ali-icon-name-bg" id="ali_ding_num_2782966">487</em>                        </a>                    </span>                    <span class="ali-click-cai-gw">                        <a href="javascript:void(0)" title="踩" class="ali-evt-opposed ali-action-cai" data-id="2782966" id="ali_kg_cai_2782966">                        <i class="ali-icon-cai-bg"></i><em class="ali-icon-name-bg" id="ali_cai_num_2782966">63</em>                        </a>                    </span>                    <span class="ali-reply-gw">                    	<a href="javascript:void(0);" class="ali-evt-reply" data-id="2782966" data-pid="2782966" data-cid="2782966">回复</a>                    </span>                </div>            </div>				<div class="ali-comment-huifu-input" id="ali_hf_input_2782966"></div>        </div>    </div>
                <div class="c_clear_30"></div>
                <div class="ali-comment-box-tit">
                    <strong id="ALICOMMENTTOP">最新评论</strong>
                </div>
                <div class="c_clear_10"></div>
                    <!--一个评论开始-->
                <div class="ali-c-block-box ">
                    <div class="ali-msg-wrap-gw">
                        <div class="ali-wrap-user-gw">
                            <span class="user-name_pic">
                                <img src="https://uc.ali213.net/data/avatar/025/90/18/14_avatar_small.jpg" width="40" height="40"><!--网友头像图片-->
                                <i></i>
                            </span>
                            <span class="ali-user-address-gw">[山东省济宁市网友]</span><!--网友的故乡？-->
                            <span class="user-time-gw">1天前</span>               <!--时间-->
                        </div>
                        <div class="ali-wrap-issue-gw">
                            <div class="ali-issue-wrap-gw">
                        <div class="comment-hf-body" style="border-bottom:0px;">
                            <div class="user-name">河南省洛阳市网友</div>
                            <div class="ali-comment-hf-lou-num">1</div>
                            <div class="ali-comment-hf-content">180G大家都怎么下的啊？我晕</div>
                            <div class="comment-correlation">
                                <div class="comment-correlation-click">
                                    <span class="ali-click-jb-gw" data-id="3081910">举报</span>
                                    <span class="ali-click-ding-gw"><a href="javascript:void(0)" title="顶" class="ali-evt-support ali-action-ding" data-id="3081910" id="ali_kg_ding_3081910"><i class="ali-icon-ding-bg"></i><em class="ali-icon-name-bg" id="ali_ding_num_3081910">2</em></a></span>						<span class="ali-click-cai-gw"><a href="javascript:void(0)" title="踩" class="ali-evt-opposed ali-action-cai" data-id="3081910" id="ali_kg_cai_3081910"><i class="ali-icon-cai-bg"></i><em class="ali-icon-name-bg" id="ali_cai_num_3081910"></em></a></span>						<span class="ali-reply-gw"><a href="javascript:void(0);" class="ali-evt-reply" data-id="3081910" data-pid="3081910" data-cid="3151052">回复</a></span>					</div>				</div>			</div>
                        <div class="s_content">硬下</div>
                    </div>
                    </div>
                        <div class="comment-correlation">
                            <div class="comment-correlation-click">
                                <span class="ali-click-jb-gw" data-id="3151052">举报</span>
                                <span class="ali-click-ding-gw">
                                    <a href="javascript:void(0)" title="顶" class="ali-evt-support ali-action-ding" data-id="3151052" id="ali_kg_ding_3151052">
                                        <i class="ali-icon-ding-bg"></i>
                                        <em class="ali-icon-name-bg" id="ali_ding_num_3151052"></em>
                                    </a>
                                </span>
                                <span class="ali-click-cai-gw">                        <a href="javascript:void(0)" title="踩" class="ali-evt-opposed ali-action-cai" data-id="3151052" id="ali_kg_cai_3151052">                        <i class="ali-icon-cai-bg"></i><em class="ali-icon-name-bg" id="ali_cai_num_3151052"></em>                        </a>                    </span>                    <span class="ali-reply-gw">                    	<a href="javascript:void(0);" class="ali-evt-reply" data-id="3151052" data-pid="3081910" data-cid="3151052">回复</a>                    </span>                </div>            </div>				<div class="ali-comment-huifu-input" id="ali_hf_input_3151052"></div>        </div>    </div>

                    <!--一个评论结束-->
                <div class="ali-c-block-box ">
                    <div class="ali-msg-wrap-gw">
                        <div class="ali-wrap-user-gw">
                            <span class="user-name_pic">
                                <img src="https://uc.ali213.net/data/avatar/000/49/64/46_avatar_middle.jpg" width="40" height="40">
                                <i></i>
                            </span>
                            <span class="user-name-gw">knightking</span>
                            <span class="ali-user-address-gw">[北京市网友]</span>
                            <span class="user-time-gw">1天前</span>
                        </div>
                        <div class="ali-wrap-issue-gw">
                            <div class="ali-issue-wrap-gw">
                                <div class="comment-hf-body" style="border-bottom:0px;">
                                    <div class="ali-comment-hf-user" style="color:#969696;">游侠网友</div>
                                    <div class="user-name">新疆克拉玛依市网友</div>
                                    <div class="ali-comment-hf-lou-num">1</div>
                                    <div class="ali-comment-hf-content">打腻了，可以把游戏送你</div>
                                    <div class="comment-correlation">
                                        <div class="comment-correlation-click">
                                            <span class="ali-click-jb-gw" data-id="2845281">举报</span>
                                            <span class="ali-click-ding-gw"><a href="javascript:void(0)" title="顶" class="ali-evt-support ali-action-ding" data-id="2845281" id="ali_kg_ding_2845281">
                                                <i class="ali-icon-ding-bg"></i>
                                                <em class="ali-icon-name-bg" id="ali_ding_num_2845281">35</em>
                                            </a>
                                            </span>
                                            <span class="ali-click-cai-gw">
                                                <a href="javascript:void(0)" title="踩" class="ali-evt-opposed ali-action-cai" data-id="2845281" id="ali_kg_cai_2845281">
                                                <i class="ali-icon-cai-bg"></i>
                                                <em class="ali-icon-name-bg" id="ali_cai_num_2845281">102</em>
                                                </a>
                                            </span>
                                            <span class="ali-reply-gw"><a href="javascript:void(0);" class="ali-evt-reply" data-id="2845281" data-pid="2845281" data-cid="3150956">回复</a></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="s_content">自己承认自己是狗的，你是第一个</div>
                            </div>
                        </div>
                        <div class="comment-correlation">
                            <div class="comment-correlation-click">
                                <span class="ali-click-jb-gw" data-id="3150956">举报</span>
                                <span class="ali-click-ding-gw">
                                    <a href="javascript:void(0)" title="顶" class="ali-evt-support ali-action-ding" data-id="3150956" id="ali_kg_ding_3150956">
                                        <i class="ali-icon-ding-bg"></i>
                                        <em class="ali-icon-name-bg" id="ali_ding_num_3150956">4</em>
                                    </a>
                                </span>
                                <span class="ali-click-cai-gw">
                                    <a href="javascript:void(0)" title="踩" class="ali-evt-opposed ali-action-cai" data-id="3150956" id="ali_kg_cai_3150956">
                                        <i class="ali-icon-cai-bg"></i>
                                        <em class="ali-icon-name-bg" id="ali_cai_num_3150956"></em>
                                    </a>
                                </span>
                                <span class="ali-reply-gw">
                                    <a href="javascript:void(0);" class="ali-evt-reply" data-id="3150956" data-pid="2845281" data-cid="3150956">回复</a>                    </span>                </div>            </div>
                        <div class="ali-comment-huifu-input" id="ali_hf_input_3150956"></div>
                    </div>    </div>
                <div align="center" class="ali_page_fenye_comment">
                    <a href="javascript:void(0);" class="currpage_comment">1</a>
                    <a href="javascript:void(0);" onclick="comment_read(3,68293,2,2,2)">2</a>
                    <a href="javascript:void(0);" onclick="comment_read(3,68293,3,2,2)">3</a>
                    <a href="javascript:void(0);" onclick="comment_read(3,68293,4,2,2)">4</a>
                    <a href="javascript:void(0);" onclick="comment_read(3,68293,5,2,2)">5</a>
                    <a href="javascript:void(0);" onclick="comment_read(3,68293,6,2,2)">6</a>
                    <span><a href="javascript:void(0);" onclick="comment_read(3,68293,2,2,2)">下页</a></span>
                    <span><a href="javascript:void(0);" onclick="comment_read(3,68293,40,2,2)">尾页</a></span>
                    <span><a href="javascript:void(0);" onclick="comment_read(3,68293,40,2,2)">共40页</a></span>
                </div>
            </div>

        </div>

            </div>

</div>
        <div class="detail_body_right">
            <div class="downModContainer rightPadding">
                <div class="rightTitle">
                    <h2>第一人称射击FPS下载TOP10</h2>
                    <a href="//down.ali213.net/pcgame/FPS/0-0-0-0-hot-pic-1.html" target="_blank">更多&gt;</a>
                </div>
                <ul class="top10Content fn-clear">
                    <li>
                        <p class="downRank downRank1">1</p>
                        <div class="normalStatus">
                            <p class="gameName"><a href="http://down.ali213.net/pcgame/CS1.6.html" target="_blank">反恐精英</a></p>
                            <p class="gameVersion">中文硬盘版</p>
                        </div>
                        <div class="hoverStatus">
                            <a href="http://down.ali213.net/pcgame/CS1.6.html" class="gameLogo" target="_blank">
                                <img src="//imgs.ali213.net/oday/uploadfile/2013/04/11/100X129_cs.jpg" alt="《反恐精英》CS1.6  硬盘完美版">
                            </a>
                            <p class="gameName"><a href="http://down.ali213.net/pcgame/CS1.6.html" target="_blank">反恐精英</a></p>
                            <p class="gameVersion">中文硬盘版</p>
                            <p class="downGame"><a href="http://down.ali213.net/pcgame/CS1.6.html" target="_blank">[下载]</a></p>
                        </div>
                    </li>
                </ul>
            </div>			<div class="newModContainer rightPadding">
            <div class="rightTitle">
                <h2>第一人称射击FPS最新更新</h2>
                <a href="//down.ali213.net/pcgame/FPS/0-0-0-0-new-pic-1.html" target="_blank">更多&gt;</a>
            </div>
            <div class="newMod">
                <li><a href="http://down.ali213.net/pcgame/postal4noregerts.html" target="_blank" title="《喋血街头4》免安装绿色版[v0.1.4.1.15|早期测试版]">《喋血街头4》免安装绿色版[v0.1.4.1.15|早期测试版]</a></li><li><a href="http://down.ali213.net/pcgame/tannenberg.html" target="_blank" title="《坦能堡》官方中文版[整合凡尔登|Build 20200212|Steam正版分流]">《坦能堡》官方中文版[整合凡尔登|Build 20200212|Steam正版分流]</a></li><li><a href="http://down.ali213.net/pcgame/blackwake.html" target="_blank" title="《黑色艉流》官方测试版[Build 20200211|Steam正版分流]">《黑色艉流》官方测试版[Build 20200211|Steam正版分流]</a></li><li><a href="http://down.ali213.net/pcgame/SeriousSam3BFE.html" target="_blank" title="《英雄萨姆3：BFE》免安装简体中文绿色版[Build 20170404|官方中文]">《英雄萨姆3：BFE》免安装简体中文绿色版[Build 20170404|官方中文]</a></li><li><a href="http://down.ali213.net/pcgame/HeavyBullets.html" target="_blank" title="《重磅子弹》免安装绿色版[v1.05]">《重磅子弹》免安装绿色版[v1.05]</a></li><li><a href="http://down.ali213.net/pcgame/Contagion.html" target="_blank" title="《传染病》免安装绿色版[v2.1.2.1]">《传染病》免安装绿色版[v2.1.2.1]</a></li><li><a href="http://down.ali213.net/pcgame/blackbtf.html" target="_blank" title="《黑蝴蝶》免安装绿色版">《黑蝴蝶》免安装绿色版</a></li><li><a href="http://down.ali213.net/pcgame/thepitinfinity.html" target="_blank" title="《深坑：无限》免安装绿色版[整合Healer DLC]">《深坑：无限》免安装绿色版[整合Healer DLC]</a></li><li><a href="http://down.ali213.net/pcgame/nucleardawn.html" target="_blank" title="《核子黎明》免安装绿色版[Build20180409]">《核子黎明》免安装绿色版[Build20180409]</a></li><li><a href="http://down.ali213.net/pcgame/deadcore.html" target="_blank" title="《死亡核心》免安装绿色版[Build20190207]">《死亡核心》免安装绿色版[Build20190207]</a></li>
            </div>
        </div>
            <div class="recommendGameContainer rightPadding">
                <div class="rightTitle">
                    <h2>推荐游戏</h2>
                </div>
                <div class="recommendGame fn-clear">
                    <a href="https://down.ali213.net/pcgame/deadcells.html" target="_blank" title="死亡细胞" class="fl"><img src="//imgs.ali213.net/Down/TJPic/2019/12/26/1577332209n67.jpg" alt="死亡细胞"><p>死亡细胞</p></a><a href="https://down.ali213.net/pcgame/richman10.html" target="_blank" title="大富翁10" class="fr"><img src="//imgs.ali213.net/Down/TJPic/2019/12/26/1577332230f79.jpg" alt="大富翁10"><p>大富翁10</p></a><a href="https://down.ali213.net/pcgame/doraemonstoryofseasons.html" target="_blank" title="哆啦A梦：牧场物语" class="fl"><img src="//imgs.ali213.net/Down/TJPic/2019/12/26/1577332266j19.jpg" alt="哆啦A梦：牧场物语"><p>哆啦A梦：牧场物语</p></a><a href="https://down.ali213.net/pcgame/scrolloftaiwu.html" target="_blank" title="太吾绘卷" class="fr"><img src="//imgs.ali213.net/Down/TJPic/2019/12/26/1577332187i22.jpg" alt="太吾绘卷"><p>太吾绘卷</p></a>
                </div>
            </div>			<div class="hotGameContainer rightPadding">
            <div class="rightTitle">
                <h2>热门大作游戏专题</h2>
            </div>
            <div class="hotGameGame fn-clear">
                <a href="http://www.ali213.net/zt/orochi3u/" title="无双大蛇3:终极版" target="_blank"><span>9.1</span><img src="//imgs.ali213.net/Spe/2019/12/23/201912235244097.jpg" alt="无双大蛇3:终极版"><p><em>无双大蛇3:终极版</em><em>动作游戏ACT</em></p></a><a href="http://www.ali213.net/zt/stoneshard/" title="石质碎片" target="_blank"><span>9</span><img src="//imgs.ali213.net/Spe/2020/02/13/2020021312443325.jpg" alt="石质碎片"><p><em>石质碎片</em><em>角色扮演RPG</em></p></a><a href="http://www.ali213.net/zt/rotk14/" title="三国志14" target="_blank"><span>8.9</span><img src="//imgs.ali213.net/Spe/2020/01/15/2020011571330437.jpg" alt="三国志14"><p><em>三国志14</em><em>策略战棋SLG</em></p></a>
            </div>

        </div>
        </div></div></div>

</body>
</html>
