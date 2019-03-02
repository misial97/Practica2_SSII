package es.urjc.etsii;

import javax.persistence.*;

@Entity
public class Solicitud {

    private int idSolicitud;

    private Usuario usuario;
    private Servicio servicio;
    private String fechaSolicitud; //formato : DDMMYYYY
    private String dir_calle, dir_num , dir_poblacion;
    private int importeCobrado;
    private String estado, descrp_estado;  // “Pendiente”, “Confirmada”, “Denegada”, “Cancelada”, “Completada e “Incidencia”

    public Solicitud() {
    }

    public Solicitud(String fechaSolicitud, String dir_calle, String dir_num,
                     String dir_poblacion, int importeCobrado, String estado, String descrp_estado) {

        this.fechaSolicitud = fechaSolicitud;
        this.dir_calle = dir_calle;
        this.dir_num = dir_num;
        this.dir_poblacion = dir_poblacion;
        this.importeCobrado = importeCobrado;
        this.estado = estado;
        this.descrp_estado = descrp_estado;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getIdSolicitud() {
        return idSolicitud;
    }

    public void setIdSolicitud(int idSolicitud) {
        this.idSolicitud = idSolicitud;
    }

    @ManyToOne
    @JoinColumn(name="usuario_id")
    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    @ManyToOne
    @JoinColumn(name="servicio_id")
    public Servicio getServicio() {
        return servicio;
    }

    public void setServicio(Servicio servicio) {
        this.servicio = servicio;
    }

    public String getFechaSolicitud() {
        return fechaSolicitud;
    }

    public void setFechaSolicitud(String fechaSolicitud) {
        this.fechaSolicitud = fechaSolicitud;
    }

    public String getDir_calle() {
        return dir_calle;
    }

    public void setDir_calle(String dir_calle) {
        this.dir_calle = dir_calle;
    }

    public String getDir_num() {
        return dir_num;
    }

    public void setDir_num(String dir_num) {
        this.dir_num = dir_num;
    }

    public String getDir_poblacion() {
        return dir_poblacion;
    }

    public void setDir_poblacion(String dir_poblacion) {
        this.dir_poblacion = dir_poblacion;
    }

    public int getImporteCobrado() {
        return importeCobrado;
    }

    public void setImporteCobrado(int importeCobrado) {
        this.importeCobrado = importeCobrado;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getDescrp_estado() {
        return descrp_estado;
    }

    public void setDescrp_estado(String descrp_estado) {
        this.descrp_estado = descrp_estado;
    }

    @Override
    public String toString() {
        return "Solicitud{" +
                "idSolicitud=" + idSolicitud +
                ", id_cliente=" + usuario.getIduser() +
                ", id_servicioSol=" + servicio.getIdService() +
                ", fechaSolicitud=" + fechaSolicitud +
                ", dir_calle='" + dir_calle + '\'' +
                ", dir_num='" + dir_num + '\'' +
                ", dir_poblacion='" + dir_poblacion + '\'' +
                ", importeCobrado=" + importeCobrado +
                ", estado='" + estado + '\'' +
                ", descrp_estado='" + descrp_estado + '\'' +
                '}';
    }
}