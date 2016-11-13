package br.com.projetotcc.entidade.paciente.informacao;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.interfaces.InterfaceEntidade;

@Entity
@Table(name = "Faz_uso_de_medicamento")
public class UsoMedicamento implements InterfaceEntidade {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7750011230304534243L;

	@Id
	@GeneratedValue
	@Column(name = "Id_FazUsodeMedicamento", nullable = false)
	private Long id;
	
	@Column(name = "Med_Nome")
	private String nome;
	
	@Column(name = "Med_Dose")
	private String dose;
	
	@Column(name = "Med_Horario")
	private String horario;
	
	@Column(name = "Med_Motivo")
	private String motivo;
	
	@Column(name = "Med_Inter")
	private String inter;
	
	@ManyToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.LAZY, targetEntity = Paciente.class)
	@JoinColumn(name = "id_Paciente", insertable = true, updatable = true)
	private Paciente paciente;

	public UsoMedicamento(String nome, String dose, String horario, String motivo, String inter) {
		super();
		this.nome = nome;
		this.dose = dose;
		this.horario = horario;
		this.motivo = motivo;
		this.inter = inter;
	}
	
	public UsoMedicamento(Long id, String nome, String dose, String horario, String motivo, String inter) {
		super();
		this.id = id;
		this.nome = nome;
		this.dose = dose;
		this.horario = horario;
		this.motivo = motivo;
		this.inter = inter;
	}
	
	public UsoMedicamento() {
		super();
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDose() {
		return dose;
	}

	public void setDose(String dose) {
		this.dose = dose;
	}

	public String getHorario() {
		return horario;
	}

	public void setHorario(String horario) {
		this.horario = horario;
	}

	public String getMotivo() {
		return motivo;
	}

	public void setMotivo(String motivo) {
		this.motivo = motivo;
	}

	public String getInter() {
		return inter;
	}

	public void setInter(String inter) {
		this.inter = inter;
	}

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}
}
