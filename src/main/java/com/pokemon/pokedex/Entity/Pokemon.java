package com.pokemon.pokedex.Entity;

import java.lang.reflect.Array;
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
    private String simg;
    private String[] types = new String[2];
    private ArrayList<Ability> abilities;
    private ArrayList<PokedexDes> des;
    private String genus;
    
    @Getter
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
