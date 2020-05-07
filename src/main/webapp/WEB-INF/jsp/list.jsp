<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 鹏鹏
  Date: 2020/5/6
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询所有用户</title>
</head>
<body>
<table border="1">
    <h3>展示所有用户信息</h3>
<tr>
    <td>用户ID</td>
    <td>用户名</td>
    <td>密码</td>
    <td>操作</td>
</tr>
<c:forEach items="${list}" var="user">
    <tr>
        <td>${user.userid}</td>
        <td>${user.username}</td>
        <td>${user.password}</td>
        <td>
            <a href="${pageContext.request.contextPath}/user/toUpdate?userid=${user.userid}" >修改</a>
            |&nbsp;|&nbsp;
            <a href="/user/delete/${user.userid}" >删除</a>
        </td>
    </tr>
</c:forEach>
</table>
</body>
</html>
