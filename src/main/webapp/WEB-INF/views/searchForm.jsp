<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wyszukiwarka zwierząt</title>
    <link href="${pageContext.request.contextPath}/css/index/form.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/index/style.css" rel="stylesheet" type="text/css">
</head>

<body>
<div class="wrapper">
    <h2>Znajdź swojego pupila </h2>
    <form:form method="POST" action="/search" modelAttribute="animal">
    <div class="input-box">
        <label for="microchip">Numer chipa:</label>
        <form:input path="microchip" id="microchip"/>
        <form:errors path="microchip" cssClass="error"/>
        <br>
    </div>
    <div class="input-box button">
        <button type="submit">Szukaj</button>
    </div>
    </form:form>
    <a class="navbar-brand" href="/">
            <span>
              Wróć do AnimaliUM
            </span>
    </a>
</body>
</html>
<html>
