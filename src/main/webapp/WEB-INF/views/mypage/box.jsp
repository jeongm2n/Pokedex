<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layouts/header.jsp" %>
<link rel="stylesheet" href="/css/mypagecss.css">
<div class="container" style="display: flex;">
    <div class="card" style="width:80%; margin-right:2%;">
        <div class="row">
        <c:forEach var="pokemon" items="${mybox}">
            <div class="col-2" onclick="getDetail('${pokemon.ball}')"><img class="pokemon" src="${pokemon.img}"></div>
        </c:forEach>
        </div>
    </div>
    <div class="card pokeinfo">
        <div style="display: flex">
            <img id="detailball">
            <h4 id="detailname"></h4>
        </div>
        <img id="detailpoke">
        <img id="type1">
        <img id="type2">
    </div>
</div>
<script>
    function getDetail(){
        $.ajax({
            url: "/boxdetail",
            type: "GET",
            data: {
                pk : pk
            },
            dataType: 'text',
            success: function(response){

            },
            error: function(xhr, status, error){
                console.error('AJAX Error:', status, error);
            }
        });
    }
</script>
<%@ include file="../layouts/footer.jsp" %>
</body>
</html>