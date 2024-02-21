package com.pokemon.pokedex.Entity;

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
    /*private String type1;
    private String type2;
    private List<PokedexDes> des;*/
    
    @Getter
    public class PokedexDes{
        String version;
        String content;
    }
}
