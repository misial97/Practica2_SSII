package es.urjc.etsii;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

/**
 * Repositorio generador de API REST HATEOAS: servicios
 *
 * @authors Miguel Sierra y Rubén Domínguez
 *
 */
@RepositoryRestResource(collectionResourceRel = "usuarios", path = "usuarios")
public interface UsuarioRestRepository extends CrudRepository<Usuario, Integer> {

}