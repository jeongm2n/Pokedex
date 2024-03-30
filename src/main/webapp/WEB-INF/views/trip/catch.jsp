<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layouts/header.jsp" %>
<link rel="stylesheet" href="/css/trip.css">

<div class="container">
<section>
<div class="first">
    <table class="tbl">
        <tr><td>${pokemon.name}</td></tr>
        <tr><td><img class="poke" src="${pokemon.img}"></td></tr>
        <tr><td><img class="type" src="/img/types/${pokemon.type1}.png">
        <c:if test="${!empty pokemon.type2}"><img class="type" src="/img/types/${pokemon.type2}.png"></c:if></td></tr>
    </table>
</div>
</section>
<aside>
    여기는 aside입니다.
</aside>
</div>
<%@ include file="../layouts/footer.jsp" %>
</body>
</html>