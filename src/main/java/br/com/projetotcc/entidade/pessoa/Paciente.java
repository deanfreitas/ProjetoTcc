package br.com.projetotcc.entidade.pessoa;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import br.com.projetotcc.entidade.paciente.alimentacao.Almoco;
import br.com.projetotcc.entidade.paciente.alimentacao.Ceia;
import br.com.projetotcc.entidade.paciente.alimentacao.Colacao;
import br.com.projetotcc.entidade.paciente.alimentacao.Desjejum;
import br.com.projetotcc.entidade.paciente.alimentacao.ForaHora;
import br.com.projetotcc.entidade.paciente.alimentacao.Jantar;
import br.com.projetotcc.entidade.paciente.alimentacao.Lanche;
import br.com.projetotcc.entidade.paciente.informacao.AntecedentesFamiliares;
import br.com.projetotcc.entidade.paciente.informacao.AtividadeFisica;
import br.com.projetotcc.entidade.paciente.informacao.DadosAntropometricos;
import br.com.projetotcc.entidade.paciente.informacao.DadosClinicos;
import br.com.projetotcc.entidade.paciente.informacao.FrequenciaAlimentar;
import br.com.projetotcc.entidade.paciente.informacao.HistoricoAlimentarNutricional;
import br.com.projetotcc.entidade.paciente.informacao.HistoricoSocialFamiliar;
import br.com.projetotcc.entidade.paciente.informacao.Identificacao;
import br.com.projetotcc.entidade.paciente.informacao.UsoMedicamento;
import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.entidade.pessoa.informacao.Role;
import br.com.projetotcc.interfaces.InterfacePessoa;

@Entity
@Table(name = "Paciente")
public class Paciente implements InterfacePessoa {

	/**
	 * 
	 */
	private static final long serialVersionUID = 646335462231584348L;

	@Id
	@GeneratedValue
	@Column(name = "id_Paciente", nullable = false)
	private Long id;
	
	@Column(name = "Pac_NomeCompleto")
	private String nomeCompleto;
	
	@Column(name = "Pac_Email")
	private String email;
	
	@Column(name = "Pac_Responsavel")
	private String responsavel;
	
