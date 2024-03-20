<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layouts/login-header.jsp" %>
<div class="container">
    <div class="card login-card">
        <div class="card-body">
            <form>
                <table id="registtbl">
                    <tr>
                        <th>아이디</th><td><input type="text" class="form-control"></td>
                        <td style="width:15%;"><button class="btn btn-secondary chkbtn" style="font-size:7pt;">중복확인</button>
                        <button id="chk1" class="btn"><img src="/img/check.png" style="width:5vw"></button></td>
                    </tr>
                    <tr style="height:10vh">
                        <th>비밀번호</th><td><input type="password" class="form-control" id="inputPassword2" placeholder="Password">
                            <div class="p">8~9글자</div>
                            <div class="p">영어, 숫자 , 특수문자 중 최소 2가지 조합</div></td><td></td>
                    </tr>
                    <tr>
                        <th>별명</th><td><input type="text" class="form-control"></td>
                        <td style="width:15%;"><button class="btn btn-secondary chkbtn" style="font-size:7pt;">중복확인</button>
                        <button id="chk2" class="btn"><img src="/img/check.png" style="width:5vw"></button></td>
                    </tr>
                    <tr><td colspan="3" style="text-align:right"><input class="btn btn-primary" type="submit" value="가입하기"></td></tr>
                </table>
            </form>
        </div>
    </div>
</div>
<%@ include file="../layouts/login-footer.jsp" %>
</body>
</html>