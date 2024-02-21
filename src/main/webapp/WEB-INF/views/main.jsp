<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>

<body id="wrap">
<div>
    <c:forEach var="pokemon" items="${gwandong}">
        <p>${pokemon}</p>
    </c:forEach>
</div>
</body>
</html>