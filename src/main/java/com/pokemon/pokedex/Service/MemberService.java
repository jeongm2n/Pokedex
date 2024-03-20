package com.pokemon.pokedex.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pokemon.pokedex.Mapper.MemberMapper;

@Service
public class MemberService {
    @Autowired
    MemberMapper member;

    public int getCheckId(String id){
        return member.checkId(id);
    }
}
