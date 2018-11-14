<%--
  Created by IntelliJ IDEA.
  User: michael
  Date: 14.11.18
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DemoRedit</title>
</head>
<body>
It's from original page
<%-- <jsp:forward page="forward.jsp"/> --%>
<%
//request.getRequestDispatcher("forward.jsp").forward(request, response);
    response.sendRedirect("redirect.jsp");
%>


</body>
</html>
