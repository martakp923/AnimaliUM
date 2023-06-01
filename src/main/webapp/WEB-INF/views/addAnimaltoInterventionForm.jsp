<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dodaj zwierzę do zdarzenia</title>
    <link href="${pageContext.request.contextPath}/css/index/form.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="wrapper">
    <h2>Dodaj zwierzę do interwencji</h2>
    <form:form method="POST" modelAttribute="animal" action="/home/animal/addToIntervention">
        <form:input type="hidden" name="intervention.id" path="intervention.id" id="id"/>
    <div class="input-box">
        <label for="species">Gatunek</label><br>
        <form:input path="species" id="species"/><br>
        <form:errors path="species" cssClass="error"/><br>
    </div>
    <div class="input-box">
        <label for="colour">Kolor</label><br>
        <form:input path="colour" id="colour"/><br>
        <form:errors path="colour" cssClass="error"/><br>
    </div>
    <div class="input-box">
        <label for="gender">Płeć</label><br>
        <form:input path="gender" id="gender" type="text"/><br>
        <form:errors path="gender" cssClass="error"/><br>
    </div>
    <div class="input-box">
        <label for="microchip">Microchip </label><br>
        <form:textarea path="microchip" id="microchip"/><br>
        <form:errors path="microchip" cssClass="error"/><br>
    </div>
    <div class="input-box">
        <label for="status">Status ('Zaginione' lub 'Znalezione')</label><br>
        <form:textarea path="status" id="status"/><br>
        <form:errors path="status" cssClass="error"/><br>
    </div>
    <div class="input-box button">
        <button type="submit" class="custom-button">Dodaj zwierzę do zdarzenia</button>
        </form:form>
    </div>
    <div class="text">
        <a href="/home">Wróć do strony głównej</a>
    </div>
</body>
</html>
