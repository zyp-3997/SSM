<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/29
  Time: 0:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <h2>SSH整合测试</h2>
   <h3><a href="/user/findAll">查询所有用户</a></h3>
   <h3><a href="/user/toAdd">添加用户</a></h3>
    <h3><font color="red"> ${error}</font></h3>
    <form action="/user/findById" method="post">

        <div class="form-group">
            <label >按照ID查询用户:</label>
            <input type="text" class="form-control"  name="userid" >
            <button type="submit" class="btn btn-default">查询</button>
        </div>

    </form>





</body>
</html>
