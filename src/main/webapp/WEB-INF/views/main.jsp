<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<script>
    function goDex(region){
        window.location.href = '${contextPath}/generation/' + region +'?gen='+region;
    }
</script>

    <div class="container text-center">
    <div class="row">
    <div class="col-md-3 col-xs-6 region-div" onclick="goDex('1')">관동지방</div>
    <div class="col-md-3 col-xs-6 region-div" onclick="goDex('2')">성도지방</div>
    <div class="col-md-3 col-xs-6 region-div" onclick="goDex('3')">호연지방</div>
    <div class="col-md-3 col-xs-6 region-div" onclick="goDex('4')">신오지방</div>
</div>
    <div class="row">
        <div class="col-md-3 col-xs-6 region-div" onclick="goDex('5')">하나지방</div>
        <div class="col-md-3 col-xs-6 region-div" onclick="goDex('6')">칼로스지방</div>
        <div class="col-md-3 col-xs-6 region-div" onclick="goDex('7')">알로라지방</div>
        <div class="col-md-3 col-xs-6 region-div" onclick="goDex('mega')">메가진화</div>
    </div>
    <div class="row">
        <div class="col-md-3 col-xs-6 region-div" onclick="goDex('8')">가라르지방</div>
        <div class="col-md-3 col-xs-6 region-div" onclick="goDex('gmax')">거다이맥스</div>
        <div class="col-md-3 col-xs-6 region-div" onclick="goDex('10')">히스이</div>
        <div class="col-md-3 col-xs-6 region-div" onclick="goDex('9')">팔데아지방</div>
    </div>
</div>
</body>
</html>