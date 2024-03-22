package com.pokemon.pokedex.Controller;

import java.io.PrintWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pokemon.pokedex.Entity.Member;
import com.pokemon.pokedex.Service.MemberService;

import jakarta.servlet.http.HttpServletResponse;

@Controller
public class MemberController {
    @Autowired
    MemberService memberService;

    @GetMapping("/loginpage")
    public String goLoginpage() {
        return "login/login";
    }

    @GetMapping("/registpage")
    public String goRegistpage() {
        return "login/registform";
    }

    @PostMapping("/dologin")
    public String goLogin(HttpServletResponse response, @RequestParam String ID, String pwd, Model model)throws Exception{
        //TODO: process POST request
        Member result = memberService.goLogin(ID,pwd);
        if(result==null){
            PrintWriter out = response.getWriter();
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			out.println("<script> alert('아이디 또는 비밀번호를 확인해주세요.');");
			out.println("history.go(-1); </script>"); 
			out.close();
			return ""; 
        }else{
            model.addAttribute("nickname", result.getNickname());
            return "main";
        }
    }
    

    @PostMapping("/dcheckId")
    @ResponseBody
    public String doubleCheckId(@RequestParam String id) {
        //TODO: process POST request
        int result = memberService.getCheckId(id);
        System.out.println(result);
        if(result==1){
            return "true";
        }else{
            return "false";
        }
    }

    @PostMapping("/dcheckNick")
    @ResponseBody
    public String doubleCheckNick(@RequestParam String nickname) {
        //TODO: process POST request
        int result = memberService.getCheckNick(nickname);
        if(result==1){
            return "true";
        }else{
            return "false";
        }
    }

    @PostMapping("/regist")
    public String postMethodName(@RequestParam String ID, String pwd, String nickname) {
        //TODO: process POST request
        memberService.insertMember(ID,pwd,nickname);
        return goLoginpage();
    }
    
}
