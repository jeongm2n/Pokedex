package com.pokemon.pokedex.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pokemon.pokedex.Entity.Member;
import com.pokemon.pokedex.Mapper.MemberMapper;

@Service
public class MemberService {
    @Autowired
    MemberMapper member;

    public int getCheckId(String id){
        return member.checkId(id);
    }

    public int getCheckNick(String nick){
        return member.checkNick(nick);
    }

    public void insertMember(String id, String password, String nickname){
        member.insertMember(id,password,nickname);
    }

    public void insertBag(String mem_id, String name, String category, int many){
        member.insertBag(mem_id, name, category, many);
    }

    public Member goLogin(String id, String password){
        return member.goLogin(id, password);
    }
}
