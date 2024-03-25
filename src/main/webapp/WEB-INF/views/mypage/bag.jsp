<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layouts/header.jsp" %>
<link rel="stylesheet" href="/css/mypagecss.css">
<div class="container bag-con">
<div class="card" style="height:50vh">
    <div class="card-body" style="background-color: OldLace;">
    <h4 class="card-title"><%=nickname%>의 가방</h4>
    <table class="table table-hover bagtbl">
        <c:forEach var="item" items="${mybags}">
        <tr>
            <td>${item.name}</td>
            <td>x ${item.many}</td>
        </tr>
        </c:forEach>
    </table>
    </div>
</div>
</div>

<%@ include file="../layouts/footer.jsp" %>
</body>
</html>