package br.com.zaffani.securityapi.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;

import java.util.Set;
import java.util.UUID;

public record CreateUserDTO(
        @NotBlank
        String name,
        @Email
        @NotBlank
        String email,
        @NotBlank
        String username,
        @NotBlank
        String password,
        @NotEmpty
        Set<UUID> profileIds
) {
}
