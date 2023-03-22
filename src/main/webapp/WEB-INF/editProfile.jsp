<%--
  Created by IntelliJ IDEA.
  User: lonniearellano
  Date: 3/22/23
  Time: 2:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>hi</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="GEN*CON" value="GEN*CON"/>
    </jsp:include>
</head>
<body class="user-style">
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    <div class="vh-75">
        <h1>EDIT PROFILE</h1>
        <form method="Get" action="/editProfile">
            <label for="username">username</label>
            <input id="username" name="username" value="${sessionScope.user.username}">
            <label for="email">email</label>
            <input id="email" name="email" value="${sessionScope.user.email}">
            <button>submit</button>
            <a href="/logout">go back to login</a>
        </form>
    </div>
    <jsp:include page="/WEB-INF/partials/footer.jsp"/>
    <jsp:include page="/WEB-INF/partials/scripts.jsp"/>
</body>
</html>
