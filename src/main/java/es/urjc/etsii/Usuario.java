package es.urjc.etsii;

import javax.persistence.*;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;


/* Al anotar una clase con @Entity se indica a JPA que se trata de un objeto que tendrá
   su tabla equivalente en la base de datos. */

@Entity
public class Usuario {


    private int iduser;

	/* El atributo anotado como @Id será la clave primaria, aquí incremental. */

    private String pass;
    private String nombre;
    private String apellidos;
    private String email;
    private String perfil;  //CUSTOMER , PROFESSIONAL , ANALYST
    private String ciudad;
    private String fechaNac;

    private List<Servicio> servicios;
    private List<Solicitud> solicitudes;


    // Constructor por defecto, necesario para Spring Data.
    private Usuario() {
    }

    public Usuario(String pass, String nombre, String apellidos, String email, String perfil, String ciudad, String fechaNac) {
        this.email = email;
        this.pass = pass;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.perfil = perfil;
        this.ciudad = ciudad;
        this.fechaNac = fechaNac;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getFechaNac() {
        return fechaNac;
    }

    public void setFechaNac(String fechaNac) {
        this.fechaNac = fechaNac;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getIduser() {
        return iduser;
    }

    public void setIduser(int iduser) {
        this.iduser = iduser;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }

    public void setSolicitudes(List<Solicitud> solicitudes) {
        this.solicitudes = solicitudes;
    }
    @OneToMany(mappedBy = "usuario")
    public List<Solicitud> getSolicitudes() {
        return solicitudes;
    }

    @OneToMany(mappedBy = "usuario")
    public List<Servicio> getServicios() {
        return servicios;
    }

    public void setServicios(List<Servicio> servicios) {
        this.servicios = servicios;
    }
    @Override
    public String toString() {
        return "Usuario{" +
                "iduser=" + iduser +
                ", email='" + email + '\'' +
                ", pass='" + pass + '\'' +
                ", nombre='" + nombre + '\'' +
                ", apellidos='" + apellidos + '\'' +
                ", perfil='" + perfil + '\'' +
                ", ciudad='" + ciudad + '\'' +
                ", fechaNac=" + fechaNac +
                '}';
    }
}

