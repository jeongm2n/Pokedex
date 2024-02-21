package com.pokemon.pokedex.Service;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Path;

import com.pokemon.pokedex.VO.PokemonVO;

public interface PokemonService {
    @GET("pokemon/{no}")
    public Call<PokemonVO> getData(@Path("no") String no);
}
