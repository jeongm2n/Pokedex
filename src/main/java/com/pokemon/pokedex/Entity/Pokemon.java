package com.pokemon.pokedex.Entity;

import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Pokemon {
    private int no;
    private String korean;
    private String img;
    private String[] types = new String[2];
    private ArrayList<Ability> abilities;
    //private List<PokedexDes> des;
    
    @Getter
    public static class PokedexDes{
        String version;
        String content;
    }

    @Getter
    @AllArgsConstructor
    public static class Ability{
        String name;
        String hidden;
    }
}
