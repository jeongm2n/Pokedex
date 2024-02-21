<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>

<body id="wrap">
<div class="alldex">
    <c:forEach var="pokemon" items="${gwandong}">
        <p>${pokemon.korean},<img src="${pokemon.img}"></p>
    </c:forEach>
</div>
</body>
</html>