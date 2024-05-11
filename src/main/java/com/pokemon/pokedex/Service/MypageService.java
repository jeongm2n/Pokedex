package com.pokemon.pokedex.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;

import com.pokemon.pokedex.Entity.Bag;
import com.pokemon.pokedex.Entity.Box;
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

    public void updateBall(String mem_id, String name){
        mymapper.updateBall(mem_id, name);
    }

    public int rewardselectBall(String mem_id, String rewardname){
        return mymapper.rewardselectBall(mem_id, rewardname);
    }

    public void rewardInsert(String mem_id, String rewardname, int rewardmany){
        mymapper.rewardInsert(mem_id,rewardname,rewardmany);
    }

    public void rewardUpdate(String mem_id, String rewardname, int rewardmany){
        mymapper.rewardUpdate(mem_id, rewardname, rewardmany);
    }

    public int selectBall(String mem_id, String name){
        return mymapper.selectBall(mem_id, name);
    }

    public ArrayList<Box> getBox(String mem_id){
        return mymapper.getBox(mem_id);
    }
}
