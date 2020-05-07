<%--
  Created by IntelliJ IDEA.
  User: 鹏鹏
  Date: 2020/5/6
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改</title>
    <form action="/user/update" method="post">
        <div class="form-group">
            <input type="hidden" class="form-control" value="${user.userid}" name="userid" >
        </div>
        <div class="form-group">
            <label >用户名:</label>
            <input type="text" class="form-control" value="${user.username}" name="username" >
        </div>
        <div class="form-group">
            <label >密码:</label>
            <input type="password" class="form-control" value="${user.password}" name="password"  placeholder="Password">
        </div>

        <button type="submit" class="btn btn-default">Submit</button>
    </form>
</head>
<body>

</body>
</html>
