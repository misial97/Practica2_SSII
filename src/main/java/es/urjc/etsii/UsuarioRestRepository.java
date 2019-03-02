package es.urjc.etsii;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

/**
 * Repositorio generador de API REST HATEOAS: servicios
 *
 * @author J. M. Colmenar
 */
@RepositoryRestResource(collectionResourceRel = "usuarios", path = "usuarios")
public interface UsuarioRestRepository extends CrudRepository<Usuario, Integer> {

}