package com.pokemon.pokedex.Entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class Member {
    private String mem_id;
    private String password;
    private String nickname;
}
