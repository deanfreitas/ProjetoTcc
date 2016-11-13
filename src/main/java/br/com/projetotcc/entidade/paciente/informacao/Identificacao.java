package br.com.projetotcc.entidade.paciente.informacao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.interfaces.InterfaceEntidade;

@Entity
@Table(name = "Identificacao")
public class Identificacao implements InterfaceEntidade {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4081847113637847455L;

	@Id
	@GeneratedValue
	@Column(name = "Id_identificacao", nullable = false)
	private Long id;
	
	@Column(name = "Ident_DATADAPRIMEIRACONSULTA")
	private String dataPrimeiraConsuta;
	
	@Column(name = "Ident_Nome")
	private String nome;
	
	@Column(name = "Ident_Email")
	private String email;
	
	@Column(name = "Ident_Datanascimento")
	private String dataNascimento;
	
	@Column(name = "Ident_Idade")
	private Long idade;
	
	@Column(name = "Ident_MotivodaConsulta")
	private String motivoConsulta;
	
	@Column(name = "Ident_Obs")
	private String observacao;
	
	@Column(name = "Ident_TelefoneResidencial")
	private String telefoneResidencial;
	
	@Column(name = "Ident_Celular")
	private String celular;
	
	@Column(name = "Ident_Endereco")
	private String endereco;
	
	@Column(name = "Ident_Bairro")
	private String bairro;

	@Column(name = "Ident_Cidade")
	private String cidade;
	
	@Column(name = "Ident_Sexo")
	private String sexo;
	
	@Column(name = "Ident_EstadoCivil")
	private String estadoCivil;

	@Column(name = "Ident_Raca")
	private String raca;
	
	@Column(name = "Ident_Numero")
	private String numero;
	
	@Column(name = "Ident_Estado")
	private String estado;
	
	@JsonBackReference(value = "paciente-identificacao")
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "identificacao")
	private Paciente paciente;
	
	public Identificacao() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDataPrimeiraConsuta() {
		return dataPrimeiraConsuta;
	}

	public void setDataPrimeiraConsuta(String dataPrimeiraConsuta) {
		this.dataPrimeiraConsuta = dataPrimeiraConsuta;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public Long getIdade() {
		return idade;
	}

	public void setIdade(Long idade) {
		this.idade = idade;
	}

	public String getMotivoConsulta() {
		return motivoConsulta;
	}

	public void setMotivoConsulta(String motivoConsulta) {
		this.motivoConsulta = motivoConsulta;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public String getTelefoneResidencial() {
		return telefoneResidencial;
	}

	public void setTelefoneResidencial(String telefoneResidencial) {
		this.telefoneResidencial = telefoneResidencial;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getEstadoCivil() {
		return estadoCivil;
	}

	public void setEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	public String getRaca() {
		return raca;
	}

	public void setRaca(String raca) {
		this.raca = raca;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}
}
