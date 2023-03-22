<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<style>
    .login{
        height: 60%;
    }

</style>

<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="login">
    <div class="container mt-3">
        <h1 class="">Please Log In</h1>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-dark btn-block mt-3" value="Log In">
        </form>
        <p>Don't have an account? Click below to create a new account.</p>
        <form action="/register" method="GET">
            <input type="submit" class="btn btn-dark btn-block" value="Create an account">
        </form>
    </div>
</div>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />
</body>
</html>
