<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<link rel="stylesheet" href="/css/mycss2.css">

<div class="container">
<div class="row" style="margin-bottom:10px">
<c:set var="pokemon" value="${pokemon}"/>
<script>
    var originMale = "${pokemon.img}";
    var originFemale = "${pokemon.female.f_img}";
    var isOriginalImage = true; // 현재 이미지가 원래 이미지인지 여부를 나타내는 변수

    function toggleImage() { //이로치 버튼 클릭 시 이로치 img로 변경
        if (isOriginalImage) {
            $("#male").attr("src", "${pokemon.simg}");
            $("#female").attr("src", "${pokemon.female.fs_img}");
        } else {
            $("#male").attr("src", originMale);
            $("#female").attr("src", originFemale);
        }
        isOriginalImage = !isOriginalImage; // 이미지를 번갈아가며 변경
    }
</script>
<div class="col-md-6 left_div">
    <div style="text-align: right;">
        <button type="button" id="shiny" class="shine rounded-4" data-bs-toggle="button" onclick="toggleImage();">이로치</button></div>
<c:choose>
<c:when test="${empty pokemon.female.f_img}">
    <div class="img_div rounded-3">
    <img id="male" class="sd_image1" src="${pokemon.img}"></div></c:when>
<c:otherwise>
    <div class="row rounded-3" style="text-align:center;background-color: lightcyan;">
    <div class="col"><img id="male" class="sd_image2" src="${pokemon.img}"><p style="vertical-align: bottom;">수컷의 모습</p></div>
    <div class="col"><img id="female" class="sd_image2" src="${pokemon.female.f_img}"><p>암컷의 모습</p></div>
    </div>
</c:otherwise>
</c:choose>
</div>
    <div class="col-md-6 right_div">
        <table class="right_table rounded-3">
        <tr><th>도감번호</th><td colspan="3">No. ${pokemon.no}</td></tr>
        <tr><th>이름</th><td colspan="3">${pokemon.korean}</td></tr>
        <tr><th>분류</th><td colspan="3">${pokemon.genus}</td></tr>
        <tr><th>타입</th>
        <td colspan="3"><c:forEach var="type" items="${pokemon.types}">
            <c:if test="${!empty type}">
                <img class="type_img" src="/img/types/${type}.png">
            </c:if>
        </c:forEach></td></tr>
        <tr><th>특성</th><td class="text-wrap"><c:forEach var="ability" items="${pokemon.abilities}">
            <c:if test="${ability.hidden eq 'false'}">${ability.name}</c:if></c:forEach></td>
            <th style="word-break: keep-all;">숨겨진 특성</th>
            <td><c:forEach var="ability" items="${pokemon.abilities}">
            <c:if test="${ability.hidden eq 'true'}">${ability.name}</c:if>
        </c:forEach></td></tr>
    </table>
    </div>
<div class="col-12 px-3" style="padding-top:3vh;padding-bottom:5vh;">
    <table class="des">
    <caption class="title"><img src="img/phone.jpg" style="width:20px">도감설명</caption>
    <tbody>
    <c:forEach var="des" items="${pokemon.des}">
        <tr><td><div class="row" style="width:100%">
                <div class="col-3 des_ver"><div style="width:100%;background-color: #e6f4fa;">${des.version}</div></div>
                <div class="col-9 des_ft">${des.flavor_text}</div></div></td></tr>
    </c:forEach>
    </tbody>
    </table>
</div>
</div>
</div>
<%@ include file="./layouts/footer.jsp" %>
</body>