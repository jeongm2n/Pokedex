package com.pokemon.pokedex.Entity;

import java.util.ArrayList;

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
    private String simg;
    private String[] types = new String[2];
    private ArrayList<Ability> abilities;
    private String genus;
    private ArrayList<PokedexDes> des;
    
    @Getter
    @Setter
    @AllArgsConstructor
    public static class PokedexDes{
        String version;
        String flavor_text;
    }

    @Getter
    @AllArgsConstructor
    public static class Ability{
        String name;
        String hidden;
    }
}
