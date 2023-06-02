<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Zmień swoje dane</title>
  <link href="${pageContext.request.contextPath}/css/index/form.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="wrapper">
  <h2>Formularz zmiany danych</h2>
  <form:form method="post" action="/home/user/edit" modelAttribute="user" >
    <form:hidden path="id"/>
    <div class="input-box">
      <label for="firstName">Podaj imię:</label>
      <form:input path="firstName" id="firstName"/><br>
      <form:errors path="firstName"/><br>
    </div>
    <div class="input-box">
      <label for="lastName">Podaj nazwisko:</label>
      <form:input path="lastName" id="lastName"/><br>
      <form:errors path="lastName"/><br>
    </div>
    <div class="input-box">
      <label for="userName">Podaj nazwę użytkownika:</label>
      <form:input path="username" id="userName"/><br>
      <form:errors path="username"/><br>
    </div>
    <div class="input-box">
      <label for="email">Podaj adres e-mail:</label>
      <form:input path="email" id="email"/><br>
      <form:errors path="email"/><br>
    </div>
    <div class="input-box">
      <label for="password">Podaj hasło:</label>
      <form:input type="password" path="password" value="" id="password"/><br>
      <form:errors path="password"/><br>
    </div>
    <div class="input-box">
      <label for="confirmPassword">Potwierdź hasło:</label>
      <form:input type="password" path="confirmPassword" id="confirmPassword"/><br>
      <form:errors path="confirmPassword"/><br>
    </div>
    <div class="input-box button">
      <button type="submit"> Zatwierdź </button>
    </div>
  </form:form>
  <div class="text">
    <a href="/home">Wróć do strony głównej</a>
  </div>
</div>
</body>
</html>
<html>
