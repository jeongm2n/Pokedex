package com.pokemon.pokedex.Entity;

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
}
