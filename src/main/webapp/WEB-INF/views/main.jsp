<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<script>
    function goMain(){
        window.location.href = '/main2';
    }
</script>
<div class="container">
    <div class="row">
        <div class="card col-6">
            <div class="card-body">
                <h4>포켓몬 잡으러 가기</h4>
            </div>
        </div>
        <div class="card col-6">
            <div class="card-body" onclick="goMain()">
                <h4>도감 보러 가기</h4>
            </div>
        </div>
    </div>
</div>
<%@ include file="./layouts/footer.jsp" %>
</body>
</html>