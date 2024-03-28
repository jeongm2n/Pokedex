package com.pokemon.pokedex.Mapper;

import org.apache.ibatis.annotations.Mapper;

import com.pokemon.pokedex.Entity.PokemonDB;

@Mapper
public interface PokemonMapper {
    PokemonDB getRand(String mem_id, String region);
}
