package br.com.zaffani.securityapi.dto;

import br.com.zaffani.securityapi.model.User;

import java.util.UUID;

public record UserSavedDTO(UUID id, String name, String email, String username) {

    public UserSavedDTO(User userSaved) {
        this(userSaved.getId(), userSaved.getName(), userSaved.getEmail(), userSaved.getUsername());
    }
}
