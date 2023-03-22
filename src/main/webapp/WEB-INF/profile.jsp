<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>

</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="page-wrapper profile">
    <div class="container h-50">
        <div class="row">
            <div class="column d-flex justify-content-center">
                <div class="card shadow bg-dark p-4 m-2 h-90">
                <h1 class="p-2 m-0 text-center">Welcome, ${sessionScope.user.username}!</h1>

                <h1 class="text-center">User Profile</h1>
                    <div class="d-flex justify-content-center">
                <img  class="rounded-circle bg-light" src="../img/profile-pic2.png" alt="Profile Picture" style="width: 7em; height: auto">
                    </div>
                <h2 class="text-center">${sessionScope.user.username}</h2>
                <p class="text-center">Email: ${sessionScope.user.email}</p>
                <a href="<c:url value="./ads/index.jsp"/>"></a>

                <section class="d-flex justify-content-center">
                    <button class="btn btn-primary btn-sm me-3" type="button" id="editProfile" href="/editProfile">Edit</button>
                    <button class="btn btn-primary btn-sm" type="button" id="deleteProfile" href="/deleteProfile">Delete</button>
                </section>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/scripts.jsp"/>


</body>
</html>
