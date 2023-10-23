package br.com.zaffani.securityapi.security.controller;

import br.com.zaffani.securityapi.security.dto.OauthRequestDTO;
import br.com.zaffani.securityapi.security.dto.OauthResponseDTO;
import br.com.zaffani.securityapi.security.service.OauthService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/oauth")
public class OauthController {

    @Autowired
    private OauthService oauthService;

    @PostMapping
    public ResponseEntity login(@RequestBody @Valid OauthRequestDTO oauthRequestDTO) {
        return ResponseEntity.ok(new OauthResponseDTO(oauthService.authenticate(oauthRequestDTO)));
    }
}
