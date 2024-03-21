package com.pokemon.pokedex.Mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
    int checkId(String id);
    int checkNick(String nick);
    void insertMember(String id, String password, String nickname);
}
