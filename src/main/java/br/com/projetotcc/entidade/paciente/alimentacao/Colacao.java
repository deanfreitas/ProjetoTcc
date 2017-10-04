package br.com.projetotcc.entidade.paciente.alimentacao;

import br.com.projetotcc.interfaces.InterfaceAlimentaresPaciente;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;

@Entity
@Table(name = "Colacao")
public class Colacao implements InterfaceAlimentaresPaciente {

    /**
     *
     */
    private static final long serialVersionUID = 4718173892623915758L;

    @Id
    @GeneratedValue
    @Column(name = "Id_Colacao", nullable = false)
    private Long id;

    @Column(name = "Colac_Horario")
    private String horario;

    @Column(name = "Colac_Local")
    private String local;

    @Column(name = "Colac_Humor")
    private String humor;

    @Column(name = "Colac_Alimento")
    private String alimentos;

    @Column(name = "Colac_Quantidade")
    private String quantidade;

    @JsonManagedReference(value = "data-colacao")
    @OneToOne(fetch = FetchType.LAZY, mappedBy = "colacao")
    private Data data;

    public Colacao(String horario, String local, String humor, String alimentos, String quantidade) {
        super();
        this.horario = horario;
        this.local = local;
        this.humor = humor;
        this.alimentos = alimentos;
        this.quantidade = quantidade;
    }

    public Colacao(Long id, String horario, String local, String humor, String alimentos, String quantidade) {
        super();
        this.id = id;
        this.horario = horario;
        this.local = local;
        this.humor = humor;
        this.quantidade = quantidade;
        this.alimentos = alimentos;
    }

    public Colacao() {
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
