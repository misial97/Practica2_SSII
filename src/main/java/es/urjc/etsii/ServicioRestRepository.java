package es.urjc.etsii;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

/**
 * Repositorio generador de API REST HATEOAS: servicios
 *
 * @authors Miguel Sierra y Rubén Domínguez
 */
@RepositoryRestResource(collectionResourceRel = "servicios", path = "servicios")
public interface ServicioRestRepository extends CrudRepository<Servicio, Integer> {

// buscar en el repositorio de servicios por nombre.

    List<Servicio> findByName(@Param("name") String nombre);
    List<Servicio> findByNameContains(@Param("name") String nombre);


}