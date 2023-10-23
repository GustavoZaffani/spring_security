package br.com.zaffani.securityapi.security.dto;

import jakarta.validation.constraints.NotBlank;

public record OauthRequestDTO(
        @NotBlank
        String username,
        @NotBlank
        String password
) {
}
