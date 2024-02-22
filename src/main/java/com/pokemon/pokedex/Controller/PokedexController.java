package com.pokemon.pokedex.Controller;

import com.pokemon.pokedex.DAO.PokemonDAO;
import com.pokemon.pokedex.Entity.Pokemon;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.ArrayList;

@Controller
public class PokedexController {
    PokemonDAO pokeDAO = new PokemonDAO();
    ArrayList<Pokemon> gwandong;
    ArrayList<Pokemon> seongdo;
    
    @GetMapping("main")
    public String goMain(){
        return "main";
    }

    @GetMapping("/gwandong")
    public ModelAndView goGwandong() throws IOException{
        ModelAndView mav = new ModelAndView();
        
        if(gwandong == null){
            gwandong = pokeDAO.allList(1,151);
        }

        mav.addObject("gwandong", gwandong);
        mav.setViewName("pokedex");
        return mav;
    }

    @GetMapping("/seongdo")
    public ModelAndView goSeongdo() throws IOException{
        ModelAndView mav = new ModelAndView();
        
        if(seongdo == null){
            seongdo = pokeDAO.allList(152,250);
        }

        mav.addObject("seongdo", seongdo);
        mav.setViewName("pokedex");
        return mav;
    }
}
