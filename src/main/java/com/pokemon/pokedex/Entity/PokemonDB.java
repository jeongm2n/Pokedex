package com.pokemon.pokedex.Entity;

import lombok.Data;

@Data
public class PokemonDB {
    private int pk;
    private int no;
    private String name;
    private String img;
    private String type1;
    private String type2;
    private int percent;
}
