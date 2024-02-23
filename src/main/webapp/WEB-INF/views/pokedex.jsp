<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>

<body id="wrap">
<div class="alldex row">
    <p style="color:Plum;font-size:10pt;font-weight:bold;">각 지방별 추가된 포켓몬만 표시됩니다.</p>
    <c:forEach var="pokemon" items="${pokemons}">
        <div class="card col-2 text-center" style="padding-top:15px">
            <img src="${pokemon.img}" class="pokemonimg">
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