<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layouts/header.jsp" %>
<link rel="stylesheet" href="/css/trip.css">
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">

<div class="container">
    <div class="inner">
        <section>
            <div class="first">
                <table class="tbl">
                    <tr><td>${pokemon.name}</td></tr>
                    <tr><td><img class="poke" src="${pokemon.img}"></td></tr>
                    <tr><td><img class="type" src="/img/types/${pokemon.type1}.png">
                    <c:if test="${!empty pokemon.type2}"><img class="type" src="/img/types/${pokemon.type2}.png"></c:if></td></tr>
                </table>
            </div>
            <div class="card line">
                <div class="card-body">
                    야생의 ${pokemon.name} 이/가 나타났다!!
                </div>
            </div>
        </section>
        <aside>
            <div class="card overflow-auto">
                <table class="table">
                <c:forEach var="ball" items="${balls}">
                    <tr><td><img class="ball" src="../img/ball/${ball.name}.png"> x${ball.many}</td></tr>
                </c:forEach>
                </table>
            </div>
        </aside>
    </div>
    <div style="text-align: center;">
        <button class="btn btn-lg btn-outline-danger">잡는다</button>
    </div>
</div>
<%@ include file="../layouts/footer.jsp" %>
</body>
</html>