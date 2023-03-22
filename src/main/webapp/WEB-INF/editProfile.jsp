<%--
  Created by IntelliJ IDEA.
  User: lonniearellano
  Date: 3/22/23
  Time: 2:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>hi</title>
</head>
<body>
    <h1>EDIT PROFILE</h1>
    <form>
        <label for="username">username</label>
        <input id="username" name="username" value="${sessionScope.user.username}">
        <label for="email">email</label>
        <input id="email" name="email" value="${sessionScope.user.email}">
        <button>submit</button>
    </form>

</body>
</html>
