<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layouts/header.jsp" %>
<link rel="stylesheet" href="/css/mypagecss.css">
<div class="container" style="display: flex;">
    <div class="card" style="width:80%; margin-right:2%;">
        <div class="row">
        <c:forEach var="pokemon" items="${mybox}">
            <div class="col-2" onclick="getDetail('${pokemon.ball}','${pokemon.pk}','${pokemon.img}')"><img class="pokemon" src="${pokemon.img}"></div>
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

    function getDetail(ball, pk, img){
        var no;
        var name;
        var type1;
        var type2;

        $.ajax({
            url: "/boxdetail",
            type: "GET",
            data: {
                pk : pk
            },
            dataType: 'json',
            async: false,
            success: function(response){
                no = response.no;
                name = response.name;
                type1 = response.type1;
                type2 = response.type2;
            },
            error: function(xhr, status, error){
                console.error('AJAX Error:', status, error);
            }
        });
        console.log(type2);

        $('#detailball').attr("src", "/img/ball/" + ball + ".png");
        $('#detailname').text(no+". " + name);
        $('#detailpoke').attr("src", img);
        $('#type1').attr("src", "/img/types/" + type1 + ".png");
        if(type2!=null){
            $('#type2').attr("src", "/img/types/" + type2 + ".png");
        }else{
            $('#type2').attr("src", "");
        }
    }
</script>
<%@ include file="../layouts/footer.jsp" %>
</body>
</html>