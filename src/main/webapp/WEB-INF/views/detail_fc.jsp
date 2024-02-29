<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<link rel="stylesheet" href="/css/mycss3.css">
<div class="container">
    <table class="form_table">
        <tr><td>${no}</td></tr>
        <c:forEach var="pokemon" items="${pokemons}">
            <tr>
                <td><img src="${pokemon.img}"></td><th>이름</th><td>${pokemon.korean}</td>
            </tr>
            <tr>
                <td></td><th>분류</th><td>${pokemon.genus}</td></tr>
            <tr>
                <td></td><th>타입</th><td><c:forEach var="type" items="${pokemon.types}">
                    <c:if test="${!empty type}">
                    <img class="typeimg" src="/img/types/${type}.png">
                    </c:if></c:forEach></td>
            </tr>
            <tr><td></td><th>특성</th><td><c:forEach var="ability" items="${pokemon.abilities}">
                <c:if test="${ability.hidden eq 'false'}">${ability.name}</c:if></c:forEach></td>
                <th>드특</th><td><c:forEach var="ability" items="${pokemon.abilities}">
                    <c:if test="${ability.hidden eq 'true'}">${ability.name}</c:if></c:forEach></td></tr>
            <tr></tr>
        </c:forEach>
    </table>
</div>
<%@ include file="./layouts/footer.jsp" %>
</body>