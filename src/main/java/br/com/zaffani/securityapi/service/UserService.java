package br.com.zaffani.securityapi.service;

import br.com.zaffani.securityapi.dto.UserSavedDTO;
import br.com.zaffani.securityapi.dto.CreateUserDTO;

import java.util.UUID;

public interface UserService {

    UserSavedDTO saveUser(CreateUserDTO userDTO);

    UserSavedDTO retrieveUser(UUID userId);
}
