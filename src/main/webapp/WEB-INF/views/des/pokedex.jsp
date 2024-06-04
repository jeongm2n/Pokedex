<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layouts/header.jsp" %>
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
    function goDetail(no, str){
        var gen = '<%=gen %>';
        window.location.href = "${contextPath}/detail?no="+no+"&name="+str+"&gen="+gen;
    }
</script>
<div class="container">
<div class="row">
    <p class="page_name"><%=page_name %></p>
    <div style="margin-bottom: 10px;">
        <select id="category" style="height:5vh;font-size:1.3rem;margin-right:1vw">
            <option value="no">도감번호</option>
            <option value="name">이름</option>
        </select><input type="text" id="search" placeholder="검색" style="height: 5vh;font-size:1.3rem">
    </div>
    <c:forEach var="pokemon" items="${pokemons}">
    <div class="card col-4 col-md-2 text-center flip" onclick="goDetail('${pokemon.no}','${pokemon.korean}')">
        <div class="div_else front">
            <p>${pokemon.korean}</p>
        </div>

        <div class="back">
            <div class="div_else">
                <img src="${pokemon.img}" class="pokemonimg">
            </div>
            <div class="card_body middle_div">
                <div class="no">No.${pokemon.no}</div>
                <div class="name">${pokemon.korean}</div>
            </div>
            <div class="card_body type_div">
                <c:forEach var="type" items="${pokemon.types}">
                    <c:if test="${!empty type}">
                        <img class="typeimg" src="/img/types/${type}.png">
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </div>
    </c:forEach>
    <div id="none" class="col-12 none">검색하려는 포켓몬이 없습니다.</div>
</div>
</div>
<script>
    $(document).ready(function(){
        var gen = '<%=gen %>';
        if(gen!='9'){ //팔데아 지방 제외한 나머지 도감들 요소에 대한 클래스 추가
            $(".card").addClass("div2");
            if(gen=='gmax' || gen=='mega'){ //거다이나 메가진화는 이미지 크기가 달라서 
                $(".pokemonimg").addClass("gmax_img");
                if(gen=='gmax'){ //거다이맥스는 이름이 너무 길어서 폰트 크기 다르게 설정
                    $(".name").addClass("g_name");
                }
            }
        }else{ //팔데아 지방 도감의 요소에 대한 클래스 추가 
            $(".card").addClass("div3");
            $(".pokemonimg").addClass("pokemonimg_9")
            $(".pokemonimg").removeClass("pokemonimg");
        }
        $("#none").hide();

        $("#search").keyup(function(){
            $(".card").show();
            var keyword = $(this).val().toLowerCase();//대소문자 구분없이 검색하기 위함
            
            $(".card").hide().filter(function(){
                var std = "." + $("#category").val();
                var key = $(this).find(std).text().toLowerCase();
                return key.includes(keyword);
            }).show();
            //var target = $(".card:contains('"+keyword+"')");
            if ($(".card:visible").length === 0) {
                $("#none").show();
            } else {
                $("#none").hide();
            }
        });
    });
</script>
<%@ include file="../layouts/footer.jsp" %>
</body>
</html>