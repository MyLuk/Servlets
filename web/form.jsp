<%--
  Created by IntelliJ IDEA.
  User: michael
  Date: 14.11.18
  Time: 18:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form demo</title>
</head>
<body>
<%--when reference to jsp <form action="submit.jsp" method="post">--%>
<form action="<%=request.getContextPath()%>/ServletController1" method="post">
    Full name<input type="text" name="name" required/><br/>
    Gender: <input type="radio" name="gender" value="male" checked="checked"> Male
            <input type="radio" name="gender" value="female"> Female <br/>
    Languages known: <input type="checkbox" name="Language" value="English"> English
                    <input type="checkbox" name="Language" value="Russian"> Russian
                    <input type="checkbox" name="Language" value="German"> German <br/>
    Country: <select name="country">
                <option value="India"> India </option>
                <option value="Russia"> Russia </option>
                <option value="USA"> USA </option>
                <option value="Germany"> Germany </option>
            </select><br/>
            <input type="submit" value="Submit">

</form>

</body>
</html>
