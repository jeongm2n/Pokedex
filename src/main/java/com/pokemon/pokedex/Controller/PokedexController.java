package com.pokemon.pokedex.Controller;

import com.pokemon.pokedex.DAO.PokemonJSON;
import com.pokemon.pokedex.Entity.Pokemon;
import com.pokemon.pokedex.Entity.PokemonDetail;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.ArrayList;

@Controller
public class PokedexController {
    int[] nums = {};
    @GetMapping("main")
    public String goMain() throws IOException{
        return "main";
    }

    @GetMapping("/generation/{num}")
    public ModelAndView goJSON(@PathVariable String num) throws IOException {
        ModelAndView mav = new ModelAndView();

        PokemonJSON pokeJSON = new PokemonJSON();

        ArrayList<Pokemon> pokemons = pokeJSON.getData(num);

        mav.addObject("pokemons", pokemons);
        mav.setViewName("pokedex");
        return mav;
    }

    @GetMapping("/detail")
    public ModelAndView goDetail(@RequestParam("no") int no,@RequestParam("name") String name ,@RequestParam("gen") String gen){
        ModelAndView mav = new ModelAndView();
        PokemonJSON pokeJSON = new PokemonJSON();

        PokemonDetail pokemon = pokeJSON.getDatas(name,gen);

        mav.addObject("pokemon", pokemon);
        mav.setViewName("detail");
        return mav;
    }

    /*
    import java.io.File;
    import com.fasterxml.jackson.databind.ObjectMapper;
        ObjectMapper mapper = new ObjectMapper();
        ArrayList<Pokemon> pokemons = new ArrayList<>();
        try {
            // JSON 파일로 쓰기
            mapper.writeValue(new File("./jsons/formchange3.json"), pokemons);
            System.out.println("JSON 파일이 생성되었습니다.");
        } catch (Exception e) {
            e.printStackTrace();
        }*/
}
