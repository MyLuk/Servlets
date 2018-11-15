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
    <title>Set property</title>
</head>
<body>
<jsp:useBean id="user" class="org.myluk.beans.User" scope="session"/>
<%--First name: <jsp:getProperty name="user" property="firstName"/><br>
Last name: <jsp:getProperty name="user" property="lastName"/><br>

<jsp:setProperty name="user" property="firstName" value="Nikola"/>
<jsp:setProperty name="user" property="lastName" value="Ivanov"/>
Properties have been set<br>
<%
    request.getRequestDispatcher("getProperty.jsp").forward(request, response);
%> --%>
<form action="getProperty.jsp" method="post">
    First name: <input name="firstName" type="text" value='<jsp:getProperty name="user" property="firstName"/>'><br>
    Last name: <input name="lastName" type="text" value='<jsp:getProperty name="user" property="lastName"/>'><br>
    <input type="submit">
</form>
</body>
</html>
