<%--
  Created by IntelliJ IDEA.
  User: MinhHai
  Date: 09/03/2022
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Spring Security</title>
</head>
<body>
    <h2>Hello World from Spring Security</h2>
    <p>User: <security:authentication property="principal.username" /></p>
    <p>Role(s): <security:authentication property="principal.authorities" /></p>
    <hr>

    <security:authorize access="hasRole('MANAGER')">
        <p>
            <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
            (Only for Manager people)
        </p>
    </security:authorize>

    <security:authorize access="hasRole('ADMIN')">
        <p>
            <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
            (Only for Admin people)
        </p>
    </security:authorize>

    <div>
        <form:form action="${pageContext.request.contextPath}/logout" method="POST">
            <input type="submit" value="Logout">
        </form:form>
    </div>
</body>
</html>
