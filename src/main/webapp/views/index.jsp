<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: CCQ
  Date: 2019-3-15
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>首页</title>
    <link href="/styles/efg.css" type="text/css" rel="stylesheet">
    <script language="javascript" type="text/javascript" src="/js/jquery.pack.js"></script>
</head>

<body>
<!--------------------------------------------------header-------------------------------------------------------------->
<div id="header" class="clearfix">
    <div id="logo">
        <img src="/images/logo33.png" usemap="#Map" border="0" />
        <map name="Map" id="Map">
            <area shape="rect" coords="22,18,55,48" href="#" />
        </map>
    </div>
    <div id="navigate">
        <c:if test="${sessionScope.user==null}">
        <p><a href="/user/goToLogin.do">登录</a>| <a href="/user/goToRegist.do">注册</a></p>
        </c:if>
        <c:if test="${sessionScope.user!=null}">
            <%--todo--%>
            <p><a href="/user/goToLogin.do">${sessionScope.user.userName}</a>|<a href="/user/logOut.do">注销</a></p>

        </c:if>
    </div>
    <div id="botton">
        <a href="#">我们不断学习，是为了体验一百万种其他不一样的人生!</a>
    </div>
</div>


<!--------------------------------------------------导航条-------------------------------------------------------------->
<div id="MutiNav">
    <div id="nav" >
        <ul class="multiUl">
            <li><a class="go" href="#">首&nbsp;&nbsp;页</a></li><li >|</li>
            <li><a class="go" href="Word.html" >单&nbsp;&nbsp;词&nbsp;&nbsp;小&nbsp;&nbsp;课&nbsp;&nbsp;堂</a>
                <blockquote>
                    <div class="ChildNavIn">
                        <a  href="#">我&nbsp;&nbsp;的&nbsp;&nbsp;词&nbsp;&nbsp;书</a>
                        <a  href="#">推&nbsp;&nbsp;荐&nbsp;&nbsp;词&nbsp;&nbsp;书</a>
                        <a  href="#">陌&nbsp;&nbsp;生&nbsp;&nbsp;词&nbsp;&nbsp;本</a>
                    </div>
                </blockquote>
            </li>
            <li >|</li>
            <li><a class="go" href="Grammar.html" >语&nbsp;&nbsp;法&nbsp;&nbsp;小&nbsp;&nbsp;课&nbsp;&nbsp;堂</a>
                <blockquote>
                    <div class="ChildNavIn">
                        <a  href="#">语&nbsp;&nbsp;法&nbsp;&nbsp;翻&nbsp;&nbsp;译</a>
                        <a  href="#">语&nbsp;&nbsp;法&nbsp;&nbsp;阅&nbsp;&nbsp;读</a>
                    </div>
                </blockquote>
            </li>
            <li >|</li>
            <li><a class="go" href="Test.html" >随&nbsp;&nbsp;堂&nbsp;&nbsp;测&nbsp;&nbsp;试</a>
                <blockquote>
                    <div class="ChildNavIn">
                        <a href="#">开&nbsp;&nbsp;始&nbsp;&nbsp;闯&nbsp;&nbsp;关</a>
                        <a href="#">我&nbsp;&nbsp;再&nbsp;&nbsp;看&nbsp;&nbsp;看</a>
                    </div>
                </blockquote>
            </li>
            <li >|</li>
            <li><a class="go" href="Result.html" >成&nbsp;&nbsp;绩&nbsp;&nbsp;分&nbsp;&nbsp;析</a></li>
        </ul>
        <script type="text/javascript">

            var mst;
            jQuery(".multiUl li").hover(function(){
                var curItem = jQuery(this);
                mst = setTimeout(function(){//延时触发
                    curItem.find("blockquote").slideDown('fast');
                    mst = null;
                });
            }, function(){
                if(mst!=null)clearTimeout(mst);
                jQuery(this).find("blockquote").slideUp('fast');
            });

        </script>
    </div>
    <!--------------------------------------------------banner-------------------------------------------------------------->
