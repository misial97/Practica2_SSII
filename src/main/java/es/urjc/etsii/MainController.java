package es.urjc.etsii;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * Controlador para arrancar el front-end.
 *
 * @author J. M. Colmenar
 */
@Controller
public class MainController {
    // Se puede utilizar "/", pero lo dejamos libre para ver lo que envia el RepositoryRestResource
    @RequestMapping("/front")
    public String inicio(Map<String, Object> model) {
        return "index";
    }
}
