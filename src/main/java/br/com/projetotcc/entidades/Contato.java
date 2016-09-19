package br.com.projetotcc.entidades;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "contato")
public class Contato implements InterfaceEntidade {

	private static final long serialVersionUID = 5475588560011889605L;

	@Id
	@GeneratedValue
	@Column(name = "id_contato", nullable = false)
	private Long id;
	
	@Column(name = "telefone")
	private String telefone;
	
	@Column(name = "celular")
	private String celular;
	
	@Column(name = "telefone_comercial")
	private String telefoneComercial;
	
	@OneToOne(mappedBy = "contato")
	private Pessoa pessoa;
	
	public Contato() {
		super();
	}

	public Contato(String telefone, String celular, String telefoneComercial) {
		super();
		this.telefone = telefone;
		this.celular = celular;
		this.telefoneComercial = telefoneComercial;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone.trim();
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular.trim();
	}

	public String getTelefoneComercial() {
		return telefoneComercial;
	}

	public void setTelefoneComercial(String telefoneComercial) {
		this.telefoneComercial = telefoneComercial.trim();
	}
	
	public Pessoa getPessoa() {
		return pessoa;
	}

	public void setPessoa(Pessoa pessoa) {
		this.pessoa = pessoa;
	}
}