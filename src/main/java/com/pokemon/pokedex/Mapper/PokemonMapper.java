package com.pokemon.pokedex.Mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.pokemon.pokedex.Entity.PokemonDB;

@Mapper
public interface PokemonMapper {
    PokemonDB getRand(@Param("mem_id") String mem_id, @Param("region") String region);
}
