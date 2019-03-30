package es.urjc.etsii;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

/**
 * Repositorio generador de API REST HATEOAS: servicios
 *
 * @authors Miguel Sierra y Rubén Domínguez
 *
 */
@RepositoryRestResource(collectionResourceRel = "usuarios", path = "usuarios")
public interface UsuarioRestRepository extends CrudRepository<Usuario, Integer> {
    @Query(value = "SELECT * FROM USUARIO", nativeQuery = true)
    List<Usuario> todos_usuarios();

    List<Usuario> findByEmail(@Param("email")String email);
    List<Usuario> findAllByOrderByNombreAsc();


}