<%--
  Created by IntelliJ IDEA.
  User: wqt19
  Date: 2023/12/12
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        用户登录
    </title>
</head>
<body>
<form action="${pageContext.request.contextPath}/login" method="post">
    <div>${msg}</div>
    用户名：
    <label>
        <input type="text" name="username">
    </label>
    密码：
    <label>
        <input type="text" name="password">
    </label>
    <input type="submit" value="登录">
</form>
</body>
</html>
