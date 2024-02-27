package com.pokemon.pokedex.DAO;

import com.pokemon.pokedex.Entity.Pokemon;
import com.pokemon.pokedex.Entity.PokemonDetail;
import com.pokemon.pokedex.Entity.PokemonDetail.Ability;
import com.pokemon.pokedex.Entity.PokemonDetail.Female;
import com.pokemon.pokedex.Entity.PokemonDetail.PokedexDes;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import java.io.FileReader;
import java.io.IOException;

import java.util.ArrayList;

public class PokemonJSON {
    
    public ArrayList<Pokemon> getData(String gen){
        try (FileReader reader = new FileReader("./jsons/"+gen+".json")) {
            // JSON 파서 생성
            JSONParser parser = new JSONParser();
            JSONArray jsonArray = (JSONArray) parser.parse(reader);
            ArrayList<Pokemon> pokemons = new ArrayList<>();
            for(Object obj : jsonArray){
                JSONObject jsonObject = (JSONObject) obj;
                long a = (long) jsonObject.get("no");
                int no = (int) a;
                String korean = (String) jsonObject.get("korean");
                String img = (String) jsonObject.get("img");
                JSONArray typesArray = (JSONArray) jsonObject.get("types");
                String[] types = new String[2];
                for(int i=0; i<2; i++){ //포켓몬 타입 정보 가져오기
                    types[i] = (String) typesArray.get(i);
                }
                pokemons.add(new Pokemon(no,korean,img,types));
            }
            return pokemons;
        }catch (IOException | ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public PokemonDetail getDatas(int id, String gen){
        try (FileReader reader = new FileReader("./jsons/"+gen+".json")) {
            // JSON 파서 생성
            JSONParser parser = new JSONParser();

            // JSON 파일 파싱
            JSONArray jsonArray = (JSONArray) parser.parse(reader);
            PokemonDetail pokemon = new PokemonDetail();
            for (Object obj : jsonArray) {
                ArrayList<Ability> abilities = new ArrayList<>();
                ArrayList<PokedexDes> pokedexs = new ArrayList<>();
                JSONObject jsonObject = (JSONObject) obj;
                long a = (long) jsonObject.get("no");
                int no = (int) a;
                if(id == no){
                    String korean = (String) jsonObject.get("korean");
                    String eng = (String) jsonObject.get("eng");
                    String genus = (String) jsonObject.get("genus");
                    String img = (String) jsonObject.get("img");
                    String simg = (String) jsonObject.get("simg");
                    JSONArray typesArray = (JSONArray) jsonObject.get("types");
                    JSONArray abArray = (JSONArray) jsonObject.get("abilities");
                    String[] types = new String[2];
                    for(int i=0; i<2; i++){ //포켓몬 타입 정보 가져오기
                        types[i] = (String) typesArray.get(i);
                    }
                    for(int i=0; i<abArray.size(); i++){ //포켓몬 특성 정보 가져오기
                        JSONObject ab = (JSONObject) abArray.get(i);
                        String abname = (String) ab.get("name");
                        String hidden = (String) ab.get("hidden");
                        abilities.add(new Ability(abname,hidden));
                    }
                    JSONArray desArray = (JSONArray) jsonObject.get("des");
                    for(int i=0; i<desArray.size(); i++){
                        JSONObject desObject = (JSONObject) desArray.get(i);
                        String str1 = (String) desObject.get("version");
                        String str2 = (String) desObject.get("flavor_text");
                        if(gen.equals("9")){
                            String[] versions = str1.split("/");
                            String[] dess = str2.split("/");
                            for(int j=0; j<2; j++){
                                pokedexs.add(new PokedexDes(versions[j],dess[j]));
                            }
                        }else{
                            pokedexs.add(new PokedexDes(str1,str2));
                        }
                    }
                    Female female = getFemale(no,gen);
                    pokemon = new PokemonDetail(no,korean,eng,genus,img,simg,types,abilities,pokedexs,female);
                    break;
                }
            }
            return pokemon;
        } catch (IOException | ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Female getFemale(int id, String gen){
        String f_img = null;
        String fs_img = null;

        try (FileReader reader = new FileReader("./jsons/female.json")){
            // JSON 파서 생성
            JSONParser parser = new JSONParser();
            // JSON 파일 파싱
            JSONArray jsonArray = (JSONArray) parser.parse(reader);
            if(gen.equals("hisui") && id == 215){
                JSONObject ob = (JSONObject) jsonArray.get(jsonArray.size()-1);
                f_img = (String) ob.get("f_img");
                fs_img = (String) ob.get("fs_img");
            }else if(gen.equals("mega") || gen.equals("gmax")){
                f_img = null;
                fs_img = null;
            }else{
                for(Object obj : jsonArray){
                    JSONObject jsonObject = (JSONObject) obj;
                    long a = (long) jsonObject.get("no");
                    int no = (int) a;
                    if(no == id){
                        f_img = (String) jsonObject.get("f_img");
                        fs_img = (String) jsonObject.get("fs_img");
                    }
                }
            }    
        }catch (IOException | ParseException e) {
            e.printStackTrace();
        }
        return new Female(f_img,fs_img);
    }
}
