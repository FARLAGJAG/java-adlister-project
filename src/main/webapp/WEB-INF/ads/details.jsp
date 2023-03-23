<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad Description"/>
    </jsp:include>
</head>
<body id="" class="user-style ">
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="page-wrapper vh50">
    <div class="container text-dark my-5">
        <div class="row d-flex justify-content-center my-5">
             <div class="card col-4 card-bg shadow bg-dark text-light m-3 p-2" style="width: 18rem; height: auto">
                    <div class="card-body d-flex justify-content-center ">
                        <div class="col-md-6">
                            <h2 class="card-title">
                                <c:out value="${thisAd.title}" />
                            </h2>
                            <p class="card-text">
                                <c:out value="${thisAd.description}" />

                            </p>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/scripts.jsp"/>
</body>
</html>
