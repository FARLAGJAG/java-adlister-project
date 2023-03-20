<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="GEN*CON" value="GEN*CON" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome to the GEN*CON!</h1>
    </div>
<jsp:include page="/WEB-INF/partials/scripts.jsp" />
</body>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
</html>
