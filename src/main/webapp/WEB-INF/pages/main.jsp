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
        后台系统
    </title>
</head>
<body>
<li>
    您好:${USER_SESSION.username}
</li>
<li>
    <a href="${pageContext.request.contextPath}/logout">
        退出
    </a>
</li>
<li>
    <a href="${pageContext.request.contextPath}/orderInfo">
        详细信息
    </a>
</li>
</body>
</html>
