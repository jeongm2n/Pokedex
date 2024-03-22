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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/mycss.css">
</head>
<script>
    function goBack() { //뒤로가기 이벤트
        window.history.back();
    }
</script>
<% String nickname = (String) session.getAttribute("nickname");%>
<body id="wrap">
<nav id="header" class="navbar fixed-top">
    <img class="back" src="/img/arrow.png" onclick="goBack();">
    <div class="container-fluid">
        <a class="navbar-brand header-font" href="/main"><img class="logo" src="/img/logo/pokemon.png">Pokedex</a>
        <div id="login1"><a class="login" href="/loginpage">로그인</a></div>
        <div id="login2">
          <a class="login" href="#" style="margin-right:1vw;"><img style="width:2vw;" src="/img/bag.png">가방</a>
          <a class="login" href="#" style="margin-right:1vw;"><img style="width:2vw;" src="/img/box.png">상자</a>
          <a class="login" href="/logout" style="font-size:8pt">로그아웃</a></div>
        <button class="navbar-toggler mydd" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="offcanvas offcanvas-end" style="width:60%" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
            <div class="offcanvas-header">
              <img id="idimg" src="/img/id.png" style="width:8vw"><h7 id="plslogin" class="offcanvas-title" id="offcanvasDarkNavbarLabel">로그인해주세요.</h7>
              <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <ul id="none-login" class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="/loginpage">로그인</a>
                </li>
              </ul>
              <ul id="done-login" class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#"><img style="width:5vw;margin-right:2vw" src="/img/bag.png">가방</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#"><img style="width:5vw;margin-right:2vw" src="/img/box.png">박스</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="/logout" style="font-size:8pt">로그아웃</a>
                </li>
              </ul>
            </div>
          </div>
    </div>
</nav>
<script>
  var nickname = '<%=nickname%>';
  $(document).ready(function(){
    if(nickname=='null'){
      $("#login2").hide();
      $("#done-login").hide();
    }else{
      $("#login1").hide();
      $("#plslogin").text(nickname+" 님");
      $("#none-login").hide();
    }
  });
</script>
