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
    int[] nums = {386,413,492,487,479,351,550,555,648,641,642,645,646,647,681,720,718,741,745,801,800,849,888,889,892,483,484,905,964,978,999,901,1017,1024};
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

        for(int i=0; i<nums.length; i++){
            if(no==nums[i]){
                ArrayList<PokemonDetail> pokemons = pokeJSON.getFormchange(no);
                mav.addObject("pokemons", pokemons);
                mav.addObject("no", no);
                mav.setViewName("detail_fc");
                break;
            }
            else{
                PokemonDetail pokemon = pokeJSON.getNormal(name,gen);

                mav.addObject("pokemon", pokemon);
                mav.setViewName("detail");
            }
        }
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
