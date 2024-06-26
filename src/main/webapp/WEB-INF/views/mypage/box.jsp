<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layouts/header.jsp" %>
<link rel="stylesheet" href="/css/mypagecss.css">
<div class="container">
    <h4 class="many">잡은 수 : ${many}</h4>
    <div style="display: flex; width:100%;">
    <div class="card boxdiv">
        <div class="row">
        <c:forEach var="pokemon" items="${mybox}">
            <div class="col-2" onclick="getDetail('${pokemon.ball}','${pokemon.pk}','${pokemon.img}')"><img class="pokemon" src="${pokemon.img}"></div>
        </c:forEach>
        </div>
    </div>
    <div id="de">
        <div class="card pokeinfo">
            <div style="display: flex;">
                <img id="detailball">
                <h5 id="detailname"></h5>
            </div>
            <img id="detailpoke">
            <div id="typediv" style="display:flex">
                <img id="type1">
                <img id="type2">
            </div>
        </div>
    </div>
    </div>
    
</div>
<script>

    function getDetail(ball, pk, img){
        $('#de').show();
        $('#type2').remove("");

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
            $('#typediv').append("<img id='type2' src='/img/types/" + type2 + ".png'>");
        }
    }
</script>
<%@ include file="../layouts/footer.jsp" %>
</body>
</html>