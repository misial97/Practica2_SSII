package es.urjc.etsii;


import javax.persistence.*;
import java.util.List;

@Entity
public class Servicio {

    private int idService;

    private String name, category, description;
    private int hours, price;
    private Usuario usuario;

    private List<Solicitud> solicitudes;

    private Servicio() {
    }

    public Servicio(String name, String category, String description, int hours, int price) {
        this.name = name;
        this.category = category;
        this.description = description;
        this.hours = hours;
        this.price = price;
    }
   @OneToMany(mappedBy = "servicio")
    public List<Solicitud> getSolicitud() {
        return solicitudes;
    }

    public void setSolicitud(List<Solicitud> solicitud) {
        this.solicitudes = solicitud;
    }

    @ManyToOne
    @JoinColumn(name="usuario_id")
    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getIdService() {
        return idService;
    }

    public void setIdService(int idService) {
        this.idService = idService;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() { return category; }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getHours() {
        return hours;
    }

    public void setHours(int hours) {
        this.hours = hours;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Servicio{" +
                "idService=" + idService +
                ", name='" + name + '\'' +
                ", category='" + category + '\'' +
                ", description='" + description + '\'' +
                ", hours=" + hours +
                ", price=" + price +
                ", idProfes=" + usuario.getIduser() +
                '}';
    }
}
