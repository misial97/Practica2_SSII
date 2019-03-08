package es.urjc.etsii;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

/**
 * Repositorio generador de API REST HATEOAS: servicios
 *
 * @authors Miguel Sierra y Rubén Domínguez
 */
@RepositoryRestResource(collectionResourceRel = "servicios", path = "servicios")
public interface ServicioRestRepository extends CrudRepository<Servicio, Integer> {

}