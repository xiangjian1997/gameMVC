<%--
  Created by IntelliJ IDEA.
  User: xiangjian
  Date: 2020/1/13
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>游戏下载页</title>
</head>
<body>
<div class="yxhz_n1_container">
    <div class="n1_header">
        <div>
            <b></b>
            <span>极速下载</span>
        </div>
    </div>
    <div class="n1_content">
        <p class="gamePic">
            <img src="http://img.soft5566.com/pic/y/2016030920338686.jpg" onerror="nofind()" style="width:132px;float:left;">
        </p>
        <ul>
            <li class="gameID_cn">《三国志14》试玩版</li>
            <li class="gameID_zn">Romance Of Three Kingdom 14</li>
            <li class="gameSize">大小：<span>4.2G</span></li>
            <li class="gameicon"></li>
        </ul>
        <i style="display: block;height:2px;width:100%;background:rgb(229,229,229);clear:both;"></i>

        <a id="jsbtn" rel="a" data-id="68061" class="gameDown down_js"><span></span>极速下载<div class="readme">需使用5566客户端下载</div></a>		<font><a href="thunder://QUFodHRwOi8vZDguNTFsZy5jb20vdG9ycmVudC9ST01BTkNFLk9GLlRIRS5USFJFRS5LSU5HRE9NUy5YSVYuRGVtby5TdGVhbS50b3JyZW50Wlo=" class="gameDown down_xl"><span></span>迅雷链接下载<div class="readme">需使用迅雷客户端下载</div></a><em info-title="xunlei#68061" token="a4b294c3c46e549bd57f356702fba782" style="display: none;">资源无法下载，点击报错</em></font>                <font><a id="wpbtn" href="https://pan.baidu.com/s/13Odaz_t68TEr_S9PhP9lzg" target="_blank" class="gameDown down_bd"><span></span>百度网盘下载<div class="readme">需使用百度网盘客户端下载</div></a><em info-title="baidu#68061" token="d3155e19c000da1028f7bf5919199aad">资源无法下载，点击报错</em></font>		<font><a id="btbtn" href="http://btfile.soft5566.com/y/ROMANCE.OF.THE.THREE.KINGDOMS.XIV.Demo.Steam.torrent" target="_blank" class="gameDown down_bt"><span></span>B T 种子下载<div class="readme">需使用BT下载器下载</div></a><em info-title="bt#68061" token="08d0e50fc22241cb004cf624a366d325">资源无法下载，点击报错</em></font>        <a id="ed2kbtn" class="gameDown down_ed2k"><span></span>e D 2 K 下载<div class="readme">需使用电驴类客户端下载</div></a>		<div class="ed2k_content">
        <b></b>
        <span>eD2K下载地址</span>
        <span class="close_ed2k">收起地址</span>
        <i></i>
        <ul class="content_part"><li>
            <em class="checked"><input checked="checked" value="ed2k://|file|1137090.part5.rar|283039314|913e6e72faa7b5e26a7e2b8097d26d2b|/" type="checkbox" name="fileck"></em>
            <span><a href="ed2k://|file|1137090.part5.rar|283039314|913e6e72faa7b5e26a7e2b8097d26d2b|/">1137090.part5.rar</a></span>
            <span>269.93 MB</span>
        </li><li>
            <em class="checked"><input checked="checked" value="ed2k://|file|1137090.part1.rar|1048576000|9291ac2a130c52bee9b583104d7e5490|/" type="checkbox" name="fileck"></em>
            <span><a href="ed2k://|file|1137090.part1.rar|1048576000|9291ac2a130c52bee9b583104d7e5490|/">1137090.part1.rar</a></span>
            <span>1000 MB</span>
        </li><li>
            <em class="checked"><input checked="checked" value="ed2k://|file|1137090.part2.rar|1048576000|b9f43d4d159ff95a8841d85c6f3b5cd0|/" type="checkbox" name="fileck"></em>
            <span><a href="ed2k://|file|1137090.part2.rar|1048576000|b9f43d4d159ff95a8841d85c6f3b5cd0|/">1137090.part2.rar</a></span>
            <span>1000 MB</span>
        </li><li>
            <em class="checked"><input checked="checked" value="ed2k://|file|1137090.part3.rar|1048576000|9f40852c615741625fec0056c52a6f39|/" type="checkbox" name="fileck"></em>
            <span><a href="ed2k://|file|1137090.part3.rar|1048576000|9f40852c615741625fec0056c52a6f39|/">1137090.part3.rar</a></span>
            <span>1000 MB</span>
        </li><li>
            <em class="checked"><input checked="checked" value="ed2k://|file|1137090.part4.rar|1048576000|29de47da9f8ba9df82b10bf35fd3834a|/" type="checkbox" name="fileck"></em>
            <span><a href="ed2k://|file|1137090.part4.rar|1048576000|29de47da9f8ba9df82b10bf35fd3834a|/">1137090.part4.rar</a></span>
            <span>1000 MB</span>
        </li><li>
            <em class="checked"><input checked="checked" value="ed2k://|file|1137090.part5.rar|283039314|913e6e72faa7b5e26a7e2b8097d26d2b|/" type="checkbox" name="fileck"></em>
            <span><a href="ed2k://|file|1137090.part5.rar|283039314|913e6e72faa7b5e26a7e2b8097d26d2b|/">1137090.part5.rar</a></span>
            <span>269.93 MB</span>
        </li></ul>
        <i></i>
        <div class="ed2k_footer">
            <em class="checked"><input id="allcheck" type="checkbox" checked="checked" onclick="eD2kCheckAll(\'fileck\',this.checked)"></em>
            <span>全选</span>
            <div class="down_link" onclick="downloadbtn('fileck',0,1)">下载选中的文件</div>
            <div class="copy_link" id="copys">复制选中的链接</div>
            <span class="showAll"></span>
        </div>
    </div>

        <font><a id="sharebtn" href="http://5566.yx7088.com/api/geturlbykey.html?key=三国志14,Romance Of Three Kingdom 14" target="_blank" class="gameDown down_share"><span></span>共享租号<div class="share_buy">立即租用</div><div style="width:80px;float:right;margin-left:30px;font-size:12px;color:#ffffff;">低至1元起</div></a></font>
        <p class="ts">我们强烈推荐您使用5566极速下载，在确保能下载成功的同时速度更快！</p>
    </div>
    <div class="footer">
        <div class="footer_content">
            <p>Copyright©2017 Soft5566.com 调琴信息技术有限公司 All rights reserved. ICP备17049294号</p>
        </div>
    </div>
</div>
<script type="text/javascript" src="/js/soft5566box_test.js"></script>
<script type="text/javascript" src="/js/ZeroClipboard.js"></script>
<script type="text/javascript" src="/js/ed2k.js"></script>
<script type="text/javascript">$(function(){init();});</script>
<div style="display:none;">
    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?a691ad76b4dc2220f2f87304bcc50695";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
</div>

<div style="position: absolute; left: 573px; top: 1069px; width: 124px; height: 35px; z-index: 9999;"><embed id="ZeroClipboardMovie$1" src="/js/ZeroClipboard.swf" loop="false" menu="false" quality="best" bgcolor="#ffffff" width="124" height="35" name="ZeroClipboardMovie$1" align="middle" allowscriptaccess="always" allowfullscreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" flashvars="id=1&amp;width=124&amp;height=35" wmode="transparent"></div></body>
</html>
