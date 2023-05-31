<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Szczegóły</title>
    <link href="${pageContext.request.contextPath}/css/index/table.css" rel="stylesheet" type="text/css">
</head>
<body>
<a class="navbar-brand" href="/home">
    AnimaliUM
</a>
<h2>Zarejestrowane zwierzęta</h2>
<div class="wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Gatunek</th>
            <th>Maść</th>
            <th>Numer microchipa</th>
            <th>Płeć</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${animal.id}</td>
            <td>${animal.species}</td>
            <td>${animal.colour}</td>
            <td>${animal.microchip}</td>
            <td>${animal.gender}</td>
            <td>${animal.status}</td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
