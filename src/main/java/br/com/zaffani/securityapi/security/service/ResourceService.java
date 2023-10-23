package br.com.zaffani.securityapi.security.service;

import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;

public interface ResourceService {

    @Transactional
    void initializeResources() throws IOException;
}
