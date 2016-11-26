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
import br.com.projetotcc.interfaces.InterfaceDadosPaciente;

@Entity
@Table(name = "Dados_Clinicos")
public class DadosClinicos implements InterfaceDadosPaciente {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8031997504782785984L;

	@Id
	@GeneratedValue
	@Column(name = "Id_DadosClinicos", nullable = false)
	private Long id;
	
	@Column(name = "Dad_Vomito")
	private boolean vomito;
	
	@Column(name = "Dad_Nausea")
	private boolean nausea;
	
	@Column(name = "Dad_Mastigacao")
	private boolean mastigacao;
	
	@Column(name = "Dad_Degluticao")
	private boolean degluticao;
	
	@Column(name = "Dad_Digestao")
	private boolean digestao;
	
	@Column(name = "Dad_Pirose")
	private boolean pirose;
	
	@Column(name = "Dad_Refluxo")
	private boolean refluxo;
	
	@Column(name = "Dad_Diarreia")
	private boolean diarreia;
	
	@Column(name = "Dad_Obstipacao")
	private boolean obstipacao;

	@Column(name = "Dad_Insonia")
	private boolean insonia;
	
	@Column(name = "Dad_Estresse")
	private boolean estresse;

	@Column(name = "Dad_Cancaso")
	private boolean cancaso;
	
	@Column(name = "Dad_Ansiedade")
	private boolean ansiedade;
	
	@Column(name = "Dad_PossuiLesoesOuProblemasNaPele")
	private String lesoesProblemasPele;
	
	@Column(name = "Dad_JaPassouPorAlgumTipoDeCirurgia")
	private String cirurgia;
	
	@Column(name = "Dad_HabitoIntestinal")
	private String habitoIntestinal;
	
	@Column(name = "Dad_ConsistenciaDasFezes")
	private String fezes;
	
	@Column(name = "Dad_DiureseColoracaoQuantidade")
	private String cor;
	
	@Column(name = "Dad_PossuiAlgumaPatologia")
	private String patologia;
	
	@Column(name = "Dad_OBSHabitoIntestinal")
	private String observacaoHabitoIntestinal;
	
	@Column(name = "Dad_OBSConsistênciaDasFezes")
	private String observacaoFezes;
	
	@Column(name = "Dad_OBSvomito")
	private String observacaoVomito;
	
	@Column(name = "Dad_OBSnausea")
	private String observacaoNausea;
	
	@Column(name = "Dad_OBSmastigacao")
	private String observacaoMastigacao;
	
	@Column(name = "Dad_OBSdegluticao")
	private String observacaoDegluticao;
	
	@Column(name = "Dad_OBSdigestao")
	private String observacaoDigestao;
	
	@Column(name = "Dad_OBSpirose")
	private String observacaoPirose;
	
	@Column(name = "Dad_OBSrefluxo")
	private String observacaoRefluxo;
	
	@Column(name = "Dad_OBSdiarreia")
	private String observacaoDiarreia;

	@Column(name = "Dad_OBSobstipacao")
	private String observacaoObstipacao;
	
	@Column(name = "Dad_OBSinsonia")
	private String observacaoInsonia;
	
	@Column(name = "Dad_OBSestresse")
	private String observacaoEstresse;
	
	@Column(name = "Dad_OBScancaso")
	private String observacaoCancaso;
	
	@Column(name = "Dad_OBSansiedade")
	private String observacaoAnsiedade;
	
