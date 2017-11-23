package br.com.projetotcc.entidade.pessoa.informacao;

import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.interfaces.InterfaceDadosPessoa;
import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;

@Entity
@Table(name = "login")
public class Login implements InterfaceDadosPessoa {

    private static final long serialVersionUID = -2231602918807648218L;

    @Id
    @GeneratedValue
    @Column(name = "Id_Login", nullable = false)
    private Long id;

    @Column(name = "Log_Usuario")
    private String usuario;

    @Column(name = "Log_Senha")
    private String senha;

    @JsonBackReference(value = "nutricionista-login")
    @OneToOne(fetch = FetchType.LAZY, mappedBy = "login")
    private Nutricionista nutricionista;

    @JsonBackReference(value = "paciente-login")
    @OneToOne(fetch = FetchType.LAZY, mappedBy = "login")
    private Paciente paciente;

    public Login(String usuario, String senha) {
        super();
        this.usuario = usuario;
        this.senha = senha;
    }

    public Login(Long id, String usuario, String senha) {
        super();
        this.id = id;
        this.usuario = usuario;
        this.senha = senha;
    }

    public Login() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario.trim();
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public Nutricionista getNutricionista() {
        return nutricionista;
    }

    public void setNutricionista(Nutricionista nutricionista) {
        this.nutricionista = nutricionista;
    }

    public Paciente getPaciente() {
        return paciente;
    }

    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }
}
