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

<div class="page-wrapper mt-5 pt-5" id="login">
  <div class="container-fluid d-flex justify-content-center mt-5">
    <div class="edit column card d-flex justify-content-center shadow bg-dark p-4 m-5">
      <div class="vh-75">
        <h1>EDIT Ad</h1>
        <form method="Get" action="/editAd">
          <label for="title">title</label>
          <input id="title" name="title" value="${sessionScope.ad.title}">
          <label for="description">description</label>
          <input id="description" name="description" value="${sessionScope.ad.description}">
          <label for="condition">Item Condition</label>
          <select name="condition" id="condition">
            <option value="new">New</option>
            <option value="used">Used</option>
          </select>
          <button class="btn btn-outline-secondary btn-sm me-3" type="button">submit</button>
          <br>

        </form>
      </div>
    </div>

  </div>
</div>


<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<jsp:include page="/WEB-INF/partials/scripts.jsp"/>
</body>
</html>

