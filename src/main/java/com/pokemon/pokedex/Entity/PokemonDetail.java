package com.pokemon.pokedex.Entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class PokemonDetail {
    private int no;
    private String korean;
    private String eng;
    private String genus;
    private String img;
    private String simg;
    private String[] types = new String[2];
    private ArrayList<Ability> abilities;
    private ArrayList<PokedexDes> des;
    private Female female;

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

    @Getter
    @Setter
    @AllArgsConstructor
    public static class Female{
        private String f_img;
        private String fs_img;
    }

}
