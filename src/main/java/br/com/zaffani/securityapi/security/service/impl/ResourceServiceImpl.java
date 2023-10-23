package br.com.zaffani.securityapi.security.service.impl;

import br.com.zaffani.securityapi.model.Resource;
import br.com.zaffani.securityapi.repository.ResourceRepository;
import br.com.zaffani.securityapi.security.dto.ResourceJsonDTO;
import br.com.zaffani.securityapi.security.dto.ResourceJsonListDTO;
import br.com.zaffani.securityapi.security.service.ResourceService;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.io.InputStream;
import java.util.Optional;
import java.util.stream.Collectors;

import static org.springframework.util.Assert.notNull;

@Slf4j
@Service
public class ResourceServiceImpl implements ResourceService {

    private static final String PATH_RESOURCE_JSON = "classpath:resources/resource.json";

    @Autowired
    private ResourceLoader resourceLoader;

    @Autowired
    private ObjectMapper objectMapper;

    @Autowired
    private ResourceRepository resourceRepository;

    @Override
    @Transactional
    public void initializeResources() throws IOException {
        log.info("<<<<<<<< Inicializando persistência dos recursos de segurança >>>>>>>>>");

        var resources = retrieveResourcesByJson();

        validateResources(resources);

        var resourcesSaved = resourceRepository
                .findAllByIdentifierIn(resources.resources().stream().map(ResourceJsonDTO::identifier).toList())
                .stream()
                .collect(Collectors.toMap(Resource::getIdentifier, res -> res));

        var resourcesToSave = resources.resources().stream().map(res -> {
            var resource = Optional.ofNullable(resourcesSaved.get(res.identifier())).orElse(new Resource());
            resource.setIdentifier(res.identifier());
            resource.setLabel(res.label());
            resource.setDescription(res.description());
            resource.setDeleted(Boolean.FALSE == res.isActive());

            return resource;
        }).toList();

        resourceRepository.saveAll(resourcesToSave);

        log.info("<<<<<<<< Recursos de segurança persistidos com sucesso >>>>>>>>>");
    }

    private void validateResources(ResourceJsonListDTO resourceJsonListDTO) {
        resourceJsonListDTO.resources().forEach(res -> {
            notNull(res.identifier(), "Identifier must be informed");
            notNull(res.label(), "Label must be informed");
            notNull(res.isActive(), "IsActive must be informed");
            notNull(res.description(), "Description must be informed");
        });
    }

    private ResourceJsonListDTO retrieveResourcesByJson() throws IOException {
        var resource = resourceLoader.getResource(PATH_RESOURCE_JSON);
        InputStream inputStream = resource.getInputStream();

        return objectMapper.readValue(inputStream, ResourceJsonListDTO.class);
    }
}
