<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="${pageContext.request.contextPath}/css/index/form.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="wrapper">
    <h2>Wyloguj się</h2>
    <form:form action="/logout" method="post">
        <button class="custom-button" type="submit" value="Wyloguj">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form:form>
</div>
</body>
</html>
<html>