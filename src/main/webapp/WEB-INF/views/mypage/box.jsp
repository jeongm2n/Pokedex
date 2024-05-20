<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layouts/header.jsp" %>
<link rel="stylesheet" href="/css/mypagecss.css">
<div class="container" style="display: flex;">
    <div class="card" style="width:80%; margin-right:2%;">
        <div class="row">
        <c:forEach var="pokemon" items="${mybox}">
            <div class="col-2"><img class="pokemon" src="${pokemon.img}"></div>
        </c:forEach>
        </div>
    </div>
    <div class="card pokeinfo">

    </div>
</div>
<%@ include file="../layouts/footer.jsp" %>
</body>
</html>