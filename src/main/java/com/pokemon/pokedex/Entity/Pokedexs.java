package com.pokemon.pokedex.Entity;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Getter
@Setter
public class Pokedexs {

    private ArrayList<PokedexDes> des;

    @Getter
    @Setter
    @AllArgsConstructor
    public static class PokedexDes{
        String version;
        String flavor_text;
    }
}
