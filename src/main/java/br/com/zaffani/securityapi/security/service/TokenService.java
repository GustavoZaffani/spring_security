package br.com.zaffani.securityapi.security.service;

import br.com.zaffani.securityapi.model.User;
import jakarta.servlet.http.HttpServletRequest;

public interface TokenService {

    String retrieveToken(HttpServletRequest request);

    String generateToken(User user);

    String retrieveSubject(String tokenJWT);
}
