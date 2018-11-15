<%--
  Created by IntelliJ IDEA.
  User: michael
  Date: 15.11.18
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get property</title>
</head>
<body>
<jsp:useBean id="user" class="org.myluk.beans.User" scope="session"/>
<jsp:setProperty name="user" property="*"/>
First name: <jsp:getProperty name="user" property="firstName"/><br>
Last name: <jsp:getProperty name="user" property="lastName"/>
</body>
</html>
