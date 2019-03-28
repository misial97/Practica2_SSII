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
    @RequestMapping("/prueba")
    public String func(Map<String, Object> model) { return "indexFuncionalidades"; }

    @RequestMapping("/login")
    public String inicio(Map<String, Object> model) { return "index"; }

    @RequestMapping("/buscar")
    public String loginCliente(Map<String, Object> model) {
        return "listaBusqueda";
    }

    @RequestMapping("/profesional")
    public String loginProfesional(Map<String, Object> model) { return "profes"; }

    @RequestMapping("/analista")
    public String loginAnalista(Map<String, Object> model) { return "analista"; }

    @RequestMapping("/servSel")
    public String servicioSeleccionado(Map<String, Object> model) { return "servicioSeleccionado"; }

    @RequestMapping("/profesional/crearServicio")
    public String crearServicio(Map<String, Object> model) { return "creaServicio"; }

    @RequestMapping("/profesional/consultaServicios")
    public String consulta(Map<String, Object> model) { return "consultaServicios"; }

    @RequestMapping("/profesional/borrarServicios")
    public String borra(Map<String, Object> model) { return "borrarServicios"; }
}
