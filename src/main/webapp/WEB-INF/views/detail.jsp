<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<link rel="stylesheet" href="/css/mycss2.css">
<div class="container">
<div class="row" style="margin-bottom:10px">
<c:set var="pokemon" value="${pokemon}"/>
<c:choose>
<c:when test="${empty pokemon.female.f_img}">
        <div class="col-md-6 left_div" style="padding-top:10vh">
            <img class="sd_image" src="${pokemon.img}">
        </div></c:when>
<c:otherwise>
    <div class="col-md-6 left_div">
        <div class="row mg">
        <div class="col"><img class="sd_image" src="${pokemon.img}"><p style="vertical-align: bottom;">수컷의 모습</p></div>
        <div class="col"><img class="sd_image" src="${pokemon.female.f_img}"><p>암컷의 모습</p></div>
        </div>
    </div>
</c:otherwise>
</c:choose>
        <div class="col-md-6 right_div">
            <table class="right_table rounded-3">
            <tr><th>도감번호</th><td colspan="3">No. ${pokemon.no}</td></tr>
            <tr><th>이름</th><td colspan="3">${pokemon.korean}</td></tr>
            <tr><th>분류</th><td colspan="3">${pokemon.genus}</td></tr>
            <tr><th>타입</th>
            <td colspan="3"><c:forEach var="type" items="${pokemon.types}">
                <c:if test="${!empty type}">
                    <img class="type_img" src="/img/types/${type}.png">
                </c:if>
            </c:forEach></td></tr>
            <tr><th>특성</th><td class="text-wrap"><c:forEach var="ability" items="${pokemon.abilities}">
                <c:if test="${ability.hidden eq 'false'}">${ability.name}</c:if></c:forEach></td>
                <th style="word-break: keep-all;">숨겨진 특성</th>
                <td><c:forEach var="ability" items="${pokemon.abilities}">
                <c:if test="${ability.hidden eq 'true'}">${ability.name}</c:if>
                </c:forEach></td></tr>
            </table>
        </div>

</div>
<div class="row" style="border: 1px solid black;">
    <table>
        <caption style="text-align: left;caption-side: top;">도감설명</caption>
        <tbody>
        <c:forEach var="des" items="${pokemon.des}">
            <tr><td><div class="row"><div class="col-4 col-xs-6">${des.version}</div>
                <div class="col-8 col-xs-6">${des.flavor_text}</div></div></td></tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</div>
</body>