<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: CCQ
  Date: 2019-3-30
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/muban.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>Test</title>
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
        alert("测试时间为3分钟。");
        var timeLen = 180;
        var timeTask = setInterval("showLeftTime()", 1000);

        function showLeftTime() {
            $("#timeInfo").html("倒计时(" + timeLen + "秒)");
            timeLen = timeLen - 1;
            if (timeLen < 0) {
                clearInterval(timeTask);
                alert("时间到!");
                $("#form1").submit();
            }
        }
    </script>
</head>

<body>
<div id="header">
    <div class="container">
        <a href="#" ><img src="/images/logo33.png" /></a>
        <ul class="main-navigation">
            <li>
                <a href="index.html" class="current">首页</a>
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

<div id="banner" style="padding-top:150px;">
    <div class="container">
        <br /><br /><br />
        <div id="featured-area">
            <span id="timeInfo" style="float: right;font-size: 24px;color: red"></span>
            <form id="form1" action="/test/getGrade.do" method="post">
           <table>
               <tr>
                   <td>题号</td><td>题目</td><td>答案</td>
               </tr>
               <tr>
                    <td>1</td><td><input type="text" name="q1" value="${sessionScope.en2ChList[0].en}" readonly="readonly"></td><td><input type="text" name="a1"></td>
                </tr>
               <tr>
                   <td>2</td><td><input type="text" name="q2" value="${sessionScope.en2ChList[1].en}"  readonly="readonly"></td><td><input type="text" name="a2"></td>
               </tr>
               <tr>
                   <td>3</td><td><input type="text" name="q3" value="${sessionScope.en2ChList[2].en}"  readonly="readonly"></td><td><input type="text" name="a3"></td>
               </tr>
               <tr>
                   <td>4</td><td><input type="text" name="q4" value="${sessionScope.en2ChList[3].en}"  readonly="readonly"></td><td><input type="text" name="a4"></td>
               </tr>
               <tr>
                   <td>5</td><td><input type="text" name="q5" value="${sessionScope.en2ChList[4].en}" readonly="readonly"></td><td><input type="text" name="a5"></td>
               </tr>
               <tr>
                   <td>6</td><td><input type="text" name="q6" value="${sessionScope.en2ChList[5].en}" readonly="readonly"></td><td><input type="text" name="a6"></td>
               </tr>
               <tr>
                   <td>7</td><td><input type="text" name="q7" value="${sessionScope.en2ChList[6].en}" readonly="readonly"></td><td><input type="text" name="a7"></td>
               </tr>
               <tr>
                   <td>8</td><td><input type="text" name="q8" value="${sessionScope.en2ChList[7].en}" readonly="readonly"></td><td><input type="text" name="a8"></td>
               </tr>
               <tr>
                   <td>9</td><td><input type="text" name="q9" value="${sessionScope.en2ChList[8].en}" readonly="readonly"></td><td><input type="text" name="a9"></td>
               </tr>
               <tr>
                   <td>10</td><td><input type="text" name="q10" value="${sessionScope.en2ChList[9].en}" readonly="readonly"></td><td><input type="text" name="a10"></td>
               </tr>
           </table>
                <button type="submit">提交答案</button>
            </form>
        </div>
        <br /><br /><br />
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
<!-- InstanceEnd --></html>
