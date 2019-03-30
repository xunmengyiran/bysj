<%--
  Created by IntelliJ IDEA.
  User: CCQ
  Date: 2019-3-28
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="/styles/efg2.css" type="text/css" rel="stylesheet">
    <title>Login</title>
</head>
<body>
  <script>
      function login() {
          console.log("eeeeeeeeeeeeee");
          console.log(document.getElementById("login").action);
          document.getElementById("login").submit();
      }
  </script>
<div id="banner1">
    <div id="banner1-left">
        <div id="banner1-left-txt">
            <p>学习是一种享受，更是一种生活...</p>
        </div>
    </div>
    <div id="banner1-right" >
        <h2>Login</h2>
        <form id="login" action="/user/login.do" method="post">
            <ul>
                <li>用户名:<br/><br/><input type="text" id="userName" name="userName" class="txt"> <hr><br/></li>
                <li>密&nbsp;&nbsp;&nbsp;码:<br/><br/><input type="password"  id="password" name="password" class="txt" > <hr><br/><br/></li>
                <li><a class="login_btn" onclick="login()" ></a></li>
            </ul>
        </form>
    </div>
</div>

</body>
</html>
