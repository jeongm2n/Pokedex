var checkedId = false;
var checkedPwd = false;
var checkedNick = false;

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
                        $("#chk1").prop('readonly',true);
                        $("#ID").prop('readonly',true);
                        checkedId = true;
                    }
                },
                error: function(xhr, status, error) { // 에러가 발생했을 때 실행할 콜백 함수
                    console.error('AJAX Error:', status, error); // 에러 로그 출력
                }
            });
        }
    });

    $('#chk1').click(function(event) {
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
                        $("#chk1").prop('readonly',true);
                        $("#ID").prop('readonly',true);
                        $("#gchk1").attr("src","/img/greencheck.png");
                        checkedId = true;
                    }
                },
                error: function(xhr, status, error) { // 에러가 발생했을 때 실행할 콜백 함수
                    console.error('AJAX Error:', status, error); // 에러 로그 출력
                }
            });
        }
    });

    $("#pwd1").keyup(function(){
        var txt = $(this).val();
        var num = txt.search(/[0-9]/g);
        var eng = txt.search(/[a-z]/ig);

        if(txt.length>=6 && txt.length<=9){
            $("#p1").css('color','green');
        }else{
            $("#p1").css('color','lightgray');
        }
        if(num>0 || eng>0){
            $("#p2").css('color','green');
        }else{
            $("#p2").css('color','lightgray');
        }
    });

    $("#pwd2").keyup(function(){
        var txt1 = $("#pwd1").val();
        var txt2 = $(this).val();

        if(txt1 == txt2){
            $("#pwd1").prop('readonly',true);
            $("#pwd2").prop('readonly',true);
            checkedPwd = true;
        }
    });

    $('#dchk2').click(function(event) {
        event.preventDefault();
        var nick = $("#nick").val();

        if(nick == '') {
            alert('별명을 입력해주세요.');
            return false;
        }else{
            $.ajax({
                url: '/dcheckNick', // 서버로 요청을 보낼 URL
                type: 'POST', // HTTP 요청 메서드 (GET, POST 등)
                data:{
                    nickname : nick
                },
                dataType: 'text', // 서버의 응답으로 받을 데이터 타입
                success: function(response) { // 성공적으로 응답을 받았을 때 실행할 콜백 함수
                    if(response == "true"){
                        alert('이미 존재하는 별명입니다.');
                    }else{
                        alert('사용 가능한 별명입니다.');
                        $("#dchk2").hide();
                        $("#chk2").prop('readonly',true);
                        $("#nick").prop('readonly',true);
                        checkedNick = true;
                    }
                },
                error: function(xhr, status, error) { // 에러가 발생했을 때 실행할 콜백 함수
                    console.error('AJAX Error:', status, error); // 에러 로그 출력
                }
            });
        }
    });

    $('#chk2').click(function(event) {
        event.preventDefault();
        var nick = $("#nick").val();
        
        if(nick == '') {
            alert('별명을 입력해주세요.');
            return false;
        }else{
            $.ajax({
                url: '/dcheckNick', // 서버로 요청을 보낼 URL
                type: 'POST', // HTTP 요청 메서드 (GET, POST 등)
                data:{
                    nickname : nick
                },
                dataType: 'text', // 서버의 응답으로 받을 데이터 타입
                success: function(response) { // 성공적으로 응답을 받았을 때 실행할 콜백 함수
                    if(response == "true"){
                        alert('이미 존재하는 별명입니다.');
                    }else{
                        alert('사용 가능한 별명입니다.');
                        $("#dchk2").hide();
                        $("#chk2").prop('readonly',true);
                        $("#nick").prop('readonly',true);
                        $("#gchk2").attr("src","/img/greencheck.png");
                        checkedNick = true;
                    }
                },
                error: function(xhr, status, error) { // 에러가 발생했을 때 실행할 콜백 함수
                    console.error('AJAX Error:', status, error); // 에러 로그 출력
                }
            });
        }
    });
});

function goRegist(){
    if(!checkedId){
        alert('아이디 중복 확인을 해주세요.');
        return false;
    }else if(!checkedPwd){
        alert('2차 비밀번호를 확인해주세요.');
        return false;
    }else if(!checkedNick){
        alert('별명 중복 확인을 해주세요.');
        return false;
    }else{
        if(confirm('회원가입을 하시겠습니까?')){
            alert('회원가입 되셨습니다.');
            return true;
        }else{
            return false;
        }
    }
}