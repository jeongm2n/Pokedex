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
    private PokemonService pokeService;
    private Pokemon pokemon;
    private PokemonVO pokeVO;

    private String name;
    private String[] types;

    public PokemonDAO(){
        retrofit = new Retrofit.Builder()
                .baseUrl(baseUrl)
                .addConverterFactory(GsonConverterFactory.create())
                .build();
        pokeService = retrofit.create(PokemonService.class);
    }

    public ArrayList<Pokemon> allList() throws IOException{
        try {
            ArrayList<Pokemon> pokeArray = new ArrayList<>();
            for(int i=1; i<10; i++){
                String no = Integer.toString(i);
                if (getspeciesData(no) && getpokemonData(no)) {
                    String img = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/"+i+".png";
                    pokemon = new Pokemon(i,name,img,types);
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

    public boolean getspeciesData(String no) throws IOException{
        try{
            types=new String[2];
            Call<PokemonVO> call = pokeService.getspeciesData(no);
            Response<PokemonVO> response = call.execute();

            if(response.isSuccessful()){
                pokeVO = response.body();
                List<PokemonVO.NameInfo> names = pokeVO.getNames();
                PokemonVO.NameInfo nameInfo = names.get(2);
                name = nameInfo.getName();
            }
            return true;
        }catch (IOException e) {
            e.printStackTrace();
            // IOException 처리 로직 추가
            return false;
        }
        
    }

    public boolean getpokemonData(String no){
        try{
            Call<PokemonVO> call = pokeService.getpokemonData(no);
            Response<PokemonVO> response = call.execute();

            if(response.isSuccessful()){
                pokeVO = response.body();
                List<PokemonVO.TypeSlot> typeslot = pokeVO.getTypes();
                for(int i=0; i<typeslot.size(); i++){
                    PokemonVO.TypeSlot typeinfo = typeslot.get(i);
                    PokemonVO.Type type = typeinfo.getType();
                    //System.out.println(type.getName());
                    types[i] = type.getName();
                    System.out.println(types[i]);
                }
                
            }
            return true;
        }catch (IOException e) {
            e.printStackTrace();
            // IOException 처리 로직 추가
            return false;
        }
    }
    

}
