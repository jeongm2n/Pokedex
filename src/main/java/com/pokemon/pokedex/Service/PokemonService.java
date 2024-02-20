package com.pokemon.pokedex.Service;

import java.util.List;
import retrofit2.Call;
import com.pokemon.pokedex.VO.PokemonVO;

public interface PokemonService {
    public Call<List<PokemonVO>> allList();
}
