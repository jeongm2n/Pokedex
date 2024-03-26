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
}
