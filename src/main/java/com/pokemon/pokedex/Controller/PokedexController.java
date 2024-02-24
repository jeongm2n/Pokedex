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
        
        /*int[] nums = {890};
        int[] nums1 = {3,6,9,12,25,52,68,94,99,131,133,143,569,809,812,815,818,823,826,834,839,841,842,844,849};
        int[] nums2 = {849};
        int[] nums3 = {851,858,861,869,879,884};
        int[] nums4 = {892,892};
        pokemons.addAll(pokeDAO.allList(10195, 10219, nums1));
        pokemons.addAll(pokeDAO.allList(10228, 10228, nums2));
        pokemons.addAll(pokeDAO.allList(10220, 10225, nums3));
        pokemons.addAll(pokeDAO.allList(10226, 10227, nums4));
        pokemons.addAll(pokeDAO.allList(10190, 10190, nums));
        try {
            // JSON 파일로 쓰기
            mapper.writeValue(new File("gmax.json"), pokemons);
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
