<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body class="user-style">
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    <div id="login" class="container m-5">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <label for="item_condition">Item Condition</label>
                <select name="item_condition" id="item_condition">
                    <option value="new">New</option>
                    <option value="used">Used</option>
                </select>
            </div>
            <div class="form-group">
                <label for="brand">Brand</label>
                <select name="brand" id="brand">
                    <option value="playstation">Playstation</option>
                    <option value="sega">Sega</option>
                    <option value="nintendo">Nintendo</option>
                    <option value="xbox">Xbox</option>
                </select>
            </div>
            <input type="submit" class="btn btn-block btn-dark mt-3">
        </form>
    </div>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />
</body>
</html>
