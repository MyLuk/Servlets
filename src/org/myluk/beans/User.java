package org.myluk.beans;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter @AllArgsConstructor
public class User {
    private String firstName;
    private String lastName;

    public User() {
        firstName = "Misha";
        lastName = "Lukyanov";
    }
}
