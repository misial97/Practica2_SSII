package es.urjc.etsii;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

/**
 * Repositorio generador de API REST HATEOAS: solicitudes
 *
 * @author J. M. Colmenar
 */
@RepositoryRestResource(collectionResourceRel = "solicitudes", path = "solicitudes")
public interface SolicitudRestRepository extends CrudRepository<Solicitud, Integer> {

    // El siguiente método aparece al acceder a http://localhost:8080/peliculas/search

    // Declaración de método para buscar solicitudes por estado.
    List<Solicitud> findByEstado(@Param("estado") String estado);

}