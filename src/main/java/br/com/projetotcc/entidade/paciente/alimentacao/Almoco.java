package br.com.projetotcc.entidade.paciente.alimentacao;

import br.com.projetotcc.interfaces.InterfaceAlimentaresPaciente;
import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;

@Entity
@Table(name = "Almoco")
public class Almoco implements InterfaceAlimentaresPaciente {

    /**
     *
     */
    private static final long serialVersionUID = 3802919552426199975L;

    @Id
    @GeneratedValue
    @Column(name = "Id_Almoco", nullable = false)
    private Long id;

    @Column(name = "Alm_Horario")
    private String horario;

    @Column(name = "Alm_Local")
    private String local;

    @Column(name = "Alm_Humor")
    private String humor;

    @Column(name = "Alm_Alimento")
    private String alimentos;

    @Column(name = "Alm_Quantidade")
    private String quantidade;

    @JsonBackReference(value = "data-almoco")
    @OneToOne(fetch = FetchType.LAZY, mappedBy = "almoco")
    private Data data;

    public Almoco(String horario, String local, String humor, String alimentos, String quantidade) {
        super();
        this.horario = horario;
        this.local = local;
        this.humor = humor;
        this.alimentos = alimentos;
        this.quantidade = quantidade;
    }

    public Almoco(Long id, String horario, String local, String humor, String alimentos, String quantidade) {
        super();
        this.id = id;
        this.horario = horario;
        this.local = local;
        this.humor = humor;
        this.quantidade = quantidade;
        this.alimentos = alimentos;
    }

    public Almoco() {
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
