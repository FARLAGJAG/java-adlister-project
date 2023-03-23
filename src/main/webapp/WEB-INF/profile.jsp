<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>

</head>
<body class="user-style">
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="page-wrapper ">
    <div class="container">
            <div class="column d-flex justify-content-center m-5">
                <div class="card shadow bg-dark p-4 m-2">
                <h1 class="p-2 m-0 text-center">Welcome, ${sessionScope.user.username}!</h1>

                <h1 class="text-center">User Profile</h1>
                    <div class="d-flex justify-content-center">
                <img  class="rounded-circle bg-light" src="../img/profile-pic2.png" alt="Profile Picture" style="width: 7em; height: auto">
                    </div>
                <h2 class="text-center">${sessionScope.user.username}</h2>
                <p class="text-center">Email: ${sessionScope.user.email}</p>
                <a href="<c:url value="./ads/index.jsp"/>"></a>

                <section class="d-flex justify-content-center">

<%--                    <button class="btn btn-primary btn-sm me-3" type="button" id="editProfile" >Edit</button>--%>
                    <a class="btn btn-outline-secondary btn-sm me-3" href="/editProfile">Edit</a>
<%--                    <button class="btn btn-primary btn-sm" type="button" id="deleteProfile">Delete</button>--%>
                    <a class="btn btn-outline-secondary btn-sm me-3" href="/deleteProfile">Delete</a>

                </section>
                </div>
            </div>
            <div>
                <c:forEach var="ad" items="${ads}">
                    <div class="col-md-6">
                        <h2>>${ad.title}</h2>
                        <p>${ad.description}</p>
                    </div>
                    <div>
                        <a href="/editAd">edit</a>
                        <a href="/deleteAd">delete</a>
                    </div>
                </c:forEach>
            </div>
    </div>
</div>

<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/scripts.jsp"/>


</body>
</html>
