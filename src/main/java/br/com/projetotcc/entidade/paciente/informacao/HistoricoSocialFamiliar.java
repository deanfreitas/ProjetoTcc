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
@Table(name = "Historico_Social_e_Familiar")
public class HistoricoSocialFamiliar implements InterfaceDadosPaciente {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1628632153413447479L;

	@Id
	@GeneratedValue
	@Column(name = "Id_HistoricoSocialeFamiliar", nullable = false)
	private Long id;
	
	@Column(name = "Hist_Profissao")
	private String profissao;
	
	@Column(name = "Hist_CargaHoraria")
	private String cargaHoraria;
	
	@Column(name = "Hist_ComposicaoFamiliar")
	private String composicaoFamiliar;
	
	@Column(name = "Hist_QuemCompraOsAlimentos")
	private String quemCompraAlimentos;
	
	@Column(name = "Hist_ACompraFeita")
	private String compraFeita;
	
	@Column(name = "Hist_QuemPreparaRefeicoes")
	private String quemPreparaRefeicoes;
	
	@Column(name = "Hist_FazUsoDeBebidasAlcoolicas")
	private String fazUsoDeBebidasAlcoolicas;
	
	@Column(name = "Hist_FumaOuJaFumou")
	private String fuma;
	
	@Column(name = "Hist_ComQuemRealizaRefeicoes")
	private String comQuemRealizaRefeicoes;
	
	@JsonBackReference(value = "paciente-historicoSocialFamiliar")
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "historicoSocialFamiliar")
	private Paciente paciente;
	
	public HistoricoSocialFamiliar(String profissao, String cargaHoraria, String composicaoFamiliar, String quemCompraAlimentos, String compraFeita, 
			String quemPreparaRefeicoes, String fazUsoDeBebidasAlcoolicas, String fuma, String comQuemRealizaRefeicoes) {
		super();
		this.profissao = profissao;
		this.cargaHoraria = cargaHoraria;
		this.composicaoFamiliar = composicaoFamiliar;
		this.quemCompraAlimentos = quemCompraAlimentos;
		this.compraFeita = compraFeita;
		this.quemPreparaRefeicoes = quemPreparaRefeicoes;
		this.fazUsoDeBebidasAlcoolicas = fazUsoDeBebidasAlcoolicas;
		this.fuma = fuma;
		this.comQuemRealizaRefeicoes = comQuemRealizaRefeicoes;
	}
	
	public HistoricoSocialFamiliar(Long id, String profissao, String cargaHoraria, String composicaoFamiliar, String quemCompraAlimentos, String compraFeita, 
			String quemPreparaRefeicoes, String fazUsoDeBebidasAlcoolicas, String fuma, String comQuemRealizaRefeicoes) {
		super();
		this.id = id;
		this.profissao = profissao;
		this.cargaHoraria = cargaHoraria;
		this.composicaoFamiliar = composicaoFamiliar;
		this.quemCompraAlimentos = quemCompraAlimentos;
		this.compraFeita = compraFeita;
		this.quemPreparaRefeicoes = quemPreparaRefeicoes;
		this.fazUsoDeBebidasAlcoolicas = fazUsoDeBebidasAlcoolicas;
		this.fuma = fuma;
		this.comQuemRealizaRefeicoes = comQuemRealizaRefeicoes;
	}
	
	public HistoricoSocialFamiliar() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getProfissao() {
		return profissao;
	}

	public void setProfissao(String profissao) {
		this.profissao = profissao;
	}

	public String getCargaHoraria() {
		return cargaHoraria;
	}

	public void setCargaHoraria(String cargaHoraria) {
		this.cargaHoraria = cargaHoraria;
	}

	public String getComposicaoFamiliar() {
		return composicaoFamiliar;
	}

	public void setComposicaoFamiliar(String composicaoFamiliar) {
		this.composicaoFamiliar = composicaoFamiliar;
	}

	public String getQuemCompraAlimentos() {
		return quemCompraAlimentos;
	}

	public void setQuemCompraAlimentos(String quemCompraAlimentos) {
		this.quemCompraAlimentos = quemCompraAlimentos;
	}

	public String getCompraFeita() {
		return compraFeita;
	}

	public void setCompraFeita(String compraFeita) {
		this.compraFeita = compraFeita;
	}

	public String getQuemPreparaRefeicoes() {
		return quemPreparaRefeicoes;
	}

	public void setQuemPreparaRefeicoes(String quemPreparaRefeicoes) {
		this.quemPreparaRefeicoes = quemPreparaRefeicoes;
	}

	public String getFazUsoDeBebidasAlcoolicas() {
		return fazUsoDeBebidasAlcoolicas;
	}

	public void setFazUsoDeBebidasAlcoolicas(String fazUsoDeBebidasAlcoolicas) {
		this.fazUsoDeBebidasAlcoolicas = fazUsoDeBebidasAlcoolicas;
	}

	public String getFuma() {
		return fuma;
	}

	public void setFuma(String fuma) {
		this.fuma = fuma;
	}

	public String getComQuemRealizaRefeicoes() {
		return comQuemRealizaRefeicoes;
	}

	public void setComQuemRealizaRefeicoes(String comQuemRealizaRefeicoes) {
		this.comQuemRealizaRefeicoes = comQuemRealizaRefeicoes;
	}

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}
}
