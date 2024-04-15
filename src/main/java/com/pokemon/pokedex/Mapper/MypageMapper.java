package com.pokemon.pokedex.Mapper;

import org.apache.ibatis.annotations.Mapper;
import java.util.ArrayList;

import com.pokemon.pokedex.Entity.Bag;
import com.pokemon.pokedex.Entity.Box;

@Mapper
public interface MypageMapper {
    ArrayList<Bag> getBag(String mem_id);
    ArrayList<Bag> getBalls(String mem_id);
    void insertBox(int poke_pk, String mem_id, String name);
    void updateBall(String mem_id, String name);
    void rewardBall(String mem_id, String rewardname, int rewardmany);
    int selectBall(String mem_id, String name);
    ArrayList<Box> getBox(String mem_id);
}
