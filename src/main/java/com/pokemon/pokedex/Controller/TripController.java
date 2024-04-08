package com.pokemon.pokedex.Controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pokemon.pokedex.Entity.Bag;
import com.pokemon.pokedex.Entity.PokemonDB;
import com.pokemon.pokedex.Service.MypageService;
import com.pokemon.pokedex.Service.PokemonService;
import org.springframework.web.bind.annotation.PostMapping;



@Controller
public class TripController {
    @Autowired
    PokemonService ps;

    @Autowired
    MypageService ms;

    @GetMapping("/catchpage")
    public ModelAndView goCatchpage(@RequestParam String region, String mem_id) {
        ModelAndView mav = new ModelAndView();
        PokemonDB pokemon = ps.getRand(mem_id, region);
        ArrayList<Bag> balls = ms.getBalls(mem_id);
        mav.addObject("pokemon", pokemon);
        mav.addObject("balls",balls);
        mav.setViewName("/trip/catch");
        return mav;
    }
    
    @PostMapping("/catch")
    public String pokeCatch(@RequestParam int poke_pk, String mem_id, String ballname) {

        ms.insertBox(poke_pk, mem_id, ballname);
        ms.updateBall(mem_id, ballname);        

        return "main3";
    }

    @PostMapping("/calcBall")
    @ResponseBody
    public String postMethodName(@RequestParam String mem_id, String ballname) {
        ms.updateBall(mem_id, ballname);
        String many = Integer.toString(ms.selectBall(mem_id, ballname));

        return many;
    }
}
