<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: CCQ
  Date: 2019-3-30
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- InstanceBegin template="/Templates/muban.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>Result</title>
    <!-- InstanceEndEditable -->
    <link href="/styles/efg2.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/jquery.roundabout-1.0.min.js"></script>
    <script type="text/javascript" src="/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#featured-area ul').roundabout({
                easing: 'easeOutInCirc',
                duration: 600
            });
        });
    </script>

</head>

<body>
<div id="header">
    <div class="container">
        <a href="#"><img src="/images/logo33.png"/></a>
        <ul class="main-navigation">
            <li>
                <a href="/user/goToIndex.do" class="current">首页</a>
            </li>
            <li>
                <a href="/study/goToStudyWord.do">单词小课堂</a>
            </li>
            <li>
                <a href="/study/goToStudyWord.do">语法小课堂</a>
            </li>
            <li>
                <a href="/test/goToTestPage.do">随堂测试</a>
            </li>
            <li>
                <a href="/test/goToGradePage.do">成绩分析</a>
            </li>
            <li>
                <a href="/user/goToIndex.do">注销</a>
            </li>
        </ul>
    </div>
</div>

<div id="banner" style="padding-top:150px;">
    <div class="container">
        <br/><br/><br/>
        <div id="featured-area">
            <c:choose>
                <c:when test="${sessionScope.grade == 1}">
                    你的得分为${sessionScope.grade}
                </c:when>
                <c:when test="${sessionScope.grade == 2}">
                    你的得分为${sessionScope.grade}
                </c:when>
                <c:when test="${sessionScope.grade == 3}">
                    你的得分为${sessionScope.grade}
                </c:when>
                <c:when test="${sessionScope.grade == 4}">
                    你的得分为${sessionScope.grade}
                </c:when>
                <c:when test="${sessionScope.grade == 5}">
                    你的得分为${sessionScope.grade}
                </c:when>
                <c:when test="${sessionScope.grade == 6}">
                    你的得分为${sessionScope.grade}
                </c:when>
                <c:when test="${sessionScope.grade == 7}">
                    你的得分为${sessionScope.grade}
                </c:when> <c:when test="${sessionScope.grade == 8}">
                你的得分为${sessionScope.grade}
            </c:when> <c:when test="${sessionScope.grade == 9}">
                你的得分为${sessionScope.grade}
            </c:when> <c:when test="${sessionScope.grade == 10}">
                你的得分为${sessionScope.grade}
            </c:when>
                <c:when test="${sessionScope.grade == 0}">
                    你的得分为${sessionScope.grade}
                </c:when>
                <c:otherwise>
                    你还没有进行测试，请点击<a href="/test/goToTestPage.do">这里</a>进行测试
                </c:otherwise>
            </c:choose>
        </div>
        <br/><br/><br/>

    </div>
</div>

<div class="color-section">
    <div class="divider-sections">
        <div class="container">
            <div class="foot_con" style="">
                <div class="Aa" style="">
                    <a href="/user/goToIndex.do">首页</a> |
                    <a href="/study/goToStudyWord.do" >单词小课堂</a> |
                    <a href="/study/goToStudyGrammar.do" >语法小课堂</a> |
                    <a href="/test/goToTestPage.do" >随堂测试</a> |
                    <a href="/test/goToGradePage.do">成绩分析</a>
                </div>


                <p> Copyright&#169; 2010-2017 英语 &nbsp;&nbsp;&nbsp;Love </p>
                <p>@study English </p>
            </div>
        </div>

    </div>
</div>

</body>
<!-- InstanceEnd --></html>


