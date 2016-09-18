package br.com.projetotcc.mensagem;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import br.com.projetotcc.entidades.InterfaceEntidade;

@Component
public class ResultadoServico {

	private long codigo;
	private String mensagem;
	private List<InterfaceEntidade> listaEntidades;
	
	public ResultadoServico(long codigo, String mensagem) {
		super();
		this.codigo = codigo;
		this.mensagem = mensagem;
	}
	
	public ResultadoServico(long codigo, String mensagem, List<InterfaceEntidade> listaEntidades) {
		super();
		this.codigo = codigo;
		this.mensagem = mensagem;
		this.listaEntidades = listaEntidades;
	}
	
	public ResultadoServico(long codigo, String mensagem, InterfaceEntidade interfaceEntidade) {
		super();
		this.codigo = codigo;
		this.mensagem = mensagem;
		this.listaEntidades = new ArrayList<InterfaceEntidade>();
		this.listaEntidades.add(interfaceEntidade);
	}
	
	public ResultadoServico(List<InterfaceEntidade> listaEntidades) {
		super();
		this.listaEntidades = listaEntidades;
	}
	
	public ResultadoServico(InterfaceEntidade interfaceEntidade) {
		super();
		listaEntidades = new ArrayList<InterfaceEntidade>();
		this.listaEntidades.add(interfaceEntidade);
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
	
	public void setInterfaceEntidade(InterfaceEntidade interfaceEntidade) {
		listaEntidades = new ArrayList<InterfaceEntidade>();
		this.listaEntidades.add(interfaceEntidade);
	}

	public List<InterfaceEntidade> getListaEntidades() {
		return listaEntidades;
	}

	public void setListaEntidades(List<InterfaceEntidade> listaEntidades) {
		this.listaEntidades = listaEntidades;
	}
}
