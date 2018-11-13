<%--
  Created by IntelliJ IDEA.
  User: michael
  Date: 13.11.18
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    out.println("value is "+request.getParameter("value"));
    out.println("value1 = "+request.getParameter("value1"));
%>
</body>
</html>
