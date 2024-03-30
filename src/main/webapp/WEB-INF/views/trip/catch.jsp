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
    <select class="form-select" multiple aria-label="multiple select example">
        <option selected>몬스터볼</option>
        <option value="1">슈퍼볼</option>
        <option value="2">하이퍼볼</option>
        <option value="3">마스터볼</option>
      </select>
</aside>
</div>
<%@ include file="../layouts/footer.jsp" %>
</body>
</html>