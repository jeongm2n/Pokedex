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
    <div class="maindiv">
        <div class="card main-left">
            <button class="mainbtn" onclick="goMain3()">
                <h4>포켓몬 잡기</h4>
                <img class="leftimg" src="/img/ball.png">
            </button>
        </div>
        <div class="card main-right">
            <button class="mainbtn"onclick="goMain2()">
                <h4>전국도감</h4>
                <img class="rightimg" src="/img/smart.png">
            </button>
        </div>
    </div>
</div>
<%@ include file="./layouts/footer.jsp" %>
</body>
</html>