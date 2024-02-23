package com.pokemon.pokedex.VO;

import java.util.List;

import com.google.gson.annotations.SerializedName;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class PokemonVO {
    @SerializedName("name")
    private String name;

    @SerializedName("names")
    private List<NameInfo> names;

    @SerializedName("types")
    private List<TypeSlot> types;

    @SerializedName("abilities")
    private List<AbSlot> abilities;

    private String img;

    @Getter
    public static class NameInfo{
        @SerializedName("name")
        private String name;
    }

    @Getter
    @Setter
    public static class TypeSlot{
        @SerializedName("type")
        private Type type;
    }

    @Getter
    @Setter
    public static class Type{
        private String name;
    }

    @Getter
    @Setter
    public static class AbSlot{
        @SerializedName("ability")
        private AbilityUrl ability;
        private String is_hidden;
    }

    @Getter
    @Setter
    public static class AbilityUrl{
        private String url;
    }
}
