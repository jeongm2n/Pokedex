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
    @SerializedName("id")
    private int id;

    @SerializedName("name")
    private String name;

    @SerializedName("names")
    private List<NameInfo> names;

    @SerializedName("types")
    private List<TypeSlot> types;

    @SerializedName("abilities")
    private List<AbSlot> abilities;

    @SerializedName("flavor_text_entries")
    private List<Fte> flavor_text_entries;

    @SerializedName("genera")
    private List<Genera> genera;

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

    @Getter
    @Setter
    public static class Fte{
        @SerializedName("flavor_text")
        private String flavor_text;
        private Language language;
        private Version version;
    }

    @Getter
    @Setter
    public static class Language{
        private String name;
    }

    @Getter
    @Setter
    public static class Version{
        private String name;
    }

    @Getter
    @Setter
    public static class Genera{
        private String genus;
    }
}
