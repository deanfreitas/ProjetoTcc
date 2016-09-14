package br.com.projetotcc.entidades;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "pessoa")
public class Pessoa implements Serializable {
	
	private static final long serialVersionUID = 114982141333938194L;
	
	@Id
	@GeneratedValue
	@Column(name = "id_pessoa", nullable = false)
	private Long id;
	
	@Column(name = "nome_completo")
	private String nomeCompleto;
	
	@Column(name = "sexo")
	private String sexo;
	
	@Column(name = "data_nascimento")
	private String dataNascimento;
	
	@Column(name = "estado_civil")
	private String estadoCivil;
	
	@Column(name = "cor")
	private String cor;
	
	@OneToOne(fetch = FetchType.EAGER)
	@PrimaryKeyJoinColumn
	@Column(name = "codigo_contato")
	private Contato contato;
	
	@OneToOne(fetch = FetchType.EAGER)
	@PrimaryKeyJoinColumn
	@Column(name = "codigo_endereco")
	private Endereco endereco;
	
	@Column(name = "responsavel")
	private String responsavel;
	
	@Column(name = "crn")
	private String crn;
	
	@OneToOne(fetch = FetchType.EAGER)
	@PrimaryKeyJoinColumn
	@Column(name = "codigo_login")
	private Login login;
	
	public Pessoa() {
		super();
	}
	
	public Pessoa(String nomeCompleto, String sexo, String dataNascimento, String estadoCivil, String cor, Contato contato, Endereco endereco, String responsavel, String crn, Login login) {
		super();
		this.nomeCompleto = nomeCompleto;
		this.sexo = sexo;
		this.dataNascimento = dataNascimento;
		this.estadoCivil = estadoCivil;
		this.cor = cor;
		this.contato = contato;
		this.endereco = endereco;
		this.responsavel = responsavel;
		this.crn = crn;
		this.login = login;
	}

	public String getNomeCompleto() {
		return nomeCompleto;
	}

	public void setNomeCompleto(String nomeCompleto) {
		this.nomeCompleto = nomeCompleto;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getEstadoCivil() {
		return estadoCivil;
	}

	public void setEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	public String getCor() {
		return cor;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	public Contato getContato() {
		return contato;
	}

	public void setContato(Contato contato) {
		this.contato = contato;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public String getResponsavel() {
		return responsavel;
	}

	public void setResponsavel(String responsavel) {
		this.responsavel = responsavel;
	}

	public String getCrn() {
		return crn;
	}

	public void setCrn(String crn) {
		this.crn = crn;
	}

	public Login getLogin() {
		return login;
	}

	public void setLogin(Login login) {
		this.login = login;
	}
}
