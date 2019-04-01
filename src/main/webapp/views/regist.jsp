<%--
  Created by IntelliJ IDEA.
  User: CCQ
  Date: 2019-3-29
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="/styles/efg2.css" type="text/css" rel="stylesheet">
    <title>Regist</title>
</head>
<body>
     <script>
         function regist() {
             document.getElementById("regist").submit();
         }

     </script>

<div id="banner2">
    <div id="banner1-left">
        <div id="banner1-left-txt">
            <p>学习是一种享受，更是一种生活...</p>
        </div>
    </div>

    <div id="banner1-right" >
        <h2>Regist</h2>
        <form id="regist" action="/user/regist.do" method="post">
            <ul>
                <li>用户名:<br/><br/><input type="text" id="userName" name="userName" class="txt"> <hr><br/></li>
                <li>密&nbsp;&nbsp;&nbsp;码:<br/><br/><input type="password" id="password" name="password" class="txt" > <hr><br/><br/></li>
                <li>手&nbsp;&nbsp;&nbsp;机&nbsp;&nbsp;&nbsp;号:<br/><br/><input type="phone" id="telPhone" name="telPhone" class="txt" > <hr><br/><br/></li>
                <li><a class="regist_btn" onclick="regist()"></a></li>
            </ul>
        </form>
    </div>
</div>
</body>
</html>
