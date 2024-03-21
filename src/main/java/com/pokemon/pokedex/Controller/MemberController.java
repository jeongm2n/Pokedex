package com.pokemon.pokedex.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pokemon.pokedex.Service.MemberService;




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
