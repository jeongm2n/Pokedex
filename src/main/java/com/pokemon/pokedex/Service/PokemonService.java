package com.pokemon.pokedex.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pokemon.pokedex.Entity.PokemonDB;
import com.pokemon.pokedex.Mapper.PokemonMapper;

@Service
public class PokemonService {
    @Autowired
    PokemonMapper mapper;

    public PokemonDB getRand(String mem_id, String region){
        return mapper.getRand(mem_id, region);
    }
}
