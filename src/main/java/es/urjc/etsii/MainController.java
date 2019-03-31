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

    @RequestMapping("/prueba")
    public String func(Map<String, Object> model) { return "indexFuncionalidades"; }

    @RequestMapping("/login")
    public String inicio(Map<String, Object> model) { return "index"; }

    @RequestMapping("/cliente")
    public String loginCliente(Map<String, Object> model) {
        return "listaBusqueda";
    }

    @RequestMapping("/profesional")
    public String loginProfesional(Map<String, Object> model) { return "profes"; }

    @RequestMapping("/analista")
    public String loginAnalista(Map<String, Object> model) { return "analista"; }

    @RequestMapping("/profesional/crearServicio")
    public String crearServicio(Map<String, Object> model) { return "creaServicio"; }

    @RequestMapping("/analista/detallesSer")
    public String detallesServicio(Map<String, Object> model) { return "detallesServicio"; }

    @RequestMapping("/profesional/consultaServicios")
    public String consulta(Map<String, Object> model) { return "consultaServicios"; }

    @RequestMapping("/profesional/borrarServicios")
    public String borra(Map<String, Object> model) { return "borrarServicios"; }

    @RequestMapping("/profesional/modifServicios")
    public String modificar(Map<String, Object> model) { return "modifServicios"; }

}
