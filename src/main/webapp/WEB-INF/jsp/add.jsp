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
    <title>添加用户</title>
    <form action="/user/add" method="post">
        <div class="form-group">
            <label >用户ID:</label>
            <input type="text" class="form-control" name="userid" >
        </div>
        <div class="form-group">
            <label >用户名:</label>
            <input type="text" class="form-control" name="username" >
        </div>
        <div class="form-group">
            <label >密码:</label>
            <input type="password" class="form-control" name="password"  placeholder="Password">
        </div>

        <button type="submit" class="btn btn-default">Submit</button>
    </form>
</head>
<body>

</body>
</html>
