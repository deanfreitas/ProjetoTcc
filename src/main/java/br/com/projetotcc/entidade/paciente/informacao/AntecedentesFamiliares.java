package br.com.projetotcc.entidade.paciente.informacao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.interfaces.InterfaceEntidade;

@Entity
@Table(name = "Antecedentes_Familiares")
public class AntecedentesFamiliares implements InterfaceEntidade {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6349183492776103789L;

	@Id
	@GeneratedValue
	@Column(name = "Id_AntecedentesFamiliares", nullable = false)
	private Long id;
	
	@Column(name = "Ant_Dm")
	private boolean dm;
	
	@Column(name = "Ant_Ha")
	private boolean ha;
	
	@Column(name = "Ant_Ca")
	private boolean ca;
	
	@Column(name = "Ant_Dislipidemia")
	private boolean dislipidemia;
	
	@Column(name = "Ant_Obesidade")
	private boolean obesidade;
	
	@Column(name = "Ant_Magreza")
	private boolean magreza;
	
	@Column(name = "Ant_Outros")
	private boolean outros;
	
	@Column(name = "Ant_OBSDm")
	private String observacaoDm;
	
	@Column(name = "Ant_OBSHa")
	private String observacaoHa;
	
	@Column(name = "Ant_OBSCa")
	private String observacaoCa;
	
	@Column(name = "Ant_OBSDislipedemia")
	private String observacaoDislipedemia;
	
	@Column(name = "Ant_OBSObesidade")
	private String observacaoObesidade;
	
	@Column(name = "Ant_OBSMagreza")
	private String observacaoMagreza;
	
	@Column(name = "Ant_OBSOutros")
	private String observacaoOutros;
	
	@JsonBackReference(value = "paciente-antecedentesFamiliares")
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "antecedentesFamiliares")
	private Paciente paciente;

	public AntecedentesFamiliares(boolean dm, boolean ha, boolean ca, boolean dislipidemia, boolean obesidade, boolean magreza, boolean outros) {
		super();
		this.dm = dm;
		this.ha = ha;
		this.ca = ca;
		this.dislipidemia = dislipidemia;
		this.obesidade = obesidade;
		this.magreza = magreza;
		this.outros = outros;
	}
	
	public AntecedentesFamiliares(Long id, boolean dm, boolean ha, boolean ca, boolean dislipidemia, boolean obesidade, boolean magreza, boolean outros) {
		super();
		this.id = id;
		this.dm = dm;
		this.ha = ha;
		this.ca = ca;
		this.dislipidemia = dislipidemia;
		this.obesidade = obesidade;
		this.magreza = magreza;
		this.outros = outros;
	}
	
	public AntecedentesFamiliares(boolean dm, boolean ha, boolean ca, boolean dislipidemia, boolean obesidade, boolean magreza, boolean outros, 
			String observacaoDm, String observacaoHa, String observacaoCa, String observacaoDislipedemia, String observacaoObesidade, String observacaoMagreza, 
			String observacaoOutros) {
		super();
		this.dm = dm;
		this.ha = ha;
		this.ca = ca;
		this.dislipidemia = dislipidemia;
		this.obesidade = obesidade;
		this.magreza = magreza;
		this.outros = outros;
		this.observacaoDm = observacaoDm;
		this.observacaoHa = observacaoHa;
		this.observacaoCa = observacaoCa;
		this.observacaoDislipedemia = observacaoDislipedemia;
		this.observacaoObesidade = observacaoObesidade;
		this.observacaoMagreza = observacaoMagreza;
		this.observacaoOutros = observacaoOutros;
	}
	
	public AntecedentesFamiliares(Long id, boolean dm, boolean ha, boolean ca, boolean dislipidemia, boolean obesidade, boolean magreza, boolean outros, 
			String observacaoDm, String observacaoHa, String observacaoCa, String observacaoDislipedemia, String observacaoObesidade, String observacaoMagreza, 
			String observacaoOutros) {
		super();
		this.id = id;
		this.dm = dm;
		this.ha = ha;
		this.ca = ca;
		this.dislipidemia = dislipidemia;
		this.obesidade = obesidade;
		this.magreza = magreza;
		this.outros = outros;
		this.observacaoDm = observacaoDm;
		this.observacaoHa = observacaoHa;
		this.observacaoCa = observacaoCa;
		this.observacaoDislipedemia = observacaoDislipedemia;
		this.observacaoObesidade = observacaoObesidade;
		this.observacaoMagreza = observacaoMagreza;
		this.observacaoOutros = observacaoOutros;
	}
	
	public AntecedentesFamiliares() {
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public boolean isDm() {
		return dm;
	}

	public void setDm(boolean dm) {
		this.dm = dm;
	}

	public boolean isHa() {
		return ha;
	}

	public void setHa(boolean ha) {
		this.ha = ha;
	}

	public boolean isCa() {
		return ca;
	}

	public void setCa(boolean ca) {
		this.ca = ca;
	}

	public boolean isDislipidemia() {
		return dislipidemia;
	}

	public void setDislipidemia(boolean dislipidemia) {
		this.dislipidemia = dislipidemia;
	}

	public boolean isObesidade() {
		return obesidade;
	}

	public void setObesidade(boolean obesidade) {
		this.obesidade = obesidade;
	}

	public boolean isMagreza() {
		return magreza;
	}

	public void setMagreza(boolean magreza) {
		this.magreza = magreza;
	}

	public boolean isOutros() {
		return outros;
	}

	public void setOutros(boolean outros) {
		this.outros = outros;
	}

	public String getObservacaoDm() {
		return observacaoDm;
	}

	public void setObservacaoDm(String observacaoDm) {
		this.observacaoDm = observacaoDm;
	}

	public String getObservacaoHa() {
		return observacaoHa;
	}

	public void setObservacaoHa(String observacaoHa) {
		this.observacaoHa = observacaoHa;
	}

	public String getObservacaoCa() {
		return observacaoCa;
	}

	public void setObservacaoCa(String observacaoCa) {
		this.observacaoCa = observacaoCa;
	}

	public String getObservacaoDislipedemia() {
		return observacaoDislipedemia;
	}

	public void setObservacaoDislipedemia(String observacaoDislipedemia) {
		this.observacaoDislipedemia = observacaoDislipedemia;
	}

	public String getObservacaoObesidade() {
		return observacaoObesidade;
	}

	public void setObservacaoObesidade(String observacaoObesidade) {
		this.observacaoObesidade = observacaoObesidade;
	}

	public String getObservacaoMagreza() {
		return observacaoMagreza;
	}

	public void setObservacaoMagreza(String observacaoMagreza) {
		this.observacaoMagreza = observacaoMagreza;
	}

	public String getObservacaoOutros() {
		return observacaoOutros;
	}

	public void setObservacaoOutros(String observacaoOutros) {
		this.observacaoOutros = observacaoOutros;
	}

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}
}