	@JsonManagedReference(value = "paciente-antecedentesFamiliares")
	@OneToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = AntecedentesFamiliares.class)
	@JoinColumn(name = "Id_AntecedentesFamiliares", insertable = true, updatable = true)
	private AntecedentesFamiliares antecedentesFamiliares;
	
	@JsonManagedReference(value = "paciente-dadosAntropometricos")
	@OneToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = DadosAntropometricos.class)
	@JoinColumn(name = "Id_DadosAntropometricos", insertable = true, updatable = true)
	private DadosAntropometricos dadosAntropometricos;
	
	@JsonManagedReference(value = "paciente-atividadeFisica")
	@OneToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = AtividadeFisica.class)
	@JoinColumn(name = "Id_AtividadeFisica", insertable = true, updatable = true)
	private AtividadeFisica atividadeFisica;
	
	@JsonManagedReference(value = "paciente-dadosClinicos")
	@OneToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = DadosClinicos.class)
	@JoinColumn(name = "Id_DadosClinicos", insertable = true, updatable = true)
	private DadosClinicos dadosClinicos;
	
	@JsonManagedReference(value = "paciente-frequenciaAlimentar")
	@OneToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = FrequenciaAlimentar.class)
	@JoinColumn(name = "Id_FrequenciaAlimentar", insertable = true, updatable = true)
	private FrequenciaAlimentar frequenciaAlimentar;
	
	@JsonManagedReference(value = "paciente-historicoSocialFamiliar")
	@OneToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = HistoricoSocialFamiliar.class)
	@JoinColumn(name = "Id_HistoricoSocialeFamiliar", insertable = true, updatable = true)
	private HistoricoSocialFamiliar historicoSocialFamiliar;
	
	@JsonManagedReference(value = "paciente-historicoAlimentarNutricional")
	@OneToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = HistoricoAlimentarNutricional.class)
	@JoinColumn(name = "Id_HistoricoAlimentarNutricional", insertable = true, updatable = true)
	private HistoricoAlimentarNutricional historicoAlimentarNutricional;
	
	@JsonManagedReference(value = "paciente-identificacao")
	@OneToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Identificacao.class)
	@JoinColumn(name = "Id_identificacao", insertable = true, updatable = true)
	private Identificacao identificacao;
	
	@JsonManagedReference(value = "paciente-login")
	@OneToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Login.class)
	@JoinColumn(name = "Id_Login", insertable = true, updatable = true)
	private Login login;
	
	@JsonBackReference(value = "almoco-paciente")
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "paciente")
	private List<Almoco> almocos;
	
	@JsonBackReference(value = "ceia-paciente")
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "paciente")
	private List<Ceia> ceias;
	
	@JsonBackReference(value = "colacao-paciente")
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "paciente")
	private List<Colacao> colacoes;
	
	@JsonBackReference(value = "desjejum-paciente")
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "paciente")
	private List<Desjejum> desjejums;
	
	@JsonBackReference(value = "jantar-paciente")
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "paciente")
	private List<Jantar> jantares;
	
	@JsonBackReference(value = "lanche-paciente")
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "paciente")
	private List<Lanche> lanches;
	
	@JsonBackReference(value = "foraHora-paciente")
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "paciente")
	private List<ForaHora> foraHoras;
	
	@JsonBackReference(value = "usoMedicamento-paciente")
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "paciente")
	private List<UsoMedicamento> usoMedicamentos;
	
	@JsonBackReference(value = "nutricionista-role")
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "nutricionista")
	private Set<Role> roles;
	
	public Paciente() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNomeCompleto() {
		return nomeCompleto;
	}

	public void setNomeCompleto(String nomeCompleto) {
		this.nomeCompleto = nomeCompleto;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getResponsavel() {
		return responsavel;
	}

	public void setResponsavel(String responsavel) {
		this.responsavel = responsavel;
	}

	public AntecedentesFamiliares getAntecedentesFamiliares() {
		return antecedentesFamiliares;
	}

	public void setAntecedentesFamiliares(AntecedentesFamiliares antecedentesFamiliares) {
		this.antecedentesFamiliares = antecedentesFamiliares;
	}

	public DadosAntropometricos getDadosAntropometricos() {
		return dadosAntropometricos;
	}

	public void setDadosAntropometricos(DadosAntropometricos dadosAntropometricos) {
		this.dadosAntropometricos = dadosAntropometricos;
	}

	public AtividadeFisica getAtividadeFisica() {
		return atividadeFisica;
	}

	public void setAtividadeFisica(AtividadeFisica atividadeFisica) {
		this.atividadeFisica = atividadeFisica;
	}

	public DadosClinicos getDadosClinicos() {
		return dadosClinicos;
	}

	public void setDadosClinicos(DadosClinicos dadosClinicos) {
		this.dadosClinicos = dadosClinicos;
	}

	public FrequenciaAlimentar getFrequenciaAlimentar() {
		return frequenciaAlimentar;
	}

	public void setFrequenciaAlimentar(FrequenciaAlimentar frequenciaAlimentar) {
		this.frequenciaAlimentar = frequenciaAlimentar;
	}

	public HistoricoSocialFamiliar getHistoricoSocialFamiliar() {
		return historicoSocialFamiliar;
	}

	public void setHistoricoSocialFamiliar(HistoricoSocialFamiliar historicoSocialFamiliar) {
		this.historicoSocialFamiliar = historicoSocialFamiliar;
	}

	public HistoricoAlimentarNutricional getHistoricoAlimentarNutricional() {
		return historicoAlimentarNutricional;
	}

	public void setHistoricoAlimentarNutricional(HistoricoAlimentarNutricional historicoAlimentarNutricional) {
		this.historicoAlimentarNutricional = historicoAlimentarNutricional;
	}

	public Identificacao getIdentificacao() {
		return identificacao;
	}

	public void setIdentificacao(Identificacao identificacao) {
		this.identificacao = identificacao;
	}

	public Login getLogin() {
		return login;
	}

	public void setLogin(Login login) {
		this.login = login;
	}

	public List<Almoco> getAlmocos() {
		return almocos;
	}

	public void setAlmocos(List<Almoco> almocos) {
		this.almocos = almocos;
	}

	public List<Ceia> getCeias() {
		return ceias;
	}

	public void setCeias(List<Ceia> ceias) {
		this.ceias = ceias;
	}

	public List<Colacao> getColacoes() {
		return colacoes;
	}

	public void setColacoes(List<Colacao> colacoes) {
		this.colacoes = colacoes;
	}

	public List<Desjejum> getDesjejums() {
		return desjejums;
	}

	public void setDesjejums(List<Desjejum> desjejums) {
		this.desjejums = desjejums;
	}

	public List<Jantar> getJantares() {
		return jantares;
	}

	public void setJantares(List<Jantar> jantares) {
		this.jantares = jantares;
	}

	public List<Lanche> getLanches() {
		return lanches;
	}

	public void setLanches(List<Lanche> lanches) {
		this.lanches = lanches;
	}

	public List<ForaHora> getForaHoras() {
		return foraHoras;
	}

	public void setForaHoras(List<ForaHora> foraHoras) {
		this.foraHoras = foraHoras;
	}

	public List<UsoMedicamento> getUsoMedicamentos() {
		return usoMedicamentos;
	}

	public void setUsoMedicamentos(List<UsoMedicamento> usoMedicamentos) {
		this.usoMedicamentos = usoMedicamentos;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
}
