<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="GEN*CON" value="GEN*CON"/>
    </jsp:include>
</head>
<style>
    .sample {
        height: 100vh;
        box-shadow: inset 5px 5px 30px 15px black;
        background: linear-gradient(91.7deg, rgb(50, 25, 79) -4.3%, rgb(122, 101, 149) 101.8%);
        padding-top: 1em;
    }
    .top-img{
        background-image: url("./img/retro-console-pic.jpeg");
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center;
    }
    .extend {
        height: 25vh;
        width: 100%;
    }
    .top-img-banner{
        display: flex;
        justify-content: center;
        color: white;
        background-color: rgba(38, 20, 80, 0.51);
        width: 50%;
    }
    h1{
        margin-top: 2em;
    }
</style>
<body class="bg-body-dark">
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="page-wrapper">
    <div class="sample">
        <div class="row">
            <div class=" top-img">
                <div class=" extend mt-3">
                    <h1 class="container top-img-banner ">WELCOME TO GEN*CON!</h1>
                    <h2 class="container top-img-banner">Home of the largest selection of retro gaming.</h2>
                </div>
            </div>
        </div>
    </div>

</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/scripts.jsp"/>
</body>
</html>
