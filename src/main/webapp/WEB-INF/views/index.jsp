<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>AnimaliUM</title>

    <link rel="stylesheet" type="text/css" href="../../css/index/bootstrap.css"/>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans|Poppins:400,700&display=swap" rel="stylesheet">
    <link href="../../css/index/style.css" rel="stylesheet"/>
    <link href="../../css/index/responsive.css" rel="stylesheet"/>
</head>
<body>
<div class="hero_area">
    <header class="header_section">
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg custom_nav-container">
                <a class="navbar-brand" href="https://um.warszawa.pl/">
            <span>
              AnimaliUM
            </span>
                </a>
                <div class="" id="">
                    <div class="custom_menu-btn">
                        <button onclick="openNav()">
                <span class="s-1">
                </span>
                            <span class="s-2">
                </span>
                            <span class="s-3">
                </span>
                        </button>
                    </div>
                    <div id="myNav" class="overlay">
                        <div class="overlay-content">
                            <a href="/register">Zarejestruj się</a>
                            <a href="/login">Zaloguj się</a>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <section class="slider_section">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-5 offset-md-1">
                                <div class="detail-box">
                                    <h1>
                                        AnimaliUM <br>
                                        <span>
                        Zwierzęta w mieście
                      </span>
                                    </h1>
                                    <p>
                                        Serce człowieka można poznać po tym, jak traktuje zwierzęta.
                                    </p>
                                    <div class="btn-box">
                                        <a href="/search" class="btn-1">
                                            Zgubiłeś zwierzę?
                                        </a>
                                        <a href="/login" class="btn-2">
                                            Zgłoś zwierzę
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="img-box">
                                    <img src="../../images/slider-img.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<section class="animal_section layout_padding">
    <div class="container">
        <div class="animal_container">
            <div class="box b1">
                <div class="img-box">
                    <img src="../../images/tajga.jpg" alt="">
                </div>
                <div class="detail-box">
                    <h5>
                        Zgubiłeś zwierzę?
                    </h5>
                    <p>
                        Wyszukaj je w naszej bazie
                    </p>
                </div>
            </div>
            <div class="box b2">
                <div class="img-box">
                    <img src="../../images/bunia.jpg" alt="">
                </div>
                <div class="detail-box">
                    <h5>
                        Znalazłeś zwierzę?
                    </h5>
                    <p>
                        Dodaj je do bazy i odszukaj właściciela
                    </p>
                </div>
            </div>
            <div class="box b1">
                <div class="img-box">
                    <img src="../../images/tundra.jpg" alt="">
                </div>
                <div class="detail-box">
                    <h5>
                        Twój pupil trafił do schroniska?
                    </h5>
                    <p>
                        Zlokalizuj go w naszej bazie!
                    </p>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
<section class="info_section ">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-3">
                <div class="info_contact">
                    <h5>
                        CONTACT INFO
                    </h5>
                    <div>
                        <img src="../../images/call.png" alt=""/>
                        <p>
                            19 115
                        </p>
                    </div>
                    <div>
                        <img src="../../images/mail.png" alt=""/>
                        <p>
                            demo@gmail.com
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="info_social">
                    <h5>
                        social media
                    </h5>
                    <div class="social_container">
                        <div>
                            <a href="https://www.facebook.com/warszawa/">
                                <img src="../../images/fb.png" alt=""/>
                            </a>
                        </div>
                        <div>
                            <a href="https://twitter.com/warszawa">
                                <img src="../../images/twitter.png" alt=""/>
                            </a>
                        </div>
                        <div>
                            <a href="https://www.instagram.com/miasto_warszawa/">
                                <img src="../../images/instagram.png" alt=""/>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="container-fluid footer_section ">
    <p>
        &copy; 2019 All Rights Reserved. Design by
        <a href="https://html.design/">Free Html Templates</a>
    </p>
</section>
<script>
    function openNav() {
        document.getElementById("myNav").classList.toggle("menu_width")
        document.querySelector(".custom_menu-btn").classList.toggle("menu_btn-style")
    }
</script>
</body>
</html>