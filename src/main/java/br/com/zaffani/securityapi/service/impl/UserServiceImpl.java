package br.com.zaffani.securityapi.service.impl;

import br.com.zaffani.securityapi.dto.CreateUserDTO;
import br.com.zaffani.securityapi.dto.UserSavedDTO;
import br.com.zaffani.securityapi.model.User;
import br.com.zaffani.securityapi.repository.ProfileRepository;
import br.com.zaffani.securityapi.repository.UserRepository;
import br.com.zaffani.securityapi.service.UserService;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.UUID;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ProfileRepository profileRepository;

    @Override
    @Transactional
    public UserSavedDTO saveUser(CreateUserDTO userDTO) {
        var user = new User();
        user.setName(userDTO.name());
        user.setEmail(userDTO.email());
        user.setUsername(userDTO.username());
        user.setPassword(new BCryptPasswordEncoder().encode(userDTO.password()));
        user.setPerfils(new HashSet<>(profileRepository.findAllById(userDTO.profileIds())));

        return new UserSavedDTO(userRepository.save(user));
    }

    @Override
    public UserSavedDTO retrieveUser(UUID userId) {
        return new UserSavedDTO(userRepository.findById(userId).orElseThrow(() -> new EntityNotFoundException("Register not found")));
    }
}