</div>
<div id="slider-wrapper" class="index_post ption_r">
    <div id="slider" class="nivoSlider">
        <img src="/images/B2.PNG" >
        <img src="/images/B3.PNG" >
        <img src="/images/B5.PNG" >
    </div>
</div>

<script src="/js/load.js" type="text/javascript"></script>
<script src="/js/jquery.nivo.slider.js" type="text/javascript"></script>
<script type="text/javascript" >
    $(window).load(function() {
        $('#slider').nivoSlider({
            controlNav:false,
            effect:'random',
            animSpeed:500,
            captionOpacity:0.9,
            directionNav:true,
            controlNav:true,
            pauseTime:3000,
            directionNavHide: true,
            pauseOnHover:true
        });
    });
</script>

</div>

<!--------------------------------------------------content-------------------------------------------------------------->
<div id="content"  class="clearfix">
    <div id="content_left">
        <img src="/images/4-1.jpg"/ >
        <div id="top">
            <img src="/images/Ba.PNG" usemap="#Map2" border="0"/>
            <map name="Map2" id="Map2">
                <area shape="rect" coords="36,50,149,111" href="#" />
            </map>
            <div class="text" >
                <span><a href="#">Failure is the fog through whitch we glimpse triumph...</a></span>
                <p>失败是一团迷雾，穿过它，我们可以瞥见胜利...</p>
            </div>
        </div>
        <div id="middle">
            <div class="aaa">
                <img src="/images/Bc.PNG"/></div>
            <div class="text">
                <span><a href="#">It takes a great deal of bravery to stand up to your enemies,but a great deal more to stand up to your friends...</a></span>
                <p>面对敌人需要勇气，但敢于直面朋友，需要更大的勇气...</p>
            </div>
        </div>
        <div id="xia">
            <div class="bbb">
                <img src="/images/Bd.PNG"/></div>
            <div class="text1">
                <span><a href="#">Sometimes it takes going through something so awfu to realize the beauty that is out there in this world... </a></span>
                <p>有时候就是要经历一些糟糕的事情才能意识到世间存在的美丽... </p>
            </div>
        </div>


    </div>

    <div id="rcon">

        <ul class="sudi">
            <li><a href="#">Guess   Riddle</a></li>
            <li><a href="#">Chinese string up puzzle</a></li>
            <li><a href="#">Stories  Magazine  </a></li>
            <li><a href="#">Game  Kingdom</a></li>
            <li><a href="#">Drama  Performance</a></li>
            <li><a href="#">A Twilight Concert of Carols and Classics</a></li>
            <li><a href="#">Movie Dubbing</a></li>
        </ul>
    </div>

    <!--   <div id="content_right1">

          <ul class="tool">
            <li class="l1"><a href="#">Friends</a></li>
            <li class="l2"><a href="#">Clock</a></li>
            <li class="l3"><a href="#">Food Pike</a></li>
            <li class="l4"><a href="#">Food Bank</a></li>
            <li class="l5"><a href="#">Story</a></li>
            <li class="l6"><a href="#">Good Life</a></li>
        </ul>

    </div> -->


    <div id="content_right2">
        <img src="/images/flower.png" />
        <p> Take a deep breath , and don't be surprised...</p>
    </div>


</div>

<!--------------------------------------------------footer-------------------------------------------------------------->
<div id="footer" >
    <div class="color-section">
        <div class="foot_con" style="height:150px">
            <a href="#">首页</a> |
            <a href="#" >单词小课堂</a> |
            <a href="#" >语法小课堂</a> |
            <a href="#" >随堂测试</a> |
            <a href="#">成绩分析</a>
            <p> Copyright&#169; 2010-2017  英语 &nbsp;&nbsp;&nbsp;Love </p>
            <p>@study  English </p>
        </div>
    </div>
</div>
<script type="text/javascript" src="/js/TweenMax.min.js"></script>
<script src="/js/interaction.js"></script>
</body>
</html>
