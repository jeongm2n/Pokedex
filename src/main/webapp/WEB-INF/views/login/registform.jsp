<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layouts/login-header.jsp" %>
<div class="container">
    <div class="card login-card">
        <div class="card-body">
            <form action="/regist" method="post">
                <table id="registtbl">
                    <tr>
                        <th>아이디</th><td><input id="ID" name="ID" type="text" class="form-control"></td>
                        <td style="width:15%;"><button id="dchk1" class="btn btn-secondary chkbtn" style="font-size:7pt;">중복확인</button>
                        <button id="chk1" class="btn"><img id="gchk1" src="/img/check.png" style="width:5vw"></button></td>
                    </tr>
                    <tr style="height:10vh">
                        <th style="vertical-align:top;">비밀번호</th><td><input id="pwd1" name="pwd" type="password" class="form-control" id="inputPassword2" placeholder="Password">
                            <div id="p1" class="p">6~9 글자 길이</div>
                            <div id="p2" class="p">영어 소문자, 숫자 2가지 조합</div></td><td></td>
                    </tr>
                    <tr>
                        <th style="vertical-align:top;">2차 확인</th><td><input id="pwd2" type="password" class="form-control" id="inputPassword2" placeholder="비밀번호를 똑같이 입력해주세요.">
                    </tr>
                    <tr>
                        <th>별명</th><td><input id="nick" name="nickname" type="text" class="form-control"></td>
                        <td style="width:15%;"><button id="dchk2" class="btn btn-secondary chkbtn" style="font-size:7pt;">중복확인</button>
                        <button id="chk2" class="btn"><img id="gchk2" src="/img/check.png" style="width:5vw"></button></td>
                    </tr>
                    <tr><td colspan="3" style="text-align:right"><input class="btn btn-primary" type="submit" onclick="return goRegist()" value="가입하기"></td></tr>
                </table>
            </form>
        </div>
    </div>
</div>
<%@ include file="../layouts/login-footer.jsp" %>
</body>
</html>
<script src="/js/regist.js"></script>