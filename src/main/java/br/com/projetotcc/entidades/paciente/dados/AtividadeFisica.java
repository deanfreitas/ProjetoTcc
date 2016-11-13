package br.com.projetotcc.entidades.paciente.dados;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

import br.com.projetotcc.entidades.pessoa.Paciente;
import br.com.projetotcc.interfaces.InterfaceEntidade;

@Entity
@Table(name = "Atividade_Fisica")
public class AtividadeFisica implements InterfaceEntidade {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4243648886368994435L;

	@Id
	@GeneratedValue
	@Column(name = "Id_AtividadeFisica", nullable = false)
	private Long id;
	
	@Column(name = "Ativ_TipoDeAtividadeFisica")
	private String tipo;
	
	@Column(name = "Ativ_Frequencia")
	private String frequencia;
	
	@Column(name = "Ativ_Duracao")
	private String duracao;
	
	@Column(name = "Ativ_VocePraticaAsAtividades")
	private String pratica;
	
	@Column(name = "Ativ_Suplemento")
	private boolean suplemento;
	
	@Column(name = "Ativ_HoraPreferido")
	private String horaPreferida;
	
	@Column(name = "Ativ_OBSsuplemento")
	private String observacaoSuplemento;
	
	@JsonBackReference(value = "paciente-atividadeFisica")
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "atividadeFisica")
	private Paciente paciente;
	
	public AtividadeFisica(String tipo, String frequencia, String duracao, boolean suplemento, String pratica, String horaPreferida) {
		super();
		this.tipo = tipo;
		this.frequencia = frequencia;
		this.duracao = duracao;
		this.pratica = pratica;
		this.suplemento = suplemento;
		this.horaPreferida = horaPreferida;
	}
	
	public AtividadeFisica(Long id, String tipo, String frequencia, String duracao, boolean suplemento, String pratica, String horaPreferida) {
		super();
		this.id = id;
		this.tipo = tipo;
		this.frequencia = frequencia;
		this.duracao = duracao;
		this.pratica = pratica;
		this.suplemento = suplemento;
		this.horaPreferida = horaPreferida;
	}
	
	public AtividadeFisica(String tipo, String frequencia, String duracao, boolean suplemento, String pratica, String horaPreferida, String observacaoSuplemento) {
		super();
		this.tipo = tipo;
		this.frequencia = frequencia;
		this.duracao = duracao;
		this.pratica = pratica;
		this.suplemento = suplemento;
		this.horaPreferida = horaPreferida;
		this.observacaoSuplemento = observacaoSuplemento;
	}
	
	public AtividadeFisica(Long id, String tipo, String frequencia, String duracao, boolean suplemento, String pratica, String horaPreferida, String observacaoSuplemento) {
		super();
		this.id = id;
		this.tipo = tipo;
		this.frequencia = frequencia;
		this.duracao = duracao;
		this.pratica = pratica;
		this.suplemento = suplemento;
		this.horaPreferida = horaPreferida;
		this.observacaoSuplemento = observacaoSuplemento;
	}
	
	public AtividadeFisica() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getFrequencia() {
		return frequencia;
	}

	public void setFrequencia(String frequencia) {
		this.frequencia = frequencia;
	}

	public String getDuracao() {
		return duracao;
	}

	public void setDuracao(String duracao) {
		this.duracao = duracao;
	}

	public String getPratica() {
		return pratica;
	}

	public void setPratica(String pratica) {
		this.pratica = pratica;
	}

	public boolean isSuplemento() {
		return suplemento;
	}

	public void setSuplemento(boolean suplemento) {
		this.suplemento = suplemento;
	}

	public String getHoraPreferida() {
		return horaPreferida;
	}

	public void setHoraPreferida(String horaPreferida) {
		this.horaPreferida = horaPreferida;
	}

	public String getObservacaoSuplemento() {
		return observacaoSuplemento;
	}

	public void setObservacaoSuplemento(String observacaoSuplemento) {
		this.observacaoSuplemento = observacaoSuplemento;
	}

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}
}
