<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<script>
    function goDex(region){
        window.location.href = '${contextPath}/generation/' + region +'?gen='+region;
    }
</script>
<% String[] gens = {"1","2","3","4","5","6","7","mega","8","gmax","hisui","9"};
String[] regions = {"관동지방","성도지방","호연지방","신오지방","하나지방","칼로스지방","알로라지방","메가진화","가라르지방","거다이맥스","히스이","팔데아지방"};
int[] nums = {152,100,135,107,156,72,106,50,108,35,24,124};
int cnt=0;
%>
    <div class="container text-center">
    <%for(int i=0; i<3; i++){%>
        <div class="row">
            <%for(int j=0; j<4; j++){%>
                <div class="col-md-3 col-6 region-div" onclick="goDex('<%=gens[cnt]%>')">
                    <div class="rounded-4 div1">
                        <h7 class="region_name"><%=regions[cnt]%></h7><h7 class="poke_num"><%=nums[cnt]%></h7></div></div>
            <%cnt++;
        }%>
        </div>
    <%}%> 
</div>
<%@ include file="./layouts/footer.jsp" %>
</body>
</html>