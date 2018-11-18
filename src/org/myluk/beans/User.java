package org.myluk.beans;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Setter @AllArgsConstructor
public class User {
    private String firstName;
    private String lastName;

    public User() {
        firstName = "Misha";
        lastName = "Lukyanov";
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }
}
