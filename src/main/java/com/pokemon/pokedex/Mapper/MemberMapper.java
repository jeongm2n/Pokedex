package com.pokemon.pokedex.Mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.pokemon.pokedex.Entity.Member;

@Mapper
public interface MemberMapper {
    int checkId(String id);
    int checkNick(String nick);
    void insertMember(@Param("id") String id, @Param("password") String password, @Param("nickname") String nickname);
    void insertBag(@Param("mem_id") String mem_id, @Param("name") String name, @Param("category") String category, @Param("many") int many);
    Member goLogin(@Param("id") String id, @Param("password") String password);
}
