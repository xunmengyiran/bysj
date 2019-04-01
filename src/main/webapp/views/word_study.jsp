<%--
  Created by IntelliJ IDEA.
  User: CCQ
  Date: 2019-3-30
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/muban.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>Word</title>
    <!-- InstanceEndEditable -->
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
                    type: '1'
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
                <a href="/study/goToStudyGrammar.do">语法小课堂</a>
            </li>
            <li>
                <a href="/test/goToTestPage.do">随堂测试</a>
            </li>
            <li>
                <a href="/test/goToGradePage.do">成绩分析</a>
            </li>
            <li >
                <a href="/user/logOut.do">注销</a>
            </li>
        </ul>
    </div>
</div>

<div id="banner" style="padding-top:100px;">
    <div class="container">
        <br /><br /><br />
        <div id="featured-area">
            <ul>
                <!-- InstanceBeginEditable name="EditRegion2" -->
                <li><a href="#"><span>Yoga</span><img src="/images/b2.jpg"  /></a></li>
                <li><a href="#"><span>Golf</span><img src="/images/goerfu.jpg"/></a></li>
                <li><a href="#"><span>Runing</span><img src="/images/6-1.jpeg" /></a></li>
                <!-- InstanceEndEditable -->
            </ul>
        </div>
        <br /><br /><br />

    </div>
</div>

<!-- <div class="input-wrap" style="height:auto;" dir="ltr">
  <a href="" class="textarea-clear-btn" title="清空" style="display:inline;float:right;margin:0px 0px 0px 10px;"></a>
  <div class="doc-trans-file"></div>
  <div class="textarea-wrap without-textarea-bg" style="height:70px;padding-bottom:14px">
    <div class="textarea-bg">
      <span class="prompt-text">输入文字</span>
    </div>
    <div class="textarea-bg-text" id="textarea-bg-text"></div>
    <textarea class="textarea" id="baidu_translate_input" data-height="70" style="height:70px; overflow:hidden;"></textarea>
  </div>
  <ul class="sug-wrp" id="sug-wrp" style="display:none;"></ul>
</div> -->

<div id="portfolio" style="height:50px">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="请输入检索关键字" id="inputValue">
                    <span class="input-group-btn">
                    <button class="btn-primary" onclick="translateValue()">搜索</button>
                </span>
                </div>
            </div>
        </div>
    </div>
    <div class="fanyi">

        <input type="text" class="form-control1" placeholder="" id="translateValue">
    </div>

</div>



<div class="color-section" >
    <div class="divider-sections">
        <div class="container" >
            <div class="foot_con" style="height:150px">
                <a href="/user/goToIndex.do">首页</a> |
                <a href="/study/goToStudyWord.do" >单词小课堂</a> |
                <a href="/study/goToStudyGrammar.do" >语法小课堂</a> |
                <a href="/test/goToTestPage.do" >随堂测试</a> |
                <a href="/test/goToGradePage.do">成绩分析</a>

                <p> Copyright&#169; 2010-2017  英语 &nbsp;&nbsp;&nbsp;Love </p>
                <p>@study  English </p>
            </div>
        </div>

    </div>
</div>

</body>
<!-- InstanceEnd --></html>

