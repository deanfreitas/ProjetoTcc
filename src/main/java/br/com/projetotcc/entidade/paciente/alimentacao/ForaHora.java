package br.com.projetotcc.entidade.paciente.alimentacao;

import br.com.projetotcc.interfaces.InterfaceAlimentaresPaciente;
import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;

@Entity
@Table(name = "Fora_de_Hora")
public class ForaHora implements InterfaceAlimentaresPaciente {

    private static final long serialVersionUID = 5375553158342939619L;

    @Id
    @GeneratedValue
    @Column(name = "Id_Foradehora", nullable = false)
    private Long id;

    @Column(name = "For_Horario")
    private String horario;

    @Column(name = "For_Local")
    private String local;

    @Column(name = "For_Humor")
    private String humor;

    @Column(name = "For_Alimento")
    private String alimentos;

    @Column(name = "For_Quantidade")
    private String quantidade;

    @JsonBackReference(value = "data-foraHora")
    @OneToOne(fetch = FetchType.LAZY, mappedBy = "foraHora")
    private Data data;

    public ForaHora(String horario, String local, String humor, String alimentos, String quantidade) {
        super();
        this.horario = horario;
        this.local = local;
        this.humor = humor;
        this.alimentos = alimentos;
        this.quantidade = quantidade;
    }

    public ForaHora(Long id, String horario, String local, String humor, String alimentos, String quantidade) {
        super();
        this.id = id;
        this.horario = horario;
        this.local = local;
        this.humor = humor;
        this.quantidade = quantidade;
        this.alimentos = alimentos;
    }

    public ForaHora() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public String getHumor() {
        return humor;
    }

    public void setHumor(String humor) {
        this.humor = humor;
    }

    public String getAlimentos() {
        return alimentos;
    }

    public void setAlimentos(String alimentos) {
        this.alimentos = alimentos;
    }

    public String getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(String quantidade) {
        this.quantidade = quantidade;
    }

    public Data getData() {
        return data;
    }

    public void setData(Data data) {
        this.data = data;
    }
}
