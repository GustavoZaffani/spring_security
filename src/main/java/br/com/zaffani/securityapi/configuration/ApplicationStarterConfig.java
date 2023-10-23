package br.com.zaffani.securityapi.configuration;

import br.com.zaffani.securityapi.security.service.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.event.EventListener;

import java.io.IOException;

@Configuration
public class ApplicationStarterConfig {

    @Autowired
    private ResourceService resourceService;

    @EventListener(ApplicationReadyEvent.class)
    public void onReadyApplication() throws IOException {
        resourceService.initializeResources();
    }
}
