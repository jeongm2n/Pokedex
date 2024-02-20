package com.pokemon.pokedex.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import retrofit2.Retrofit;
import retrofit2.Call;
import retrofit2.Response;
import java.io.IOException;
import java.util.ArrayList;
import retrofit2.converter.gson.GsonConverterFactory;

@Controller
public class PokedexController {
    
    @GetMapping("/main")
    public ModelAndView goMain() {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("main");
        return mav;
    }
}
