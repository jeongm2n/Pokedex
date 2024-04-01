package com.pokemon.pokedex.Mapper;

import org.apache.ibatis.annotations.Mapper;
import java.util.ArrayList;

import com.pokemon.pokedex.Entity.Bag;

@Mapper
public interface MypageMapper {
    ArrayList<Bag> getBag(String mem_id);
    ArrayList<Bag> getBalls(String mem_id);
    void insertBox(int poke_pk, String mem_id, String name);
    void updateBall(int many, String mem_id, String name);
}
