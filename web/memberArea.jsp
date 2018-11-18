<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: michael
  Date: 15.11.18
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Member Area</title>
</head>
<body>
Welcome
<%  String username=null, sessionID=null;
//    Cookie[] cookies = request.getCookies();
//    if (cookies != null) {
//        for (Cookie cookie: cookies) {
//            if (cookie.getName().equals("username")) username=cookie.getValue();
//            else if (cookie.getName().equals("JSESSIONID")) sessionID=cookie.getValue();
//        }
//        if (sessionID==null || username==null) response.sendRedirect("login1.jsp");
//    };
    if (request.getSession().getAttribute("username") == null) response.sendRedirect(request.getContextPath()+"/ServletSiteController?action=login");
    else {
        username = request.getSession().getAttribute("username").toString();
        sessionID = request.getSession().getId();
    }

%>
Username: <%= username%> <br>
Session: <%= sessionID%>
<form action="<%= request.getContextPath() %>/ServletMemberAriaController">
    <input type="hidden" name="action" value="destroy">
    <input type="submit" value="logout">
</form>


</body>
</html>
