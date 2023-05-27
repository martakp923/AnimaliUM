<%--
  Created by IntelliJ IDEA.
  User: marta
  Date: 26.05.2023
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Login</title>

</head>
<body>
<form:form method="post" action="/login" modelAttribute="user">

    <label for="email">Podaj adres email</label>
    <form:input path="email" id="email"/><br>
    <form:errors path="email" cssClass="error"/><br>

    <label for="password">Podaj hasło</label>
    <form:input path="password" id="password" type="Password"/><br>
    <form:errors path="password" cssClass="error"/><br>

    <button class="custom-button" type="submit">Zaloguj się</button>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

    <br>

    <div>
        <a href="/register">Nie posiadasz konta? Zarejestruj się</a>
    </div>


</form:form>

</body>
</html>