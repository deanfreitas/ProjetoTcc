package br.com.projetotcc.entidade.paciente.alimentacao;

import br.com.projetotcc.entidade.pessoa.Paciente;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

@Entity
@Table(name = "Data")
public class Data implements Serializable {

    private static final long serialVersionUID = 118309367788670594L;

    @Id
    @GeneratedValue
    @Column(name = "id_data", nullable = false)
    private Long id;

    @Column(name = "d_data")
    private Date dData;

    @JsonManagedReference(value = "data-ceia")
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Ceia.class)
    @JoinColumn(name = "Id_Ceia")
    private Ceia ceia;

    @JsonManagedReference(value = "data-colacao")
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Colacao.class)
    @JoinColumn(name = "Id_Colacao")
    private Colacao colacao;

    @JsonManagedReference(value = "data-jantar")
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Jantar.class)
    @JoinColumn(name = "Id_Jant")
    private Jantar jantar;

    @JsonManagedReference(value = "data-lanche")
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Lanche.class)
    @JoinColumn(name = "Id_Lanche")
    private Lanche lanche;

    @JsonManagedReference(value = "data-almoco")
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Almoco.class)
    @JoinColumn(name = "Id_Almoco")
    private Almoco almoco;

    @JsonManagedReference(value = "data-desjejum")
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Desjejum.class)
    @JoinColumn(name = "Id_Desj")
    private Desjejum desjejum;

    @JsonManagedReference(value = "data-foraHora")
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = ForaHora.class)
    @JoinColumn(name = "Id_Foradehora")
    private ForaHora foraHora;

    @JsonBackReference(value = "paciente-data")
    @ManyToOne(cascade = {CascadeType.DETACH, CascadeType.REFRESH}, optional = false, fetch = FetchType.LAZY, targetEntity = Paciente.class)
    @JoinColumn(name = "id_Paciente", nullable = false)
    private Paciente paciente;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getdData() {
        return dData;
    }

    public void setdData(Date dData) {
        this.dData = dData;
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

    public ForaHora getForaHora() {
        return foraHora;
    }

    public void setForaHora(ForaHora foraHora) {
        this.foraHora = foraHora;
    }

    public Paciente getPaciente() {
        return paciente;
    }

    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }
}
