<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="GEN*CON" value="GEN*CON"/>
    </jsp:include>
</head>
<body class="sample">
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<%--    <div class="page-wrapper ">--%>
<div class="row">
    <div class="top-img">
        <div class="extend ">
            <h1 class="container top-img-banner mt-5">WELCOME TO GEN*CON!</h1>
            <h2 class="container top-img-banner">Home of the largest selection of retro gaming.</h2>
        </div>
    </div>
</div>
<div class="container">
    <div class="row m-5">
        <div class="col-12 d-flex justify-content-center text-light mb-3">
            <h2>Current Retro Deals</h2>
        </div>
        <div class="d-flex justify-content-between px-5">
            <div class="card col-4 card-bg shadow bg-dark text-light p-5" style="width: 18rem; height: auto">
                <img src="/img/n64.png" class="card-img-top" alt="N64 Console">
                <div class="card-body">
                    <h5 class="card-title">N64</h5>
                    <p class="card-text">This Nintendo 64 system is refurbished and clean. Our systems all tested and
                        guaranteed to work and backed by our 1 year 100% guarantee return policy.</p>
                </div>
                <a href="/nintendoAds" class="btn btn-light">View Console</a>
            </div>
            <div class="card col-4 card-bg shadow bg-dark text-light p-5" style="width: 18rem; height: auto">
                <img src="/img/ps.png" class="card-img-top" alt="Playstation Console">
                <div class="card-body">
                    <h5 class="card-title">Playstation</h5>
                    <p class="card-text">This original Playstation system is refurbished and clean. Our systems all
                        tested and guaranteed to work and backed by our 1 year 100% guarantee return policy.</p>
                </div>
                <a href="/playstationAds" class="btn btn-light">View Console</a>
            </div>
            <div class="card col-4 card-bg shadow bg-dark text-light p-5" style="width: 18rem; height: auto">
                <img src="/img/sega-genesis.png" class="card-img-top" alt="Sega Genisus Console">
                <div class="card-body">
                    <h5 class="card-title">SEGA GENISUS</h5>
                    <p class="card-text">This SEGA GENISUS system is refurbished and clean. Our systems all tested and
                        guaranteed to work and backed by our 1 year 100% guarantee return policy.</p>
                </div>
                <a href="/segaAds" class="btn btn-light">View Console</a>
            </div>
        </div>
    </div>
</div>
<%--    </div>--%>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/scripts.jsp"/>
</body>
</html>
