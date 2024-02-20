package com.pokemon.pokedex.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class PokedexController {
    
    @GetMapping("/main")
    public ModelAndView goMain() {
        ModelAndView mav = new ModelAndView();
        
        mav.setViewName("main");
        return mav;
    }
}
