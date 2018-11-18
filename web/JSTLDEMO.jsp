<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mikhail
  Date: 18.11.18
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="name" value="Misha"/>
${name}
${param.msq}
<jsp:useBean id="user" class="org.myluk.beans.User" scope="page"/>
${user.firstName}
<c:if test="${param.user=='Misha'}">
    Hello Mishanya
</c:if>
<c:catch var="exc">
    <%
        int x=20/0;
    %>
</c:catch>
${exc.message}
</body>
</html>
