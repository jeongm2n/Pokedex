<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layouts/header.jsp" %>
<link rel="stylesheet" href="/css/trip.css">
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
<script>
    var ballbonus = 1;
    var ballname = '몬스터볼';
    var mem_id = '<%=mem_id%>';
    var before;

    function getBall(plus,name,many){
        ballname = name;
        $('#hideball').val(name);
        ballbonus = Number(plus);
        before.classList.remove("ballclk");
        $('#'+name+'1').addClass("ballclk");
        before = document.getElementById(name+'1');
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
                            $('#'+ballname+'2').text('x'+response);
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

    function runaway(){
        location.reload(true);
    }
    let type1 = '${pokemon.type1}';
    let type2 = '${pokemon.type2}';

    $(document).ready(function(){
        if(type1=='water' || type2=='water'){
            $("#first").css("background-image", "url(img/water.jpg)");
        }
        $('#몬스터볼1').addClass("ballclk");
        before = document.getElementById("몬스터볼1");

        const rand = Math.floor(Math.random()*100);
        let reward1;
        let reward2;
        if(rand==1){
            reward1='마스터볼';
            reward2=1;
        }else if(rand>=2 && rand<10){
            reward1='네트볼';
            reward2=2;
        }else if(rand>=10 && rand<20){
            reward1='다이브볼';
            reward2=2;
        }else if(rand>=20 && rand<35){
            reward1='하이퍼볼';
            reward2=3;
        }else if(rand>=35 && rand<50){
            reward1='슈퍼볼'
            reward2=4;
        }else{
            reward1='몬스터볼';
            reward2=5;
        }
        $('#rewardname').val(reward1);
        $('#rewardmany').val(reward2);
        $('#rewarddiv').prepend("포획 보상 : <img class=rewardimg src='../img/ball/"+reward1+".png'> "+reward2+"개");
    });
</script>

<div class="container">
    <div class="inner">
        <section>
            <div class="first" id="first">
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
            <div style="width:100%;text-align:right;margin-top:20px;">
                <div id="rewarddiv">
                </div>
            </div>
        </section>
        <aside>
            <div class="card overflow-auto">
                <table class="table">
                <c:forEach var="ball" items="${balls}">
                    <tr id="${ball.name}1" onclick="getBall('${ball.plus}','${ball.name}','${ball.many}')"><td><img class="ball" src="../img/ball/${ball.name}.png"></td>
                        <td id="${ball.name}2" class="many">x ${ball.many}</td></tr>
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
            <input type="hidden" id="rewardname" name="rewardname">
            <input type="hidden" id="rewardmany" name="rewardmany">
            <input type="submit" class="btn btn-outline-danger" value="잡는다" onclick="return calculate('${pokemon.percent}')">
        </form>
        <button type="button" class="btn btn-light" style="margin-left:5vw;" onclick="runaway()">도망간다</button>
    </div>
</div>
<%@ include file="../layouts/footer.jsp" %>
</body>
</html>