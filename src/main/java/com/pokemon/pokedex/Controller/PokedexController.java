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
    ArrayList<Pokemon> hoyeon;
    ArrayList<Pokemon> shinoh;
    ArrayList<Pokemon> hana;
    ArrayList<Pokemon> carlos;
    ArrayList<Pokemon> alola;
    ArrayList<Pokemon> galar;
    ArrayList<Pokemon> paldea;
    ArrayList<Pokemon> hisui;
    
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

        mav.addObject("pokemons", gwandong);
        mav.setViewName("pokedex");
        return mav;
    }

    @GetMapping("/seongdo")
    public ModelAndView goSeongdo() throws IOException{
        ModelAndView mav = new ModelAndView();
        
        if(seongdo == null){
            seongdo = pokeDAO.allList(152,251);
        }

        mav.addObject("pokemons", seongdo);
        mav.setViewName("pokedex");
        return mav;
    }

    @GetMapping("/hoyeon")
    public ModelAndView goHoyeon() throws IOException{
        ModelAndView mav = new ModelAndView();
        
        if(hoyeon== null){
            hoyeon = pokeDAO.allList(252,386);
        }

        mav.addObject("pokemons", hoyeon);
        mav.setViewName("pokedex");
        return mav;
    }

    @GetMapping("/shinoh")
    public ModelAndView goShinoh() throws IOException {
        ModelAndView mav = new ModelAndView();
        
        if(shinoh == null){
            shinoh = pokeDAO.allList(387,493);
        }

        mav.addObject("pokemons", shinoh);
        mav.setViewName("pokedex");
        return mav;
    }

    @GetMapping("/hana")
    public ModelAndView goHana() throws IOException {
        ModelAndView mav = new ModelAndView();
        
        if(hana == null){
            hana = pokeDAO.allList(494,649);
        }

        mav.addObject("pokemons", hana);
        mav.setViewName("pokedex");
        return mav;
    }
    
    @GetMapping("/carlos")
    public ModelAndView goCarlos() throws IOException {
        ModelAndView mav = new ModelAndView();
        
        if(carlos == null){
            carlos = pokeDAO.allList(650,721);
        }

        mav.addObject("pokemons", carlos);
        mav.setViewName("pokedex");
        return mav;
    }

    @GetMapping("/alola")
    public ModelAndView goAlola() throws IOException {
        ModelAndView mav = new ModelAndView();
        
        if(alola == null){
            alola = pokeDAO.allList(722,809);
        }

        mav.addObject("pokemons", alola);
        mav.setViewName("pokedex");
        return mav;
    }

    @GetMapping("/galar")
    public ModelAndView goGalar() throws IOException {
        ModelAndView mav = new ModelAndView();
        
        if(galar == null){
            galar = pokeDAO.allList(810,898);
        }

        mav.addObject("pokemons", galar);
        mav.setViewName("pokedex");
        return mav;
    }

    @GetMapping("/hisui")
    public ModelAndView goHisui() throws IOException {
        ModelAndView mav = new ModelAndView();
        
        if(hisui == null){
            hisui = pokeDAO.allList(899,905);
        }

        mav.addObject("pokemons", hisui);
        mav.setViewName("pokedex");
        return mav;
    }
    

    @GetMapping("/paldea")
    public ModelAndView goPaldea() throws IOException {
        ModelAndView mav = new ModelAndView();
        
        if(paldea == null){
            paldea = pokeDAO.allList(906,1024);
        }

        mav.addObject("pokemons", paldea);
        mav.setViewName("pokedex");
        return mav;
    }
    
}