	@JsonBackReference(value = "paciente-dadosClinicos")
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "dadosClinicos")
	private Paciente paciente;
	
	public DadosClinicos() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public boolean isVomito() {
		return vomito;
	}

	public void setVomito(boolean vomito) {
		this.vomito = vomito;
	}

	public boolean isNausea() {
		return nausea;
	}

	public void setNausea(boolean nausea) {
		this.nausea = nausea;
	}

	public boolean isMastigacao() {
		return mastigacao;
	}

	public void setMastigacao(boolean mastigacao) {
		this.mastigacao = mastigacao;
	}

	public boolean isDegluticao() {
		return degluticao;
	}

	public void setDegluticao(boolean degluticao) {
		this.degluticao = degluticao;
	}

	public boolean isDigestao() {
		return digestao;
	}

	public void setDigestao(boolean digestao) {
		this.digestao = digestao;
	}

	public boolean isPirose() {
		return pirose;
	}

	public void setPirose(boolean pirose) {
		this.pirose = pirose;
	}

	public boolean isRefluxo() {
		return refluxo;
	}

	public void setRefluxo(boolean refluxo) {
		this.refluxo = refluxo;
	}

	public boolean isDiarreia() {
		return diarreia;
	}

	public void setDiarreia(boolean diarreia) {
		this.diarreia = diarreia;
	}

	public boolean isObstipacao() {
		return obstipacao;
	}

	public void setObstipacao(boolean obstipacao) {
		this.obstipacao = obstipacao;
	}

	public boolean isInsonia() {
		return insonia;
	}

	public void setInsonia(boolean insonia) {
		this.insonia = insonia;
	}

	public boolean isEstresse() {
		return estresse;
	}

	public void setEstresse(boolean estresse) {
		this.estresse = estresse;
	}

	public boolean isCancaso() {
		return cancaso;
	}

	public void setCancaso(boolean cancaso) {
		this.cancaso = cancaso;
	}

	public boolean isAnsiedade() {
		return ansiedade;
	}

	public void setAnsiedade(boolean ansiedade) {
		this.ansiedade = ansiedade;
	}

	public String getLesoesProblemasPele() {
		return lesoesProblemasPele;
	}

	public void setLesoesProblemasPele(String lesoesProblemasPele) {
		this.lesoesProblemasPele = lesoesProblemasPele;
	}

	public String getCirurgia() {
		return cirurgia;
	}

	public void setCirurgia(String cirurgia) {
		this.cirurgia = cirurgia;
	}

	public String getCor() {
		return cor;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	public String getPatologia() {
		return patologia;
	}

	public void setPatologia(String patologia) {
		this.patologia = patologia;
	}

	public String getObservacaoHabitoIntestinal() {
		return observacaoHabitoIntestinal;
	}

	public void setObservacaoHabitoIntestinal(String observacaoHabitoIntestinal) {
		this.observacaoHabitoIntestinal = observacaoHabitoIntestinal;
	}

	public String getObservacaoFezes() {
		return observacaoFezes;
	}

	public void setObservacaoFezes(String observacaoFezes) {
		this.observacaoFezes = observacaoFezes;
	}

	public String getObservacaoVomito() {
		return observacaoVomito;
	}

	public void setObservacaoVomito(String observacaoVomito) {
		this.observacaoVomito = observacaoVomito;
	}

	public String getObservacaoNausea() {
		return observacaoNausea;
	}

	public void setObservacaoNausea(String observacaoNausea) {
		this.observacaoNausea = observacaoNausea;
	}

	public String getObservacaoMastigacao() {
		return observacaoMastigacao;
	}

	public void setObservacaoMastigacao(String observacaoMastigacao) {
		this.observacaoMastigacao = observacaoMastigacao;
	}

	public String getObservacaoDegluticao() {
		return observacaoDegluticao;
	}

	public void setObservacaoDegluticao(String observacaoDegluticao) {
		this.observacaoDegluticao = observacaoDegluticao;
	}

	public String getObservacaoDigestao() {
		return observacaoDigestao;
	}

	public void setObservacaoDigestao(String observacaoDigestao) {
		this.observacaoDigestao = observacaoDigestao;
	}

	public String getObservacaoPirose() {
		return observacaoPirose;
	}

	public void setObservacaoPirose(String observacaoPirose) {
		this.observacaoPirose = observacaoPirose;
	}

	public String getObservacaoRefluxo() {
		return observacaoRefluxo;
	}

	public void setObservacaoRefluxo(String observacaoRefluxo) {
		this.observacaoRefluxo = observacaoRefluxo;
	}

	public String getObservacaoDiarreia() {
		return observacaoDiarreia;
	}

	public void setObservacaoDiarreia(String observacaoDiarreia) {
		this.observacaoDiarreia = observacaoDiarreia;
	}

	public String getObservacaoObstipacao() {
		return observacaoObstipacao;
	}

	public void setObservacaoObstipacao(String observacaoObstipacao) {
		this.observacaoObstipacao = observacaoObstipacao;
	}

	public String getObservacaoInsonia() {
		return observacaoInsonia;
	}

	public void setObservacaoInsonia(String observacaoInsonia) {
		this.observacaoInsonia = observacaoInsonia;
	}

	public String getObservacaoEstresse() {
		return observacaoEstresse;
	}

	public void setObservacaoEstresse(String observacaoEstresse) {
		this.observacaoEstresse = observacaoEstresse;
	}

	public String getObservacaoCancaso() {
		return observacaoCancaso;
	}

	public void setObservacaoCancaso(String observacaoCancaso) {
		this.observacaoCancaso = observacaoCancaso;
	}

	public String getObservacaoAnsiedade() {
		return observacaoAnsiedade;
	}

	public void setObservacaoAnsiedade(String observacaoAnsiedade) {
		this.observacaoAnsiedade = observacaoAnsiedade;
	}

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}

	public String getHabitoIntestinal() {
		return habitoIntestinal;
	}

	public void setHabitoIntestinal(String habitoIntestinal) {
		this.habitoIntestinal = habitoIntestinal;
	}

	public String getFezes() {
		return fezes;
	}

	public void setFezes(String fezes) {
		this.fezes = fezes;
	}
}
