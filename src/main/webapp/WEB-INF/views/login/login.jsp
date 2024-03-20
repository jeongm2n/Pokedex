<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layouts/login-header.jsp" %>
<div class="container">
    <div class="card login-card">
        <div class="card-body" style="text-align:center;padding-top:10vh">
            <form>
            <table class="logintbl">
                <tr>
                    <td><img class="loginimg" src="/img/id.png"></td>
                    <td><input type="text" class="form-control" id="exampleFormControlInput1" placeholder="아이디"></td>
                </tr>
                <tr>
                    <td><img class="loginimg" src="/img/pwd.png"></td>
                    <td><input type="password" class="form-control" id="inputPassword" placeholder="비밀번호"></td>
                </tr>
                <tr>
                    <td colspan="2"><button type="submit" class="btn btn-primary btn-lg">로그인</button></td>
                </tr>
                <tr>
                    <td colspan="2"><a class="regist" href="/registpage">회원가입</a></td>
                </tr>
            </table>
            </form>
        </div>
    </div>
</div>
<%@ include file="../layouts/login-footer.jsp" %>
</body>
</html>