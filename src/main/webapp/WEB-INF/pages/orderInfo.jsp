<%--
  Created by IntelliJ IDEA.
  User: wqt19
  Date: 2023/12/12
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        订单信息
    </title>
</head>
<body>
您好：${USER_SESSION.username}
<a href="${pageContext.request.contextPath}/logout">
    退出
</a>
<table border="1" width="80%">
    <tr align="center">
        <td colspan="2">
            订单id：D001
        </td>
    </tr>
    <tr align="center">
        <td>
            商品 ID
        </td>
        <td>
            商品名称
        </td>
    </tr>
    <tr align="center">
        <td>
            P001
        </td>
        <td>
            三文鱼
        </td>
    </tr>
    <tr align="center">
        <td>
            P002
        </td>
        <td>
            红牛
        </td>
    </tr>
</table>
</body>
</html>
