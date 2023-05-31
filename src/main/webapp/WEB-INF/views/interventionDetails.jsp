<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wszystkie interwencje</title>
    <link href="${pageContext.request.contextPath}/css/index/table.css" rel="stylesheet" type="text/css">
</head>
<body>
<a class="navbar-brand" href="/home">
    AnimaliUM
</a>
<h2>Zdarzenia z udziałem zwierząt</h2>
<div class="wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Data</th>
            <th>Lokalizacja</th>
            <th>Opis</th>
            <th>Podjęte czynności</th>
            <th>Gatunki zwierząt</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${intervention.id}</td>
            <td>${intervention.date}</td>
            <td>${intervention.location}</td>
            <td>${intervention.description}</td>
            <td>${intervention.result}</td>
            <td>
                <c:forEach items="${intervention.animals}" var="animal">
                    ${animal.species}<br>
                    <a href='<c:out value="/home/animal/details?id=${animal.id}"/>' class="btn-2">Szczegóły</a><br>
                </c:forEach>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
