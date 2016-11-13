package br.com.projetotcc.entidade.paciente.alimentacao;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.interfaces.InterfaceEntidade;

@Entity
@Table(name = "Lanche")
public class Lanche implements InterfaceEntidade {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4145562536736975343L;

	@Id
	@GeneratedValue
	@Column(name = "Id_Lanche", nullable = false)
	private Long id;
	
	@Column(name = "Lan_Horario")
	private String horario;
	
	@Column(name = "Lan_Local")
	private String local;
	
	@Column(name = "Lan_Humor")
	private String humor;
	
	@Column(name = "Lan_Alimento")
	private String alimentos;
	
	@Column(name = "Lan_Quantidade")
	private String quantidade;

	@JsonManagedReference(value = "Lanche-paciente")
	@ManyToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.LAZY, targetEntity = Paciente.class)
	@JoinColumn(name = "id_Paciente", insertable = true, updatable = true)
	private Paciente paciente;
	
	public Lanche(String horario, String local, String humor, String alimentos, String quantidade) {
		super();
		this.horario = horario;
		this.local = local;
		this.humor = humor;
		this.alimentos = alimentos;
		this.quantidade = quantidade;
	}
	
	public Lanche(Long id, String horario, String local, String humor, String alimentos, String quantidade) {
		super();
		this.id = id;
		this.horario = horario;
		this.local = local;
		this.humor = humor;
		this.quantidade = quantidade;
		this.alimentos = alimentos;
	}
	
	public Lanche(String horario, String local, String humor, String alimentos, String quantidade, Paciente paciente) {
		super();
		this.horario = horario;
		this.local = local;
		this.humor = humor;
		this.alimentos = alimentos;
		this.quantidade = quantidade;
		this.paciente = paciente;
	}
	
	public Lanche(Long id, String horario, String local, String humor, String alimentos, String quantidade, Paciente paciente) {
		super();
		this.id = id;
		this.horario = horario;
		this.local = local;
		this.humor = humor;
		this.alimentos = alimentos;
		this.quantidade = quantidade;
		this.paciente = paciente;
	}
	
	public Lanche() {
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getHorario() {
		return horario;
	}

	public void setHorario(String horario) {
		this.horario = horario;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public String getHumor() {
		return humor;
	}

	public void setHumor(String humor) {
		this.humor = humor;
	}

	public String getAlimentos() {
		return alimentos;
	}

	public void setAlimentos(String alimentos) {
		this.alimentos = alimentos;
	}
	
	public String getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(String quantidade) {
		this.quantidade = quantidade;
	}

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}
}
