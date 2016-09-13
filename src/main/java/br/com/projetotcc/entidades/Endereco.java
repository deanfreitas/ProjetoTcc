package br.com.projetotcc.entidades;

import java.io.Serializable;

public class Endereco implements Serializable {

	private static final long serialVersionUID = -8781264239717345388L;
	
	private String cep;
	private String endereco;
	private Long numero;
	private String complemento;
	private String bairro;
	private String cidade;
	private String estado;
	
	public Endereco() {
		super();
	}
	
	public Endereco(String cep, String endereco, Long numero, String complemento, String bairro, String cidade, String estado) {
		super();
		this.cep = cep;
		this.endereco = endereco;
		this.numero = numero;
		this.complemento = complemento;
		this.bairro = bairro;
		this.cidade = cidade;
		this.estado = endereco;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}
	
	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public Long getNumero() {
		return numero;
	}

	public void setNumero(Long numero) {
		this.numero = numero;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
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

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}
}
