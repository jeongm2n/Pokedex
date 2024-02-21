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

    @GetMapping("/main")
    public ModelAndView goMain() throws IOException{
        ModelAndView mav = new ModelAndView();
        
        ArrayList<Pokemon> gwandong = new ArrayList<>();
        gwandong = pokeDAO.allList();

        mav.addObject("gwandong", gwandong);
        mav.setViewName("main");
        return mav;
    }
}
