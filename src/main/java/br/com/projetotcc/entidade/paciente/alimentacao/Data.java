package br.com.projetotcc.entidade.paciente.alimentacao;

import br.com.projetotcc.entidade.pessoa.Paciente;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;

@Entity
@Table(name = "Data")
public class Data {

    @Id
    @GeneratedValue
    @Column(name = "id_data", nullable = false)
    private Long id;

    @JsonManagedReference(value = "data-ceia")
    @OneToOne(cascade = CascadeType.ALL, optional = true, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Ceia.class)
    @JoinColumn(name = "Id_Ceia", insertable = true, updatable = true)
    private Ceia ceia;

    @JsonManagedReference(value = "data-colacao")
    @OneToOne(cascade = CascadeType.ALL, optional = true, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Colacao.class)
    @JoinColumn(name = "Id_Colacao", insertable = true, updatable = true)
    private Colacao colacao;

    @JsonManagedReference(value = "data-jantar")
    @OneToOne(cascade = CascadeType.ALL, optional = true, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Jantar.class)
    @JoinColumn(name = "Id_Jant", insertable = true, updatable = true)
    private Jantar jantar;

    @JsonManagedReference(value = "data-lanche")
    @OneToOne(cascade = CascadeType.ALL, optional = true, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Lanche.class)
    @JoinColumn(name = "Id_Lanche", insertable = true, updatable = true)
    private Lanche lanche;

    @JsonManagedReference(value = "data-almoco")
    @OneToOne(cascade = CascadeType.ALL, optional = true, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Almoco.class)
    @JoinColumn(name = "Id_Almoco", insertable = true, updatable = true)
    private Almoco almoco;

    @JsonManagedReference(value = "data-desjejum")
    @OneToOne(cascade = CascadeType.ALL, optional = true, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Desjejum.class)
    @JoinColumn(name = "Id_Desj", insertable = true, updatable = true)
    private Desjejum desjejum;

    @JsonBackReference(value = "data-paciente")
    @ManyToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.LAZY, targetEntity = Paciente.class)
    @JoinColumn(name = "id_Paciente", insertable = true, updatable = true)
    private Paciente paciente;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Ceia getCeia() {
        return ceia;
    }

    public void setCeia(Ceia ceia) {
        this.ceia = ceia;
    }

    public Colacao getColacao() {
        return colacao;
    }

    public void setColacao(Colacao colacao) {
        this.colacao = colacao;
    }

    public Jantar getJantar() {
        return jantar;
    }

    public void setJantar(Jantar jantar) {
        this.jantar = jantar;
    }

    public Lanche getLanche() {
        return lanche;
    }

    public void setLanche(Lanche lanche) {
        this.lanche = lanche;
    }

    public Almoco getAlmoco() {
        return almoco;
    }

    public void setAlmoco(Almoco almoco) {
        this.almoco = almoco;
    }

    public Desjejum getDesjejum() {
        return desjejum;
    }

    public void setDesjejum(Desjejum desjejum) {
        this.desjejum = desjejum;
    }

    public Paciente getPaciente() {
        return paciente;
    }

    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }
}
