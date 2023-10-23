package br.com.zaffani.securityapi.security.service;

import br.com.zaffani.securityapi.security.dto.OauthRequestDTO;

public interface OauthService {

    String authenticate(OauthRequestDTO oauthRequestDTO);
}
