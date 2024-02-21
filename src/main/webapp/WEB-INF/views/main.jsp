<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>

<body id="wrap">
<div class="alldex">
    <c:forEach var="pokemon" items="${gwandong}">
        ${pokemon.korean},<img src="${pokemon.img}">
        <c:forEach var="type" items="${pokemon.types}">
            <c:if test="${!empty type}">
                <img class="typeimg" src="/img/types/${type}.png">
            </c:if>
        </c:forEach>
    </c:forEach>
</div>
</body>
</html>