package com.pokemon.pokedex.DAO;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.pokemon.pokedex.Entity.Pokemon;
import com.pokemon.pokedex.Entity.Pokemon.Ability;
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
    private ArrayList<Ability> abilities = new ArrayList<>();

    private String name;
    private String[] types;

    public PokemonDAO(){
        retrofit = new Retrofit.Builder()
                .baseUrl(baseUrl)
                .addConverterFactory(GsonConverterFactory.create())
                .build();
        pokeService = retrofit.create(PokemonService.class);
    }

    public ArrayList<Pokemon> allList(int start, int end) throws IOException{
        try {
            ArrayList<Pokemon> pokeArray = new ArrayList<>();
            for(int i=start; i<=end; i++){
                String no = Integer.toString(i);
                if (getspeciesData(no) && getpokemonData(no)) {
                    String img = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/"+i+".png";
                    pokemon = new Pokemon(i,name,img,types,abilities);
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
                List<PokemonVO.AbSlot> abslot = pokeVO.getAbilities();
                for(int i=0; i<typeslot.size(); i++){
                    PokemonVO.TypeSlot typeinfo = typeslot.get(i);
                    PokemonVO.Type type = typeinfo.getType();
                    types[i] = type.getName();
                    System.out.println(types[i]);
                }
                for(int i=0; i<abslot.size(); i++){
                    PokemonVO.AbSlot abInfo = abslot.get(i);
                    PokemonVO.AbilityUrl tmp = abInfo.getAbility();
                    String hidden = abInfo.getIs_hidden();
                    String url[] = tmp.getUrl().split("ability/");
                    String num = url[1];
                    String abname = getAbilityName(num);
                    Ability ab = new Ability(abname, hidden);
                    abilities.add(ab);
                }
            }
            return true;
        }catch (IOException e) {
            e.printStackTrace();
            // IOException 처리 로직 추가
            return false;
        }
    }

    public String getAbilityName(String no){
        try{
            String abname = null;
            Call<PokemonVO> call = pokeService.getAbility(no);
            Response<PokemonVO> response = call.execute();

            if(response.isSuccessful()){
                pokeVO = response.body();
                List<PokemonVO.NameInfo> names = pokeVO.getNames();
                PokemonVO.NameInfo nameInfo = names.get(1);
                abname = nameInfo.getName();
                System.out.print(abname+" , ");
            }
            return abname;
        }catch (IOException e) {
            e.printStackTrace();
            // IOException 처리 로직 추가
            return "";
        }
    }
}
