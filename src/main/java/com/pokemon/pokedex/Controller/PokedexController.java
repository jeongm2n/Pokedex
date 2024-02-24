package com.pokemon.pokedex.Controller;

import com.pokemon.pokedex.DAO.PokemonJSON;
import com.pokemon.pokedex.Entity.Pokemon;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.ArrayList;

@Controller
public class PokedexController {
    
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
    
    /*ObjectMapper mapper = new ObjectMapper();
    try {
        // JSON 파일로 쓰기
        mapper.writeValue(new File("1.json"), gwandong);
        System.out.println("JSON 파일이 생성되었습니다.");
    } catch (Exception e) {
        e.printStackTrace();
    }*/
}
