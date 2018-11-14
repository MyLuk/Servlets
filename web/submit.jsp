<%--
  Created by IntelliJ IDEA.
  User: michael
  Date: 14.11.18
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Submit</title>
</head>
<body>
Name: <%= request.getParameter("name") %> <br>
Gender: <%= request.getParameter("gender") %> <br>
Languages: <%
    String[] languages = request.getParameterValues("Language");
    if(languages!=null) {
        for (String lang:languages
             ) {
            out.println("<br>");
            out.println(lang);
        }
    }
    else out.println("Not set");
%><br>
Country: <%= request.getParameter("country")%>
</body>
</html>
