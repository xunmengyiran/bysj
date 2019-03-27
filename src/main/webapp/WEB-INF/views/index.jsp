<%--
  Created by IntelliJ IDEA.
  User: CCQ
  Date: 2019-3-15
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录模板</title>

    <link href="/css/main.css" rel="stylesheet" type="text/css" />

</head>
<body>

<div class="login">
    <div class="box png">
        <div class="logo png"></div>
        <div class="input">
            <div class="log">
                <div class="name">
                    <label>用户名</label><input type="text" class="text" id="value_1" placeholder="用户名" name="value_1" tabindex="1">
                </div>
                <div class="pwd">
                    <label>密　码</label><input type="password" class="text" id="value_2" placeholder="密码" name="value_2" tabindex="2">
                    <input type="button" class="submit" tabindex="3" value="登录">
                    <div class="check"></div>
                </div>
                <div class="tip"></div>
            </div>
        </div>
    </div>
    <div class="air-balloon ab-1 png"></div>
    <div class="air-balloon ab-2 png"></div>
    <div class="footer"></div>
</div>

<script type="text/javascript" src="js/jQuery.js"></script>
<script type="text/javascript" src="js/fun.base.js"></script>
<script type="text/javascript" src="js/script.js"></script>

</body>
</html>