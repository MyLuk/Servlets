<%--
  Created by IntelliJ IDEA.
  User: michael
  Date: 13.11.18
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Home</title>
  </head>
  <body>
  Home page<br>
  <%--<a href="<%= request.getContextPath() %>/Controller?page=login">Login</a>--%>
  <%--<a href="<%= request.getContextPath() %>/Controller?page=signup">SignUp</a>--%>
  <%--<a href="<%= request.getContextPath() %>/Controller?page=about">About</a><br>--%>
  <a href="<%= request.getContextPath()%>/ServletSiteController?action=login">Login</a>
  <a href="JSTLDEMO.jsp">JSTL</a>
  </body>
</html>
