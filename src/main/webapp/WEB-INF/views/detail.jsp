<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<link rel="stylesheet" href="/css/mycss2.css">
<body id="wrap">
<div class="container">
<c:set var="pokemon" value="${pokemon}"/>
<c:if test="${empty pokemon.female.f_img}">
    <div class="row">
        <div class="col-md-6 left_div">
            <img class="col-6 sd_image" src="${pokemon.img}">
        </div>
        <div class="col-md-6 right_div">
            <table class="right_table">
            <tr class="name_del"><th>도감번호</th><td>No. ${pokemon.no}</td></tr>
            <tr class="name_del"><th>이름</th><td>${pokemon.korean}</td></tr>
            <tr><th class="name_del">분류</th><td>${pokemon.genus}</td></tr>
            <tr><th class="name_del">타입</th>
            <td><c:forEach var="type" items="${pokemon.types}">
                <c:if test="${!empty type}">
                    <img class="typeimg" src="/img/types/${type}.png">
                </c:if>
            </c:forEach></td></tr>
            </table>
        </div>
    </div>
</c:if>
    <!--<div style="padding-top:20px;padding-left:20px;height:80px">
        <p class="no">No. ${pokemon.no}</p>
        <p class="name">${pokemon.korean}</p>
    </div>-->
</div>
</body>