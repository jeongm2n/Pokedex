<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<link rel="stylesheet" href="/css/mycss3.css">
<div class="container">
    <table class="form_table">
        <tr><td>${no}</td></tr>
        <c:forEach var="pokemon" items="${pokemons}">
            <tr>
                <td rowspan="4" colspan="2"><img src="${pokemon.img}"></td><th>이름</th><td>${pokemon.korean}</td>
            </tr>
            <tr>
                <th>분류</th><td>${pokemon.genus}</td></tr>
            <tr>
                <th>타입</th><td><c:forEach var="type" items="${pokemon.types}">
                    <c:if test="${!empty type}">
                    <img class="typeimg" src="/img/types/${type}.png">
                    </c:if></c:forEach></td>
            </tr>
            <tr><th>특성</th><td><c:forEach var="ability" items="${pokemon.abilities}">
                <c:if test="${ability.hidden eq 'false'}">${ability.name}</c:if></c:forEach></td>
                <th>드특</th><td><c:forEach var="ability" items="${pokemon.abilities}">
                    <c:if test="${ability.hidden eq 'true'}">${ability.name}</c:if></c:forEach></td></tr>
            <c:forEach var="des" items="${pokemon.des}">
            <tr><th>${des.version}</th><td>${des.flavor_text}</td></tr>
            </c:forEach>
        </c:forEach>
    </table>
</div>
<%@ include file="./layouts/footer.jsp" %>
</body>