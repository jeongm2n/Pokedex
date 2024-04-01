package com.pokemon.pokedex.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;

import com.pokemon.pokedex.Entity.Bag;
import com.pokemon.pokedex.Mapper.MypageMapper;

@Service
public class MypageService {
    @Autowired
    MypageMapper mymapper;

    public ArrayList<Bag> getBag(String mem_id){
        return mymapper.getBag(mem_id);
    }

    public ArrayList<Bag> getBalls(String mem_id){
        return mymapper.getBalls(mem_id);
    }

    public void insertBox(int poke_pk, String mem_id, String name){
        mymapper.insertBox(poke_pk, mem_id, name);
    }

    public void updateBall(int many, String mem_id, String name){
        mymapper.updateBall(many, mem_id, name);
    }
}
