package br.com.projetotcc.mensagem;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class ResultadoServico {

	private long codigo;
	private String mensagem;
	private List<Object> listaObjetos;
	
	public ResultadoServico(long codigo, String mensagem) {
		super();
		this.codigo = codigo;
		this.mensagem = mensagem;
	}
	
	public ResultadoServico(long codigo, String mensagem, List<Object> listaObjetos) {
		super();
		this.codigo = codigo;
		this.mensagem = mensagem;
		this.listaObjetos = listaObjetos;
	}
	
	public ResultadoServico(long codigo, String mensagem, Object objeto) {
		super();
		this.codigo = codigo;
		this.mensagem = mensagem;
		this.listaObjetos = new ArrayList<Object>();
		this.listaObjetos.add(objeto);
	}
	
	public ResultadoServico(List<Object> listaObjetos) {
		super();
		this.listaObjetos = listaObjetos;
	}
	
	public ResultadoServico(Object objeto) {
		super();
		listaObjetos = new ArrayList<Object>();
		this.listaObjetos.add(objeto);
	}
	
	public ResultadoServico() {
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
	
	public void setObjeto(Object objeto) {
		listaObjetos = new ArrayList<Object>();
		this.listaObjetos.add(objeto);
	}

	public List<Object> getListaObjetos() {
		return listaObjetos;
	}

	public void setListaObjetos(List<Object> listaPessoas) {
		this.listaObjetos = listaPessoas;
	}
}
