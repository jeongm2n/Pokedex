<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layouts/login-header.jsp" %>
<div class="container">
    <div class="card login-card">
        <div class="card-body">
            <form>
                <table id="registtbl">
                    <tr>
                        <th>아이디</th><td><input id="ID" type="text" class="form-control"></td>
                        <td style="width:15%;"><button id="dchk1" class="btn btn-secondary chkbtn" style="font-size:7pt;">중복확인</button>
                        <button id="chk1" class="btn"><img src="/img/check.png" style="width:5vw"></button></td>
                    </tr>
                    <tr style="height:10vh">
                        <th>비밀번호</th><td><input id="pwd" type="password" class="form-control" id="inputPassword2" placeholder="Password">
                            <div class="p">8~9글자</div>
                            <div class="p">영어, 숫자 , 특수문자 중 최소 2가지 조합</div></td><td></td>
                    </tr>
                    <tr>
                        <th>별명</th><td><input id="nick" type="text" class="form-control"></td>
                        <td style="width:15%;"><button id="dchk2" class="btn btn-secondary chkbtn" style="font-size:7pt;">중복확인</button>
                        <button id="chk2" class="btn"><img src="/img/check.png" style="width:5vw"></button></td>
                    </tr>
                    <tr><td colspan="3" style="text-align:right"><input class="btn btn-primary" type="submit" value="가입하기"></td></tr>
                </table>
            </form>
        </div>
    </div>
</div>
<script>
    $(document).ready(function(){
        $('#dchk1').click(function(event) {
            event.preventDefault();
            var id = $("#ID").val();

            if(id == '') {
    			alert('아이디를 입력해주세요.');
    			return false;
    		}else{
                $.ajax({
                    url: '/dcheckId', // 서버로 요청을 보낼 URL
                    type: 'POST', // HTTP 요청 메서드 (GET, POST 등)
                    data:{
                        id : id
                    },
                    dataType: 'text', // 서버의 응답으로 받을 데이터 타입
                    success: function(response) { // 성공적으로 응답을 받았을 때 실행할 콜백 함수
                        if(response == "true"){
                            alert('이미 존재하는 아이디입니다.');
                        }else{
                            alert('사용 가능한 아이디입니다.');
                            $("#dchk1").hide();
                            $("#chk1").prop('disabled',true);
                            $("#ID").prop('disabled',true);
                            //$("#chk1").css('background-color','SpringGreen');
                        }
                    },
                    error: function(xhr, status, error) { // 에러가 발생했을 때 실행할 콜백 함수
                        console.error('AJAX Error:', status, error); // 에러 로그 출력
                    }
                });
            }
        });
    });
</script>
<%@ include file="../layouts/login-footer.jsp" %>
</body>
</html>