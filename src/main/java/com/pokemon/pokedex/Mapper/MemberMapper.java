package com.pokemon.pokedex.Mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
    boolean checkId(String id);
}
