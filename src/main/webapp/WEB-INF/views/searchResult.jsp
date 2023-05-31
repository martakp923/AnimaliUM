<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wyniki wyszukiwania</title>
    <link href="${pageContext.request.contextPath}/css/index/form.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="wrapper">
    <c:if test="${animalFound}">
        <h2>Znaleziono zwierzę!</h2>
        <p>Numer chipa: ${animal.microchip}</p>
        <p>Gatunek: ${animal.species}</p>
        <p>Maść: ${animal.colour}</p>
        <p>Płeć: ${animal.gender}</p>
        <p>Podjęte działania: ${animal.intervention.result}</p>
    </c:if>
    <c:if test="${!animalFound}">
        <h2>Nie znaleziono w bazie</h2>
    </c:if>
    <a class="navbar-brand" href="/search">
            <span>
              Wróć do wyszukiwania
            </span>
    </a>
    <div class="text">
        <a href="/home">Wróć do strony głównej</a>
    </div>
</div>
</body>
</html>
<html>
