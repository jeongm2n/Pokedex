<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<link rel="stylesheet" href="/css/mycss.css">
<% String gen = request.getParameter("gen"); 
String[] region = {"관동지방","성도지방","호연지방","신오지방","하나지방","칼로스지방","알로라지방","가라르지방","팔데아지방"};
String page_name;
if(gen.equals("mega")){
    page_name = "메가진화";
}else if(gen.equals("gmax")){
    page_name = "거다이맥스";
}else if(gen.equals("hisui")){
    page_name = "히스이지방";
}else{
    int n = Integer.parseInt(gen);
    page_name = region[n-1];
}%>

<script>
    function goDetail(no){
        var gen = '<%=gen %>';

        window.location.href = "${contextPath}/detail?no="+no+"&gen="+gen;
    }
</script>
<div class="container">
<div class="row">
    <p class="page_name"><%=page_name %></p>
    <c:forEach var="pokemon" items="${pokemons}">
        <%if(!gen.equals("9")){%><div class="card col-4 col-md-2 text-center div2" onclick="goDetail('${pokemon.no}')">
            <div class="div_else" style="display: flex; justify-content: center;">
            <%if(gen.equals("gmax") || gen.equals("mega")){%>
            <img src="${pokemon.img}" class="pokemonimg gmax_img">
            <%}else{%><img src="${pokemon.img}" class="pokemonimg"><%}%></div>
        <%}else{%><div class="card col-4 col-md-2 text-center div3" onclick="goDetail('${pokemon.no}')">
            <div class="div_else" style="display: flex; justify-content: center;">
                <img src="${pokemon.img}" class="pokemonimg_9"></div><%}%>
            <div class="card_body middle_div">
                <%if(gen.equals("gmax")){%>
                <div class="no">No.${pokemon.no}</div>
                <div class="name g_name">${pokemon.korean}</div>
            <%}else{%>
                <div class="no">No.${pokemon.no}</div>
                <div class="name">${pokemon.korean}</div><%}%>
            </div>
            <div class="card_body type_div">
                <c:forEach var="type" items="${pokemon.types}">
                    <c:if test="${!empty type}">
                    <img class="typeimg" src="/img/types/${type}.png">
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </c:forEach>
</div>
</div>
<%@ include file="./layouts/footer.jsp" %>
</body>
</html>