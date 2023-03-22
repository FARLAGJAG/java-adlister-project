<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>

body{
    /*height: 100%;*/
}

.logo {
    font-family: 'PT Sans Narrow', sans-serif;
    font-size: 3em;
}

.profile {
    font-family: 'PT Sans Narrow', sans-serif;
    color: whitesmoke;
    background: linear-gradient(89.7deg, rgb(0, 32, 95) 2.8%, rgb(132, 53, 142) 97.8%);
}

.shadow {
    box-shadow: 0px 0px 20px 0px white !important;
}

.color{
    color: white;
}
.color:hover{
    color: goldenrod;
}

a.log {
    text-decoration: none;
}
.navbar{
    background-color: #1a102d;
}


</style>
<nav class="navbar navbar-expand-lg sticky-top">
    <div class="container-fluid">
        <a class="logo color navbar-brand" href="/">GEN  <img src="/img/logo.png" style="height: 1.5em" width="auto">  CON</a>
        <div class="collapse navbar d-flex " id="navbarSupportedContent">
            <div class="me-4">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">

                        <a class="nav-link color" aria-current="page" href="/ads">BUY</a>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link color" aria-current="page" href="/ads/create">SELL</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle color" href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">
                            SHOP BY BRAND
                        </a>
                        <ul class="dropdown-menu">

                            <li><a class="dropdown-item" href="/nintendoAds">NINTENDO</a></li>
                            <li><a class="dropdown-item" href="/segaAds">SEGA</a></li>
                            <li><a class="dropdown-item" href="/playstationAds">PLAYSTATION</a></li>
                            <li><a class="dropdown-item" href="/xboxAds">XBOX</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <ul class="nav navbar-nav navbar-right me-4">
                <c:if test="${user != null}">

                <li ><a class="log color me-3" href="/logout">Logout</a></li>
                <li ><a class="log color" href="/profile">Profile</a></li>

                </c:if>
                <c:if test="${user == null}">
                <li ><a class="log color" href="/login">Login</a></li>

                </c:if>
            </ul>
        </div>
    </div>
</nav>
