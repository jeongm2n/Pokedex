<div id="tb">
    <div><button id="top" class="b rounded-circle" style="background-image:url('/img/top.png');"></button></div>
    <div><button id="bottom" class="b rounded-circle" style="background-image:url('/img/bottom.png');"></button></div>
</div>
<footer>
    <nav class="nav">
        <a class="nav-link sns" href="https://velog.io/@jeongm2n">Velog</a>
        <a class="nav-link sns" href="https://github.com/jeongm2n">Github</a>
        <a class="nav-link sns" href="https://www.instagram.com/jj.m2n_">Instagram</a>
    </nav>
</footer>
<script>
    $(window).scroll(function() {
        // 스크롤 이동 시 실행되는 코드
        if($(this).scrollTop()>400){
            $("#tb").show();
        }else{
            $("#tb").hide();
        }
    });

    $("#top").click(function(){
        $("html, body").animate({scrollTop: 0}, "fast");
    });
    $("#bottom").click(function(){
        $("html, body").animate({scrollTop: $(document).height()}, "fast");
    });
</script>