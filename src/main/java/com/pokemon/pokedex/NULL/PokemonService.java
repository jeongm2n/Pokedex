package com.pokemon.pokedex.NULL;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Path;

public interface PokemonService {
    @GET("pokemon-species/{no}")
    public Call<PokemonVO> getspeciesData(@Path("no") String no);

    @GET("pokemon/{no}")
    public Call<PokemonVO> getpokemonData(@Path("no") String no);

    @GET("ability/{no}")
    public Call<PokemonVO> getAbility(@Path("no") String no);
}
