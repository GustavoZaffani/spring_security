package br.com.zaffani.securityapi.repository;

import br.com.zaffani.securityapi.model.Resource;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface ResourceRepository extends JpaRepository<Resource, UUID> {

    List<Resource> findAllByIdentifierIn(List<String> identifier);
}
