package br.com.projetotcc.entidades;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "contato")
public class Contato implements Serializable {

	private static final long serialVersionUID = 2841571621171533382L;

	@Id
	@GeneratedValue
	@Column(name = "id_contato")
	private Long id;
	
	@Column(name = "telefone")
	private String telefone;
	
	@Column(name = "celular")
	private String celular;
	
	@Column(name = "telefone_comercial")
	private String telefoneComercial;
	
	public Contato() {
		super();
	}
	
	public Contato(String telefone, String celular, String telefoneComercial) {
		super();
		this.telefone = telefone;
		this.celular = celular;
		this.telefoneComercial = telefoneComercial;
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

	public String getTelefoneComercial() {
		return telefoneComercial;
	}

	public void setTelefoneComercial(String telefoneComercial) {
		this.telefoneComercial = telefoneComercial;
	}
}