<%--
  Created by IntelliJ IDEA.
  User: MinhHai
  Date: 10/03/2022
  Time: 00:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Custom Login Form</title>
    <style>
        .failed {
            color: red;
        }
    </style>
</head>
<body>
    <h3>My Custom Page</h3>
    <form:form action="${pageContext.request.contextPath}/authenticateUser" method="POST">
        <c:if test="${param.error != null}">
            <i class="failed">Sorry, you just entered invalid username or password</i>
        </c:if>
        <div>User Name: <input type="text" name="username"></div>
        <div>Password: <input type="password" name="password"></div>
        <input type="submit" value="Login">
    </form:form>

</body>
</html>
