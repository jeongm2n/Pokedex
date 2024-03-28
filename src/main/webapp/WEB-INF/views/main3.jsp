<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./layouts/header.jsp" %>
<% String[] gens = {"gwandong","seongdo","hoyeon","shinoh","hana","carlos","alola","galar","hisui"};
String[] regions = {"관동지방","성도지방","호연지방","신오지방","하나지방","칼로스지방","알로라지방","가라르지방","히스이"};
int[] nums = {152,100,135,107,156,72,106,50,108,35,24,124};
int cnt=0;
%>
<script>
    function goCatchpage(region){
        var mem_id = '<%=mem_id%>';
        if(mem_id=='null'){
            alert('먼저 로그인을 해주세요!');
        }else{
            window.location.href = '/catchpage?region='+region+'&mem_id='+mem_id;
        }
    }
</script>

    <div class="container text-center">
    <%for(int i=0; i<3; i++){%>
        <div class="row">
            <div class="col-md-1 null-div"></div>
            <%for(int j=0; j<3; j++){%>
                <div class="col-md-3 col-4 region-div" onclick="goCatchpage('<%=gens[cnt]%>')">
                    <div class="rounded-4 div1">
                        <div class="region_name"><%=regions[cnt]%></div>
                        <div class="poke_num"><%=nums[cnt]%></div></div></div>
            <%cnt++;
        }%>
        </div>
    <%}%> 
</div>
<%@ include file="./layouts/footer.jsp" %>
</body>
</html>