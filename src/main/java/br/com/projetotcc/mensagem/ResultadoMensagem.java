package br.com.projetotcc.mensagem;

import org.springframework.stereotype.Component;

@Component
public class ResultadoMensagem {

	private long codigo;
	private String mensagem;
	
	public ResultadoMensagem(long codigo, String mensagem) {
		super();
		this.codigo = codigo;
		this.mensagem = mensagem;
	}
	
	public ResultadoMensagem() {
		super();
	}
	
	public long getCodigo() {
		return codigo;
	}
	
	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}
	
	public String getMensagem() {
		return mensagem;
	}
	
	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
}
