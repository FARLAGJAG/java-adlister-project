<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body class="user-style">
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="page-wrapper">
    <div class="container">
        <div class="row d-flex justify-content-between my-5">


            <c:forEach var="ad1" items="${ads}">
                <div class="card col-4 card-bg p-5" style="width: 18rem; height: auto">
                    <div class="card-body">
                        <div class="col-md-6">
                            <h2 class="card-title">${ad1.title}</h2>
                            <p class="card-text">${ad1.description}</p>
                        </div>
                    </div>
                    <a href="/details" class="btn btn-dark">View Console</a>

                    <c:forEach var="ad" items="${adsToEdit}">
                        <c:if test="${ad1.getUserId() == ad.getUserId()}">

                            <a href="/editAd" class="btn btn-dark">edit</a>
                            <a href="/deleteAd" class="btn btn-dark">delete</a>

                        </c:if>
                    </c:forEach>

                </div>
            </c:forEach>


        </div>
    </div>


</div>

</body>
</html>
