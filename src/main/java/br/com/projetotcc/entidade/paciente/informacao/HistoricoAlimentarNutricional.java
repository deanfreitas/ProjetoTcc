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
@Table(name = "Historico_Alimentar_Nutricional")
public class HistoricoAlimentarNutricional implements InterfaceDadosPaciente {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1925520716405053784L;

	@Id
	@GeneratedValue
	@Column(name = "Id_HistoricoAlimentarNutricional", nullable = false)
	private Long id;
	
	@Column(name = "Hist_IntoleranciaAlimentar")
	private String intoleranciaAlimentar;
	
	@Column(name = "Hist_PreferenciaAlimentar")
	private String preferenciaAlimentar;
	
	@Column(name = "Hist_AlteracoesDoApetite")
	private String alteracoesDoApetite;
	
	@Column(name = "Hist_OBSAlteracoesDoApetite")
	private String observacaoAlteracoesDoApetite;
	
	@Column(name = "Hist_IniciouObesidadePerdaDePeso")
	private String iniciouObesidadePerdaPeso;
	
	@Column(name = "Hist_SegueDietaEspecial")
	private String segueDietaEspecial;
	
	@Column(name = "Hist_RefeicoesPorDia")
	private String refeicoesDia;
	
	@Column(name = "Hist_ConsumoDeAgua")
	private String consumoAgua;
	
	@Column(name = "Hist_ConsumoDeSal")
	private String consumoSal;
	
	@Column(name = "Hist_ConsumoDeOleo")
	private String consumoOleo;
	
	@Column(name = "Hist_FazUsoDeSuplemento")
	private String fazUsoSuplemento;

	@Column(name = "Hist_QuemIndicou")
	private String quemInidicou;
	
	@JsonBackReference(value = "paciente-historicoAlimentarNutricional")
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "historicoAlimentarNutricional")
	private Paciente paciente;
	
	public HistoricoAlimentarNutricional(String intoleranciaAlimentar, String preferenciaAlimentar, String alteracoesDoApetite, String observacaoAlteracoesDoApetite, 
			String iniciouObesidadePerdaPeso, String segueDietaEspecial, String refeicoesDia, String consumoAgua, String consumoSal, String consumoOleo, 
			String fazUsoSuplemento, String quemInidicou) {
		super();
		this.intoleranciaAlimentar = intoleranciaAlimentar;
		this.preferenciaAlimentar = preferenciaAlimentar;
		this.alteracoesDoApetite = alteracoesDoApetite;
		this.observacaoAlteracoesDoApetite = observacaoAlteracoesDoApetite;
		this.iniciouObesidadePerdaPeso = iniciouObesidadePerdaPeso;
		this.segueDietaEspecial = segueDietaEspecial;
		this.refeicoesDia = refeicoesDia;
		this.consumoAgua = consumoAgua;
		this.consumoSal = consumoSal;
		this.consumoOleo = consumoOleo;
		this.fazUsoSuplemento = fazUsoSuplemento;
		this.quemInidicou = quemInidicou;
	}
	
	public HistoricoAlimentarNutricional(Long id, String intoleranciaAlimentar, String preferenciaAlimentar, String alteracoesDoApetite, String observacaoAlteracoesDoApetite, 
			String iniciouObesidadePerdaPeso, String segueDietaEspecial, String refeicoesDia, String consumoAgua, String consumoSal, String consumoOleo, 
			String fazUsoSuplemento, String quemInidicou) {
		super();
		this.id = id;
		this.intoleranciaAlimentar = intoleranciaAlimentar;
		this.preferenciaAlimentar = preferenciaAlimentar;
		this.alteracoesDoApetite = alteracoesDoApetite;
		this.observacaoAlteracoesDoApetite = observacaoAlteracoesDoApetite;
		this.iniciouObesidadePerdaPeso = iniciouObesidadePerdaPeso;
		this.segueDietaEspecial = segueDietaEspecial;
		this.refeicoesDia = refeicoesDia;
		this.consumoAgua = consumoAgua;
		this.consumoSal = consumoSal;
		this.consumoOleo = consumoOleo;
		this.fazUsoSuplemento = fazUsoSuplemento;
		this.quemInidicou = quemInidicou;
	}
	
	public HistoricoAlimentarNutricional() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getIntoleranciaAlimentar() {
		return intoleranciaAlimentar;
	}

	public void setIntoleranciaAlimentar(String intoleranciaAlimentar) {
		this.intoleranciaAlimentar = intoleranciaAlimentar;
	}

	public String getPreferenciaAlimentar() {
		return preferenciaAlimentar;
	}

	public void setPreferenciaAlimentar(String preferenciaAlimentar) {
		this.preferenciaAlimentar = preferenciaAlimentar;
	}

	public String getObservacaoAlteracoesDoApetite() {
		return observacaoAlteracoesDoApetite;
	}

	public void setObservacaoAlteracoesDoApetite(String observacaoAlteracoesDoApetite) {
		this.observacaoAlteracoesDoApetite = observacaoAlteracoesDoApetite;
	}

	public String getIniciouObesidadePerdaPeso() {
		return iniciouObesidadePerdaPeso;
	}

	public void setIniciouObesidadePerdaPeso(String iniciouObesidadePerdaPeso) {
		this.iniciouObesidadePerdaPeso = iniciouObesidadePerdaPeso;
	}

	public String getSegueDietaEspecial() {
		return segueDietaEspecial;
	}

	public void setSegueDietaEspecial(String segueDietaEspecial) {
		this.segueDietaEspecial = segueDietaEspecial;
	}

	public String getRefeicoesDia() {
		return refeicoesDia;
	}

	public void setRefeicoesDia(String refeicoesDia) {
		this.refeicoesDia = refeicoesDia;
	}

	public String getConsumoAgua() {
		return consumoAgua;
	}

	public void setConsumoAgua(String consumoAgua) {
		this.consumoAgua = consumoAgua;
	}

	public String getConsumoSal() {
		return consumoSal;
	}

	public void setConsumoSal(String consumoSal) {
		this.consumoSal = consumoSal;
	}

	public String getConsumoOleo() {
		return consumoOleo;
	}

	public void setConsumoOleo(String consumoOleo) {
		this.consumoOleo = consumoOleo;
	}

	public String getFazUsoSuplemento() {
		return fazUsoSuplemento;
	}

	public void setFazUsoSuplemento(String fazUsoSuplemento) {
		this.fazUsoSuplemento = fazUsoSuplemento;
	}

	public String getQuemInidicou() {
		return quemInidicou;
	}

	public void setQuemInidicou(String quemInidicou) {
		this.quemInidicou = quemInidicou;
	}

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}
}
