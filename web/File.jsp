<%--
  Created by IntelliJ IDEA.
  User: michael
  Date: 13.11.18
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--for adding static content -->
<%@include file="file.txt"%>
<br>
<!--for adding dynamic content -->
<jsp:include page="file2.txt"/>

<%@ page import="java.util.Date,org.myluk.servelts.UserClass" %>
<%
    out.println(new Date(  ));
%>
<br>

<%= new UserClass().demo()%>
</body>
</html>
