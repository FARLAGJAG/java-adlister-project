<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
body{
    height: 100vh;
}

.logo {
    font-family: 'PT Sans Narrow', sans-serif;
    font-size: 3em;
}

a.log {
    text-decoration: none;
    color: black;
}
</style>
<nav class="navbar navbar-expand-lg bg-body-secondary sticky-top">
    <div class="container-fluid">
        <a class="logo navbar-brand" href="/">< GEN * CON ></a>
        <div class="collapse navbar d-flex " id="navbarSupportedContent">
            <div class="me-4">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/ads/create">SELL</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">
                            SHOP BY BRAND
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">NINTENDO</a></li>
                            <li><a class="dropdown-item" href="#">SEGA</a></li>
                            <li><a class="dropdown-item" href="#">PLAYSTATION</a></li>
                            <li><a class="dropdown-item" href="#">XBOX</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <ul class="nav navbar-nav navbar-right me-4">
                <c:if test="${user.name != null}">
                <li ><a class="log" href="/logout">Logout</a></li>
                </c:if>
                <c:if test="${user.name == null}">
                <li ><a class="log" href="/login">Login</a></li>

                </c:if>
            </ul>
        </div>
    </div>
</nav>
