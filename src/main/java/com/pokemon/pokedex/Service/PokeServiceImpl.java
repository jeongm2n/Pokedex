package com.pokemon.pokedex.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pokemon.pokedex.VO.PokemonVO;

import retrofit2.Call;

@Service
public class PokeServiceImpl implements PokemonService{

    @Override
    public Call<List<PokemonVO>> allList() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'allList'");
        
    }
    
}
