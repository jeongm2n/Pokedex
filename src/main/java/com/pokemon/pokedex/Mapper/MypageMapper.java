package com.pokemon.pokedex.Mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

import com.pokemon.pokedex.Entity.Bag;
import com.pokemon.pokedex.Entity.Box;
import com.pokemon.pokedex.Entity.PokemonDB;

@Mapper
public interface MypageMapper {
    ArrayList<Bag> getBag(String mem_id);
    ArrayList<Bag> getBalls(String mem_id);
    void insertBox(@Param("poke_pk") int poke_pk, @Param("mem_id") String mem_id, @Param("name") String name);
    void updateBall(@Param("mem_id") String mem_id, @Param("name") String name);
    int rewardselectBall(@Param("mem_id") String mem_id, @Param("rewardname") String rewardname);
    void rewardInsert(@Param("mem_id") String mem_id, @Param("rewardname") String rewardname, @Param("rewardmany") int rewardmany);
    void rewardUpdate(@Param("mem_id") String mem_id, @Param("rewardname") String rewardname, @Param("rewardmany") int rewardmany);
    int selectBall(@Param("mem_id") String mem_id, @Param("name") String name);
    ArrayList<Box> getBox(String mem_id);
    PokemonDB getDetail(int pk);
}
