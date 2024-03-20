package com.pokemon.pokedex.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    public boolean doubleCheckId(@RequestParam String id) {
        //TODO: process POST request
        boolean result = memberService.getCheckId(id);
        return result;
    }
    
}
