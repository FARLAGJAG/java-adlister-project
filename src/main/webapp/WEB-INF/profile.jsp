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

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>

    <h1>User Profile</h1>
    <img src="/profile-pic2.png" alt="Profile Picture">
    <h2>${sessionScope.user.getName()}</h2>
    <p>Email: ${sessionScope.getEmail()}</p>
    <p>Consoles Owned: Nintendo 64, Sega Genesis, Playstation </p>
    <p>Bio: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad animi beatae earum hic illum ipsa iure nostrum
        odio odit, quam quas quo, rerum suscipit tempore voluptas? Dolorem incidunt iusto optio!</p>
    <a href="<c:url value="./ads/index.jsp"/>"></a>
</div>
<section>
    <button type="button" onclick="editFunction()">Edit</button>
    <button type="button" onclick="deleteFunction()">Delete</button>
</section>

<jsp:include page="/WEB-INF/partials/footer.jsp"
 /jsp>

</body>
</html>
