package com.pokemon.pokedex.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pokemon.pokedex.Entity.PokemonDB;
import com.pokemon.pokedex.Service.PokemonService;


@Controller
public class TripController {
    @Autowired
    PokemonService ps;

    @GetMapping("/catchpage")
    public ModelAndView goCatchpage(@RequestParam String region, String mem_id) {
        ModelAndView mav = new ModelAndView();
        PokemonDB pokemon = ps.getRand(mem_id, region);
        mav.addObject("pokemon", pokemon);
        mav.setViewName("/trip/catch");
        return mav;
    }
    
}
