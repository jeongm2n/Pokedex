<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layouts/header.jsp" %>
<link rel="stylesheet" href="/css/trip.css">
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
<script>
    var ballbonus = 1;
    var ballname = '몬스터볼';
    var mem_id = '<%=mem_id%>';

    function getBall(plus,name,many){
        $('#hideball').val(name);
        ballbonus = Number(plus);
    }

    function calculate(percent){      
        var a = null;
        if(percent<=45){
            a = (298 * ballbonus * percent)/300 * 2;
        }else{
            a = (298 * ballbonus * percent)/300;
        }
        if(a < 255){
            var b = parseInt((65536 * Math.pow(a/255,0.1875)));
            for(let i=0; i<4; i++){
                const rand = Math.floor(Math.random()*65537);
                if(rand > b) {
                    alert('포획에 실패하였습니다!');
                    $.ajax({
                        url : "/calcBall",
                        type : "POST",
                        data : {
                            mem_id : mem_id,
                            ballname : ballname,
                        },
                        dataType : 'text',
                        success : function(response){
                            $('#'+ballname).text('x'+response);
                        },
                        error : function(xhr, status, error){
                            console.error('AJAX Error:', status, error);
                        }
                    });
                    return false;
                }
            }
        }
        alert('포획 성공!');
        return true;
    }
</script>

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
                    <tr><td onclick="getBall('${ball.plus}','${ball.name}','${ball.many}')"><img class="ball" src="../img/ball/${ball.name}.png"></td>
                        <td id="${ball.name}">x ${ball.many}</td></tr>
                </c:forEach>
                </table>
            </div>
        </aside>
    </div>
    <div class="formdiv">
        <form action="/catch" method="POST">
            <input type="hidden" name="poke_pk" value="${pokemon.pk}">
            <input type="hidden" name="mem_id" value="<%=mem_id%>">
            <input type="hidden" id="hideball" name="ballname">
            <input type="submit" class="btn btn-lg btn-outline-danger" value="잡는다" onclick="return calculate('${pokemon.percent}')">
        </form>
    </div>
</div>
<%@ include file="../layouts/footer.jsp" %>
</body>
</html>