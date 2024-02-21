package com.pokemon.pokedex.DAO;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.pokemon.pokedex.Entity.Pokemon;
import com.pokemon.pokedex.Service.PokemonService;
import com.pokemon.pokedex.VO.PokemonVO;

import retrofit2.Call;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class PokemonDAO {
    private String baseUrl = "https://pokeapi.co/api/v2/";
    private Retrofit retrofit;
    //private PokeServiceImpl pokemonImpl;
    private PokemonService pokeService;

    public PokemonDAO(){
        retrofit = new Retrofit.Builder()
                .baseUrl(baseUrl)
                .addConverterFactory(GsonConverterFactory.create())
                .build();
    }

    public ArrayList<Pokemon> allList() throws IOException{
        try {
            Pokemon pokemon;
            ArrayList<Pokemon> pokeArray = new ArrayList<>();
            PokemonVO pokeVO1;
            PokemonVO pokeVO2;
            pokeService = retrofit.create(PokemonService.class);
            for(int i=1; i<10; i++){
                String no = Integer.toString(i);
                Call<PokemonVO> call1 = pokeService.getspeciesData(no);
                Call<PokemonVO> call2 = pokeService.getpokemonData(no);
                Response<PokemonVO> response1 = call1.execute();
                Response<PokemonVO> response2 = call2.execute();
                if (response1.isSuccessful() && response2.isSuccessful()) {
                    String img = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/"+i+".png";
                    pokeVO1 = response1.body();
                    List<PokemonVO.NameInfo> names = pokeVO1.getNames();
                    PokemonVO.NameInfo nameInfo = names.get(2);
                    String name = nameInfo.getName();
                    pokemon = new Pokemon(i,name,img);
                    System.out.println(name);
                    pokeArray.add(pokemon);
                } else {
                    throw new IOException("Failed to fetch Pokemon info");
                }
            }
            return pokeArray;
        } catch (IOException e) {
            e.printStackTrace();
            // IOException 처리 로직 추가
            return null; // 또는 예외를 다시 throw하여 상위 메서드로 전파
        }
    }
}
