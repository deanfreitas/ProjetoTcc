package br.com.projetotcc.entidades;

import java.io.Serializable;

public class Permissao implements Serializable {

	private static final long serialVersionUID = 1089552982627127898L;
	
	private String nomeUsuario;
	private String permissoesUsuario;
	
	public Permissao() {
	}
	
	public Permissao(String nomeUsuario, String permissoesUsuario) {
		super();
		this.nomeUsuario = nomeUsuario;
		this.permissoesUsuario = permissoesUsuario;
	}

	public String getNomeUsuario() {
		return nomeUsuario;
	}

	public void setNomeUsuario(String nomeUsuario) {
		this.nomeUsuario = nomeUsuario;
	}

	public String getPermissoesUsuario() {
		return permissoesUsuario;
	}

	public void setPermissoesUsuario(String permissoesUsuario) {
		this.permissoesUsuario = permissoesUsuario;
	}
}
