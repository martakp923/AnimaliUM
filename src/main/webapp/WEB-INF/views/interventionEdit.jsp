<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dodaj zdarzenie</title>
    <link href="${pageContext.request.contextPath}/css/index/form.css" rel="stylesheet" type="text/css">
</head>
<body>
<a class="navbar-brand" href="/home">
    AnimaliUM
</a>
<div class="wrapper">
    <form:form method="post" action="/home/intervention/edit" modelAttribute="intervention">
            <form:hidden path="id"/>
    <div class="input-box">
        <label for="date">Data</label>
        <form:input id="date" path="date" type="date" />
        <form:errors path="date" cssClass="error" /><br>
    </div>
    <div class="input-box">
        <label for="location">Lokalizacja</label>
        <form:input path="location" id="location"/><br>
        <form:errors path="location"/><br>
    </div>
    <div class="input-box">
        <label for="description">Opis</label>
        <form:input path="description" id="description"/><br>
        <form:errors path="description"/><br>
    </div>
    <div class="input-box">
        <label for="result">Podjęte działania</label>
        <form:input path="result" id="result"/><br>
        <form:errors path="result"/><br>
    </div>
    <div class="input-box button">
        <button type="submit" class="custom-button">Zapisz zmiany</button>
        </form:form>
    </div>
</body>
</html>
