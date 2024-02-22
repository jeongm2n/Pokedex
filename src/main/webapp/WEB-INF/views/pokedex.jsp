<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>

<body id="wrap">
<div class="alldex row">
    <c:forEach var="pokemon" items="${gwandong}">
        <div class="card col-2" style="text-align:center;">
            <img src="${pokemon.img}" class="pokemonimg" style="text-align: center;">
            <div class="card-body">
                <p class="no">No.${pokemon.no}</p>
                <p class="name">${pokemon.korean}</p>
            </div>
            <div class="card-body" style="text-align:center;">
                <c:forEach var="type" items="${pokemon.types}">
                    <c:if test="${!empty type}">
                    <img class="typeimg" src="/img/types/${type}.png">
                    </c:if>
                </c:forEach>
            </div>
        </div>
        
    </c:forEach>
</div>
</body>
</html>