<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AnimaliUM</title>
    <link href="${pageContext.request.contextPath}/css/home/assets/plugins/bootstrap/bootstrap.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/home/assets/plugins/pace/pace-theme-big-counter.css"
          rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/home/assets/css/style.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/home/assets/font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/home/assets/css/main-style.css" rel="stylesheet"/>
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                AnimaliUM
            </a>
        </div>
        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-3x"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="/home/user/edit"><i class="fa fa-user fa-fw"></i>Edytuj dane</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="/logout"><i class="fa fa-sign-out fa-fw"></i>Wyloguj się</a>
                    </li>
                </ul>
            </li>
        </ul>
    </nav>
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li>
                    <div class="user-section">
                        <div class="user-info">
                            <div><strong>Witaj ${user.firstName} </strong></div>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="#"><i></i> Wszystkie zgłoszenia <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="/home/intervention/all"> Interwencje (${numberOfInterventions}) </a>
                        </li>
                        <li>
                            <a href="/home/animal/all"> Zwierzęta (${numberOfAnimals}) </a>
                        </li>
                        <li>
                            <a href="/home/animal/lost"> Zaginione zwierzęta (${numberOfLostAnimals}) </a>
                        </li>
                        <li>
                            <a href="/home/animal/found"> Znalezione zwierzęta (${numberOfFoundAnimals}) </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="/home/intervention/add"><i class="fa fa-edit fa-fw"></i>Dodaj interwencję</a>
                </li>
                <li>
                    <a href="/home/animal/add"><i class="fa fa-edit fa-fw"></i>Dodaj zwierzę</a>
                </li>
            </ul>
        </div>
    </nav>
    <div id="page-wrapper">
        <div class="row">
                  <div class="col-lg-12">
                <h1 class="page-header"> AnimaliUM </h1>
            </div>
        </div>
             <div class="row">
            <div class="col-lg-8">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <i class="fa fa-bar-chart-o fa-fw"></i>Twoje dodane interwencje
                        <div class="pull-right">
                            <div class="btn-group">

                            </div>
                        </div>
                    </div>

                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Data</th>
                                            <th>Lokalizacja</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${interventions}" var="intervention">
                                            <tr>
                                                <td>${intervention.id}</td>
                                                <td>${intervention.date}</td>
                                                <td>${intervention.location}</td>
                                                <td class="col-2 d-flex align-items-center justify-content-center flex-wrap">
                                                    <a href='<c:out value="/home/animal/addToIntervention?id=${intervention.id}"/>'
                                                       class="btn btn-danger rounded-0 text-light m-1">Dodaj zwierzę</a>
                                                    <a href='<c:out value="/home/intervention/details?id=${intervention.id}"/>'
                                                       class=" btn btn-info rounded-0 text-light m-1">Szczegóły</a>
                                                    <a href='<c:out value="/home/intervention/edit?id=${intervention.id}"/>'
                                                       class="btn btn-warning rounded-0 text-light m-1">Edytuj</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <i class="fa fa-bar-chart-o fa-fw"></i>Twoje zwierzęta z interwencji
                        <div class="pull-right">
                            <div class="btn-group">

                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Gatunek</th>
                                            <th>Status</th>
                                            <th>Akcje</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${userAnimals}" var="userAnimal">
                                            <tr>
                                                <td>${userAnimal.id}</td>
                                                <td>${userAnimal.species}</td>
                                                <td>${userAnimal.status}</td>
                                                <td class="col-2 d-flex align-items-center justify-content-center flex-wrap">
                                                    <a href='<c:out value="/home/animal/details?id=${userAnimal.id}"/>'
                                                       class="btn btn-info rounded-0 text-light m-1">Szczegóły</a>
                                                    <a href='<c:out value="/home/animal/edit?id=${userAnimal.id}&interventionId=${userAnimal.intervention.id}"/>'
                                                       class="btn btn-warning rounded-0 text-light m-1">Edytuj</a>
                                                    <a href='<c:out value="/home/animal/delete?id=${userAnimal.id}"/>'
                                                       class="btn btn-danger rounded-0 text-light m-1">Usuń</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="panel panel-primary text-center no-boder">
                    <div class="panel-body yellow">
                        <i class="fa fa-bar-chart-o fa-3x"></i>
                        <h3> ${numberOfAnimals} </h3>
                    </div>
                    <div class="panel-footer">
                            <span class="panel-eyecandy-title"> Zwierząt w bazie
                            </span>
                    </div>
                </div>
                <div class="panel panel-primary text-center no-boder">
                    <div class="panel-body blue">
                        <i class="fa fa-pencil-square-o fa-3x"></i>
                        <h3> ${numberOfLostAnimals} </h3>
                    </div>
                    <div class="panel-footer">
                            <span class="panel-eyecandy-title">Zaginionych zwierząt
                            </span>
                    </div>
                </div>
                <div class="panel panel-primary text-center no-boder">
                    <div class="panel-body red">
                        <i class="fa fa-thumbs-up fa-3x"></i>
                        <h3> ${numberOfFoundAnimals} </h3>
                    </div>
                    <div class="panel-footer">
                            <span class="panel-eyecandy-title">Odnalezionych zwierząt
                            </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
            </div>
            <div class="col-lg-4">
            </div>
            <div class="col-lg-4">
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/css/home/assets/plugins/jquery-1.10.2.js"></script>
<script src="${pageContext.request.contextPath}/css/home/assets/plugins/bootstrap/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/css/home/assets/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${pageContext.request.contextPath}/css/home/assets/scripts/siminta.js"></script>
<script src="${pageContext.request.contextPath}/css/home/assets/plugins/pace/pace.js"></script>
<script src="${pageContext.request.contextPath}/css/home/assets/scripts/dashboard-demo.js"></script>
</body>

</html>
