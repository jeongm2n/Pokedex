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
import java.util.Collections;

@Controller
public class PokedexController {
    PokemonDAO pokeDAO = new PokemonDAO();

    @GetMapping("main")
    public String goMain() throws IOException{
        ObjectMapper mapper = new ObjectMapper();
        ArrayList<Pokemon> pokemons = new ArrayList<>();
        
        /*int[] nums1 = {3,6,6,9,65,94,115,127,130,142,150,150,181,212,214,229,248,257,282,303,306,308,310,354,359,445,448,460};
        int[] nums2 = {380,381,260,254,302,334,475,531,319,80,208,18,362,719,376,382,383,384};
        int[] nums3 = {323,428,373,15};
        pokemons.addAll(pokeDAO.allList(10033, 10060, nums1));
        pokemons.addAll(pokeDAO.allList(10062, 10079, nums2));
        pokemons.addAll(pokeDAO.allList(10087, 10090, nums3));
        try {
            // JSON 파일로 쓰기
            mapper.writeValue(new File("mega.json"), pokemons);
            System.out.println("JSON 파일이 생성되었습니다.");
        } catch (Exception e) {
            e.printStackTrace();
        }*/
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
