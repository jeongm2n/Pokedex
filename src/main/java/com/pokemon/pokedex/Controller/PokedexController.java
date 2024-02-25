package com.pokemon.pokedex.Controller;

import java.io.File;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.pokemon.pokedex.DAO.PokemonDAO;
import com.pokemon.pokedex.DAO.PokemonJSON;
import com.pokemon.pokedex.Entity.Pokemon;
import com.pokemon.pokedex.VO.FemaleVO;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.ArrayList;

@Controller
public class PokedexController {
    PokemonDAO pokeDAO = new PokemonDAO();

    @GetMapping("main")
    public String goMain() throws IOException{
        ObjectMapper mapper = new ObjectMapper();
        ArrayList<Pokemon> pokemons = new ArrayList<>();
        /* */
        pokemons.addAll(pokeDAO.allList(10001, 10024));
        pokemons.addAll(pokeDAO.allList(10026, 10026));
        pokemons.addAll(pokeDAO.allList(10077, 10078));
        pokemons.addAll(pokeDAO.allList(10086, 10086));
        pokemons.addAll(pokeDAO.allList(10118, 10120));
        pokemons.addAll(pokeDAO.allList(10123, 10127));
        pokemons.addAll(pokeDAO.allList(10147, 10147));
        pokemons.addAll(pokeDAO.allList(10155, 10157));
        pokemons.addAll(pokeDAO.allList(10178, 10178));
        pokemons.addAll(pokeDAO.allList(10184, 10184));
        pokemons.addAll(pokeDAO.allList(10188, 10189));
        pokemons.addAll(pokeDAO.allList(10191, 10191));
        /*pokemons.addAll(pokeDAO.allList(10245, 10246));
        pokemons.addAll(pokeDAO.allList(10249, 10249));
        pokemons.addAll(pokeDAO.allList(10256, 10256));
        pokemons.addAll(pokeDAO.allList(10258, 10259));
        pokemons.addAll(pokeDAO.allList(10260, 10263));
        pokemons.addAll(pokeDAO.allList(10272, 10277));*/

        try {
            // JSON 파일로 쓰기
            mapper.writeValue(new File("./jsons/formchange.json"), pokemons);
            System.out.println("JSON 파일이 생성되었습니다.");
        } catch (Exception e) {
            e.printStackTrace();
        }
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
        mapper.writeValue(new File("./jsons/1.json"), gwandong);
        System.out.println("JSON 파일이 생성되었습니다.");
    } catch (Exception e) {
        e.printStackTrace();
    }*/
}
