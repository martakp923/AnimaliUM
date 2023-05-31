<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Twoje dane</title>
    <link href="${pageContext.request.contextPath}/css/index/table.css" rel="stylesheet" type="text/css">
</head>
<body>
<a class="navbar-brand" href="/home">
    AnimaliUM
</a>
<h2>Dane użytkownika</h2>
<div class="wrapper">
    <table class="fl-table">
        <tr>
            <td>Imię</td>
            <td>${user.firstName}</td>
        </tr>
        <tr>
            <td>Nazwisko:</td>
            <td>${user.lastName}</td>
        </tr>
        <tr>
            <td>Login:</td>
            <td>${user.username}</td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>${user.email}</td>
        </tr>
    </table>
</div>

    <div class="text">
        <a href="/home/user/edit">Edytuj</a>
</div>
</body>
</html>
