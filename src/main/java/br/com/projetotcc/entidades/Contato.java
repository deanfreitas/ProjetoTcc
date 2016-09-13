package br.com.projetotcc.entidades;

import java.io.Serializable;

public class Contato implements Serializable {

	private static final long serialVersionUID = 2841571621171533382L;

	private String telefone;
	private String celular;
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