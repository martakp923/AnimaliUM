<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Data</th>
            <th>Lokalizacja</th>
            <th>Akcje</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${interventions}" var="intervention">
            <tr>
                <td>${intervention.id}</td>
                <td>${intervention.date}</td>
                <td>${intervention.location}</td>
                <td class="col-2 d-flex align-items-center justify-content-center flex-wrap">
                    <a href="/home/intervention/details?id=${intervention.id}"
                       class="btn btn-info rounded-0 text-light m-1">Szczegóły</a>
                    <a href="/home/intervention/edit?id=${intervention.id}"
                       class="btn btn-info rounded-0 text-light m-1">Edytuj</a>
                    <a href="/home/intervention/delete?id=${intervention.id}"
                          class="btn btn-info rounded-0 text-light m-1">Usuń</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
