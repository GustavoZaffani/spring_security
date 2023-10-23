package br.com.zaffani.securityapi.security.service.impl;

import br.com.zaffani.securityapi.model.User;
import br.com.zaffani.securityapi.security.dto.OauthRequestDTO;
import br.com.zaffani.securityapi.security.service.OauthService;
import br.com.zaffani.securityapi.security.service.TokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.stereotype.Service;

@Service
public class OauthServiceImpl implements OauthService {

    @Autowired
    private AuthenticationManager manager;

    @Autowired
    private TokenService tokenService;

    @Override
    public String authenticate(OauthRequestDTO oauthRequestDTO) {
        var authenticationToken = new UsernamePasswordAuthenticationToken(oauthRequestDTO.username(), oauthRequestDTO.password());
        var autentication = manager.authenticate(authenticationToken);

        return tokenService.generateToken((User) autentication.getPrincipal());
    }
}
