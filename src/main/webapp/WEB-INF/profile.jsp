<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>

        <h1>User Profile</h1>
        <img src="/profile-pic.png" alt="Profile Picture">
        <h2>${sessionScope.user.getName()}</h2>
        <p>Email: ${sessionScope.getEmail()}</p>
        <p>Consoles Owned: Nintendo 64, Sega Genesis, Playstation </p>
        <p>Bio: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad animi beatae earum hic illum ipsa iure nostrum odio odit, quam quas quo, rerum suscipit tempore voluptas? Dolorem incidunt iusto optio!</p>

        <% String[] adLinks = { /* Array of ad links */ }; %>

        <ul>
            <% for (String adLink : adLinks) { %>
            <li><a href="<%= adLink %>">Ad Link</a></li>
            <% } %>
        </ul>

    </div>

<jsp:include page="/WEB-INF/partials/footer.jsp" /jsp>

</body>
</html>
