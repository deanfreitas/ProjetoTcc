package br.com.projetotcc.entidade.paciente.informacao;

import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.interfaces.InterfaceDadosPaciente;
import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;

@Entity
@Table(name = "Atividade_Fisica")
public class AtividadeFisica implements InterfaceDadosPaciente {

    private static final long serialVersionUID = -5313156125251588114L;

    @Id
    @GeneratedValue
    @Column(name = "Id_AtividadeFisica", nullable = false)
    private Long id;

    @Column(name = "Ativ_TipoDeAtividadeFisica")
    private String tipo;

    @Column(name = "Ativ_Frequencia")
    private String frequencia;

    @Column(name = "Ativ_Duracao")
    private String duracao;

    @Column(name = "Ativ_VocePraticaAsAtividades")
    private String pratica;

    @Column(name = "Ativ_HoraPreferido")
    private String horaPreferida;

    @JsonBackReference(value = "paciente-atividadeFisica")
    @OneToOne(fetch = FetchType.LAZY, mappedBy = "atividadeFisica")
    private Paciente paciente;

    public AtividadeFisica(String tipo, String frequencia, String duracao, String pratica, String horaPreferida) {
        super();
        this.tipo = tipo;
        this.frequencia = frequencia;
        this.duracao = duracao;
        this.pratica = pratica;
        this.horaPreferida = horaPreferida;
    }

    public AtividadeFisica(Long id, String tipo, String frequencia, String duracao, String pratica, String horaPreferida) {
        super();
        this.id = id;
        this.tipo = tipo;
        this.frequencia = frequencia;
        this.duracao = duracao;
        this.pratica = pratica;
        this.horaPreferida = horaPreferida;
    }

    public AtividadeFisica() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getFrequencia() {
        return frequencia;
    }

    public void setFrequencia(String frequencia) {
        this.frequencia = frequencia;
    }

    public String getDuracao() {
        return duracao;
    }

    public void setDuracao(String duracao) {
        this.duracao = duracao;
    }

    public String getPratica() {
        return pratica;
    }

    public void setPratica(String pratica) {
        this.pratica = pratica;
    }

    public String getHoraPreferida() {
        return horaPreferida;
    }

    public void setHoraPreferida(String horaPreferida) {
        this.horaPreferida = horaPreferida;
    }

    public Paciente getPaciente() {
        return paciente;
    }

    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }
}
