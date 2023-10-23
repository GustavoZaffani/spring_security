package br.com.zaffani.securityapi.controller;

import br.com.zaffani.securityapi.dto.CreateUserDTO;
import br.com.zaffani.securityapi.security.annotation.SecurityResource;
import br.com.zaffani.securityapi.service.UserService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.UUID;

@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping
    @SecurityResource("res:users/create")
    public ResponseEntity createUser(@RequestBody @Valid CreateUserDTO user, UriComponentsBuilder uriBuilder) {
        var userCreated = userService.saveUser(user);
        var uri = uriBuilder.path("/users/{id}").buildAndExpand(userCreated.id()).toUri();

        return ResponseEntity.created(uri).body(userCreated);
    }

    @GetMapping("/{id}")
    @SecurityResource("res:users/retrieve")
    public ResponseEntity retrieveUser(@PathVariable("id")UUID id) {
        return ResponseEntity.ok(userService.retrieveUser(id));
    }
}
