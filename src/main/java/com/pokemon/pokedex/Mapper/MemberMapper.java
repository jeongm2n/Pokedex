package com.pokemon.pokedex.Mapper;

import org.apache.ibatis.annotations.Mapper;

import com.pokemon.pokedex.Entity.Member;

@Mapper
public interface MemberMapper {
    int checkId(String id);
    int checkNick(String nick);
    void insertMember(String id, String password, String nickname);
    void insertBag(String mem_id, String name, String category, int many);
    Member goLogin(String id, String password);
}
