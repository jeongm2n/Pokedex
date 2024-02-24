<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<% String gen = request.getParameter("gen"); %>

<body id="wrap">
<div class="alldex row">
    <p style="color:Plum;font-size:10pt;font-weight:bold;">각 지방별 추가된 포켓몬만 표시됩니다.</p>
    <c:forEach var="pokemon" items="${pokemons}">
        <%if(!gen.equals("9")){%><div class="card col-2 text-center" style="padding-top:15px">
            <div class="div_else" style="display: flex; justify-content: center;">
            <img src="${pokemon.img}" class="pokemonimg"></div><%}
            else{%><div class="card col-2 text-center" style="padding-top:15px">
                <img src="${pokemon.img}" class="pokemonimg_9"><%}%>
            <div class="card_body" style="height:100px">
                <p class="no">No.${pokemon.no}</p>
                <p class="name">${pokemon.korean}</p>
            </div>
            <div class="card_body" style="height:35px;">
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