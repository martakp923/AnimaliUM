<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="${pageContext.request.contextPath}/css/index/form.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="wrapper">
    <h2>Logowanie</h2>
    <form:form method="post" action="/login" modelAttribute="user">
        <div class="input-box">
            <label for="username">Podaj nazwę użytkownika</label>
            <form:input path="username" id="username"/><br>
            <form:errors path="username"/><br>
        </div>
        <div class="input-box">
            <label for="password">Podaj hasło</label>
            <form:input path="password" id="password" type="password"/><br>
            <form:errors path="password" type="password"/><br>
        </div>
        <div class="input-box button">
            <button class="custom-button" type="submit">Zaloguj się</button>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </div>
        <div class="text">
            <a href="/register">Nie posiadasz konta? Zarejestruj się</a>
        </div>
    </form:form>
</div>
</body>
</html>
<html>
