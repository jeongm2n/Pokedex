<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<link rel="stylesheet" href="/css/mycss3.css">
<script>
    var origin = "${pokemon.img}";
    var isOriginalImage = true; // 현재 이미지가 원래 이미지인지 여부를 나타내는 변수

    function toggleImage() { //이로치 버튼 클릭 시 이로치 img로 변경
        if (isOriginalImage) {
            $("#pokeimg").attr("src", "${pokemon.simg}");
        } else {
            $("#pokeimg").attr("src", origin);
        }
        isOriginalImage = !isOriginalImage; // 이미지를 번갈아가며 변경
    }
</script>
<div class="container">
        <span class="span1">도감번호 : ${no}</span>
        <span class="span2"><button type="button" id="shiny" class="shine rounded-4" data-bs-toggle="button" onclick="toggleImage();">이로치</button></span>
        <c:forEach var="pokemon" items="${pokemons}">
            <table class="form-table rounded-top">
            <tr>
                <td class="fc-img-td" style="background-color: lightcyan;" rowspan="4" colspan="2">
                    <img id="pokeimg" class="pokemonimg" src="${pokemon.img}"></td><th>이름</th><td colspan="3">${pokemon.korean}</td>
            </tr>
            <tr>
                <th>분류</th><td colspan="3">${pokemon.genus}</td></tr>
            <tr>
                <th>타입</th><td colspan="3"><c:forEach var="type" items="${pokemon.types}">
                    <c:if test="${!empty type}">
                    <img class="type_img" src="/img/types/${type}.png">
                    </c:if></c:forEach></td>
            </tr>
            <tr><th>특성</th><td><c:forEach var="ability" items="${pokemon.abilities}">
                <c:if test="${ability.hidden eq 'false'}">${ability.name}</c:if></c:forEach></td>
                <th>드특</th><td><c:forEach var="ability" items="${pokemon.abilities}">
                    <c:if test="${ability.hidden eq 'true'}">${ability.name}</c:if></c:forEach></td></tr>
            </table>
            <table class="des-table">
            <c:forEach var="des" items="${pokemon.des}">
            <tr><th class="fc-ver">${des.version}</th><td class="fc-ft">${des.flavor_text}</td></tr>
            </c:forEach></table>
        </c:forEach>
</div>
<%@ include file="./layouts/footer.jsp" %>
</body>