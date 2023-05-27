<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Zarejestruj sie do AnimaliUM!</title>
</head>
<body>
<h2>Formularz rejestracji</h2>
<form:form method="post" action="/register" modelAttribute="user" >

    <label for="firstName">Podaj imię:</label>
    <form:input path="firstName" id="firstName"/><br>
    <form:errors path="firstName"/><br>

    <label for="lastName">Podaj nazwisko:</label>
    <form:input path="lastName" id="lastName"/><br>
    <form:errors path="lastName"/><br>

    <label for="userName">Podaj nazwę użytkownika:</label>
    <form:input path="username" id="userName"/><br>
    <form:errors path="username"/><br>

    <label for="email">Podaj adres e-mail:</label>
    <form:input path="email" id="email"/><br>
    <form:errors path="email"/><br>

    <label for="organization">Podaj nazwę organizacji:</label>
    <form:input path="organization" id="organization"/><br>
    <form:errors path="organization"/><br>

    <label for="password">Podaj hasło:</label>
    <form:input type="password" path="password" id="password"/><br>
    <form:errors path="password"/><br>

    <label for="confirmPassword">Potwierdź hasło:</label>
    <form:input type="password" path="confirmPassword" id="confirmPassword"/><br>
    <form:errors path="confirmPassword"/><br>

    <button type="submit"> Zarejestruj mnie! </button>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

</form:form>

</body>
</html>
