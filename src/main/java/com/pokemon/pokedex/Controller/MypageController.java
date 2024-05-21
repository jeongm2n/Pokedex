package com.pokemon.pokedex.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.ArrayList;

import com.pokemon.pokedex.Entity.Bag;
import com.pokemon.pokedex.Entity.Box;
import com.pokemon.pokedex.Entity.PokemonDB;
import com.pokemon.pokedex.Service.MypageService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MypageController {
    @Autowired
    MypageService mypageService;

    @GetMapping("/mybag")
    public ModelAndView getMybag(@RequestParam String mem_id) {
        ModelAndView mav = new ModelAndView();
        ArrayList<Bag> myBag = mypageService.getBag(mem_id);

        mav.addObject("mybags", myBag);
        mav.setViewName("/mypage/bag");

        return mav;
    }

    @GetMapping("/mybox")
    public ModelAndView getMyBox(@RequestParam String mem_id) {
        ModelAndView mav = new ModelAndView();
        ArrayList<Box> myBox = mypageService.getBox(mem_id);
        
        mav.addObject("mybox", myBox);
        mav.setViewName("/mypage/box");
        return mav;
    }

    @GetMapping("/boxdetail")
    @ResponseBody
    public PokemonDB getBoxDetail(@RequestParam int pk) {
        PokemonDB poke = mypageService.getDetail(pk);
        return poke;
    }
    
    
}
