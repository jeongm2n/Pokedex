<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<link rel="stylesheet" href="/css/mycss2.css">
<div class="container">
<div class="row">
<c:set var="pokemon" value="${pokemon}"/>
<c:if test="${empty pokemon.female.f_img}">
        <div class="col-md-6 gx-3 left_div">
            <img class="col-6 sd_image" src="${pokemon.img}">
        </div>
        <div class="col-md-6 right_div">
            <table class="right_table">
            <tr class="name_del"><th>도감번호</th><td colspan="3">No. ${pokemon.no}</td></tr>
            <tr class="name_del"><th>이름</th><td colspan="3">${pokemon.korean}</td></tr>
            <tr><th class="name_del">분류</th><td colspan="3">${pokemon.genus}</td></tr>
            <tr><th class="name_del">타입</th>
            <td colspan="3"><c:forEach var="type" items="${pokemon.types}">
                <c:if test="${!empty type}">
                    <img class="typeimg" src="/img/types/${type}.png">
                </c:if>
            </c:forEach></td></tr>
            <tr><th>특성</th><td class="text-wrap"><c:forEach var="ability" items="${pokemon.abilities}">
                <c:if test="${ability.hidden eq 'false'}">${ability.name}</c:if></c:forEach></td>
                <th class="text-wrap">숨겨진 특성</th>
                <td><c:forEach var="ability" items="${pokemon.abilities}">
                <c:if test="${ability.hidden eq 'true'}">${ability.name}</c:if>
                </c:forEach></td></tr>
            </table>
        </div>
</c:if>
    <!--<div style="padding-top:20px;padding-left:20px;height:80px">
        <p class="no">No. ${pokemon.no}</p>
        <p class="name">${pokemon.korean}</p>
    </div>-->
</div>
<div class="row" style="border: 1px solid black;">

</div>
</div>
</body>