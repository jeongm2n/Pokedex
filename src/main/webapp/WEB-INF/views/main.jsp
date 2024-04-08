<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<script>
    function goMain2(){
        window.location.href = '/main2';
    }
    function goMain3(){
        window.location.href = '/main3';
    }
</script>
<div class="container">
    <div class="row" style="text-align: center;">
        <div class="card col-12 col-md-6 main-left">
            <div class="card-body" onclick="goMain3()">
                <h4>포켓몬 잡기</h4>
                <img class="leftimg" src="/img/ball.png">
            </div>
        </div>
        <div class="card col-12 col-md-6 main-right">
            <div class="card-body" onclick="goMain2()">
                <h4>전국도감</h4>
                <img class="rightimg" src="/img/smart.png">
            </div>
        </div>
    </div>
</div>
<%@ include file="./layouts/footer.jsp" %>
</body>
</html>