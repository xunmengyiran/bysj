<%--
  Created by IntelliJ IDEA.
  User: CCQ
  Date: 2019-3-30
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Grammar</title>
    <link href="/styles/efg2.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/jquery.roundabout-1.0.min.js"></script>
    <script type="text/javascript" src="/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $('#featured-area ul').roundabout({
                easing: 'easeOutInCirc',
                duration: 600
            });
        });
        function translateValue() {
            var inputValue = $("#inputValue").val();
            $.ajax({
                type: "POST",
                url: "/study/tanslate.do",
                data: {
                    inputValue: inputValue,
                    type: '2'
                },
                dataType: 'json',
                success: function (data) {
                    $("#translateValue").val(data.result);
                },
                error: function () {
                    alert("网络错误!")
                }
            });
        }
    </script>
</head>

<body>
<div id="header">
    <div class="container">
        <a href="#" ><img src="/images/logo33.png" /></a>
        <ul class="main-navigation">
            <li>
                <a href="/user/goToIndex.do" class="current">首页</a>
            </li>
            <li>
                <a href="/study/goToStudyWord.do">单词小课堂</a>
            </li>
            <li>
                <a href=/study/goToStudyGrammar.do>语法小课堂</a>
            </li>
            <li>
                <a href="/test/goToTestPage.do">随堂测试</a>
            </li>
            <li>
                <a href="/test/getGrade.do">成绩分析</a>
            </li>
            <li >
                <a href="/user/logOut.do">注销</a>
            </li>
        </ul>
    </div>
</div>

<div id="banner" style="padding-top:150px;">
    <div class="container">
        <br /><br /><br />
        <div id="featured-area">
            <ul>
                <li><a href="#"><span>tense</span><img src="/images/34.jpg"  /></a></li>
                <li><a href="#"><span>inversion</span><img src="/images/31.jpg" /></a></li>
                <li><a href="#"><span>virtual</span><img src="/images/piano.jpg" /></a></li>
            </ul>
        </div>
        <br /><br /><br />

    </div>
</div>



<div id="portfolio" style="height:400px">
    <div class="divider-sections">
        <div class="container" >
            <div id="top">
                <a href="#"><h2>Syntax small classroom</h2></a>
                <p>The so-called grammar is the study of grammar in English... </p>
            </div>

        </div>
        <div class="container1">
            <div class="input-group1">
                <input type="text" class="form-control2" placeholder="请输入检索关键字" id="inputValue">
                <span class="input-group-btn">
                    <button class="btn-primary" onclick="translateValue()">搜索</button>
                </span>
            </div>

            <div class="fanyi1">

                <input type="text" class="form-control3" placeholder="" id="translateValue">
            </div>

        </div>
    </div>
</div>

<div class="color-section" >
    <div class="divider-sections">
        <div class="container" >
            <div class="foot_con" style="">
                <div class="Aa" style="">
                    <a href="/user/goToIndex.do">首页</a> |
                    <a href="/study/goToStudyWord.do" >单词小课堂</a> |
                    <a href="/study/goToStudyGrammar.do" >语法小课堂</a> |
                    <a href="/test/goToTestPage.do" >随堂测试</a> |
                    <a href="/test/goToGradePage.do">成绩分析</a>
                </div>


                <p> Copyright&#169; 2010-2017  英语 &nbsp;&nbsp;&nbsp;Love </p>
                <p>@study  English </p>
            </div>
        </div>
    </div>
</div>

</body>
</html>

