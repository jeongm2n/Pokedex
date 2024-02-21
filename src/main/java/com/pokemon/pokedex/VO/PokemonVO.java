package com.pokemon.pokedex.VO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Getter
public class PokemonVO {
    private int no;
    private String name;
    private String type1;
    private String type2;
}
