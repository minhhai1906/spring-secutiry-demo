<%--
  Created by IntelliJ IDEA.
  User: MinhHai
  Date: 10/03/2022
  Time: 00:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Custom Login Form</title>
</head>
<body>
    <h3>My Custom Page</h3>
    <form:form action="${pageContext.request.contextPath}/authenticateUser" method="POST">
        <div>User Name: <input type="text" name="username"></div>
        <div>Password: <input type="password" name="password"></div>
        <input type="submit" value="Login">
    </form:form>

</body>
</html>
