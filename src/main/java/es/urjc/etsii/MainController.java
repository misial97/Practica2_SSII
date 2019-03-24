package es.urjc.etsii;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * Controlador para arrancar el front-end.
 *
 * @authors Miguel Sierra y Rubén Domínguez
 */
@Controller
public class MainController {
    // Se puede utilizar "/", pero lo dejamos libre para ver lo que envia el RepositoryRestResource
    @RequestMapping("/front")
    public String inicio(Map<String, Object> model) {
        return "index";
    }
    @RequestMapping("/buscar")
    public String login(Map<String, Object> model) {
        return "listaBusqueda";
    }
}
