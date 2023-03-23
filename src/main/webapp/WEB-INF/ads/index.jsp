<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body id="maxHeight" class="user-style">
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="page-wrapper">
    <div class="container text-dark">
        <div class="row d-flex justify-content-between my-5">
            <c:forEach var="ad" items="${ads}">
            <div class=" col-4 card-bg shadow bg-dark text-light m-3 p-2" style="width: 18rem; height: auto">
                <div class="card-body">
                    <div class="col-6">
                        <h2 class="card-title">${ad.title}</h2>
                        <p class="card-text">${ad.description}</p>
                    </div>
                    <a href="/details?id=${ad.id}" class="btn btn-light">View Console</a>
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/scripts.jsp"/>
</body>
</html>
