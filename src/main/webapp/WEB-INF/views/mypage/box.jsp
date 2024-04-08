<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layouts/header.jsp" %>
<link rel="stylesheet" href="/css/mypagecss.css">
<div class="container">
    <div class="card">
        <div class="row">
        <c:forEach var="pokemon" items="${mybox}">
            <div class="col-2"><img class="pokemon" src="${pokemon.img}"></div>
        </c:forEach>
        </div>
    </div>
</div>
<%@ include file="../layouts/footer.jsp" %>
</body>
</html>