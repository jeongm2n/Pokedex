<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
<script>
    function goDex(region){
        window.location.href = '${contextPath}/' + region;
    }
</script>

<body id="wrap">
<div class="main-div container text-center">
    <div class="row" style="width:100%">
        <div class="col-6 region-div" onClick="goDex('gwandong')">관동지방</div>
        <div class="col-6 region-div" onClick="goDex('seongdo')">성도지방</div>
    </div>
    <div class="row" style="width:100%">
        <div class="col-6 region-div">호연지방</div>
        <div class="col-6 region-div">신오지방</div>
    </div>
    <div class="row" style="width:100%">
        <div class="col-6 region-div">하나지방</div>
        <div class="col-6 region-div">칼로스지방</div>
    </div>
    <div class="row" style="width:100%">
        <div class="col-6 region-div">알로라지방</div>
        <div class="col-6 region-div">가라르지방</div>
    </div>
    <div class="row" style="width:100%">
        <div class="col-6 region-div">히스이</div>
        <div class="col-6 region-div">팓데아지방</div>
    </div>
</div>
</body>
</html>