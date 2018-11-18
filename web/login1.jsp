<%--
  Created by IntelliJ IDEA.
  User: michael
  Date: 15.11.18
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="<%= request.getContextPath()%>/ServletSiteController" method="post">
    Username: <input type="text" name="username"><br>
    Password: <input type="password" name="password"><br>
    <input type="hidden" name="action" value="loginSubmit">
    <input type="submit" value="Submit">
</form>
</body>
</html>
