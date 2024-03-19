<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/> 
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>포켓몬도감</title>
    <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">-->
    <link rel="icon" type="image/png" sizes="16x16" href="/img/logo/monsterball.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gasoek+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Kode+Mono:wght@400..700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Jua&family=Kode+Mono:wght@400..700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:ital,wght@0,100..700;1,100..700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/mycss.css">
</head>
<script>
    function goBack() { //뒤로가기 이벤트
        window.history.back();
    }
</script>
<body id="wrap">
<nav id="header" class="navbar">
    <img class="back" src="/img/arrow.png" onclick="goBack();">
    <div class="container-fluid">
        <a class="navbar-brand header-font" href="#"><img class="logo" src="/img/logo/pokemon.png">Pokedex</a>
        <a class="login">로그인</a>
        <div class="dropdown mydd">
            <button class="btn" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                <img class="dmenu" src="/img/menu.png"></button>
            <ul class="dropdown-menu dropdown-toggle">
                <li><a class="dropdown-item" type="button">Action</a></li>
                <li><a class="dropdown-item" type="button">Another action</a></li>
                <li><a class="dropdown-item" type="button">Something else here</a></li>
            </ul>
        </div>
    </div>
    </div>
</nav>
