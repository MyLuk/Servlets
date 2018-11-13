<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: michael
  Date: 13.11.18
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--Declare -->
<%! public int x = 44;
    String mes(){
        return "Sis";
    }
%>
<!--expression -->
<%= x*22 %>
<br>
<%= new Date() %>
<br>
<%
    int t = 77;
    for (int i = 0; i < 10; i++) {
        out.println("<br>");
        out.println(t-i);
    }
    out.println(mes());

%>
</body>
</html>
