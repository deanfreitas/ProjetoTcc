package br.com.projetotcc.entidade.pessoa;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.entidade.pessoa.informacao.Role;
import br.com.projetotcc.interfaces.InterfacePessoa;

@Entity
@Table(name = "Nutricionista")
public class Nutricionista implements InterfacePessoa {

    /**
     *
     */
    private static final long serialVersionUID = 2607052727091168557L;

    @Id
    @GeneratedValue
    @Column(name = "id_nutricionista", nullable = false)
    private Long id;

    @Column(name = "Nutri_NomeCompleto")
    private String nomeCompleto;

    @Column(name = "Nutri_Crn")
    private String crn;

    @Column(name = "Nutri_CPF")
    private String cpf;

    @Column(name = "Nutri_DataDeNascimento")
    private String dataNascimento;

    @Column(name = "Nutri_Endereco")
    private String endereco;

    @Column(name = "Nutri_Numero")
    private String numero;

    @Column(name = "Nutri_Complemento")
    private String complemento;

    @Column(name = "Nutri_Telefone")
    private String telefone;

    @Column(name = "Nutri_Celular")
    private String celular;

    @Column(name = "Nutri_Comercial")
    private String comercial;

    @Column(name = "Nutri_Email")
    private String email;

    @Column(name = "Nutri_Sexo")
    private String sexo;

    @JsonManagedReference(value = "nutricionista-login")
    @OneToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Login.class)
    @JoinColumn(name = "Id_Login", insertable = true, updatable = true)
    private Login login;

    @JsonIgnore
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "nutricionista")
    private Set<Role> roles;

    @JsonManagedReference(value = "pacientes-nutricionista")
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "nutricionista")
    private List<Paciente> pacientes;

    public Nutricionista() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNomeCompleto() {
        return nomeCompleto;
    }

    public void setNomeCompleto(String nomeCompleto) {
        this.nomeCompleto = nomeCompleto;
    }

    public String getCrn() {
        return crn;
    }

    public void setCrn(String crn) {
        this.crn = crn;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(String dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getComercial() {
        return comercial;
    }

    public void setComercial(String comercial) {
        this.comercial = comercial;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public Login getLogin() {
        return login;
    }

    public void setLogin(Login login) {
        this.login = login;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public List<Paciente> getPacientes() {
        return pacientes;
    }

    public void setPacientes(List<Paciente> pacientes) {
        this.pacientes = pacientes;
    }
}
