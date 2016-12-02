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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
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
import br.com.projetotcc.entidade.paciente.informacao.ExamesBioquimicos;
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
	
	@Column(name = "Pac_Responsavel")
	private String responsavel;
	
	@JsonManagedReference(value = "paciente-antecedentesFamiliares")
	@OneToOne(cascade = CascadeType.ALL, optional = true, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = AntecedentesFamiliares.class)
	@JoinColumn(name = "Id_AntecedentesFamiliares", insertable = true, updatable = true)
	private AntecedentesFamiliares antecedentesFamiliares;
	
	@JsonManagedReference(value = "paciente-atividadeFisica")
	@OneToOne(cascade = CascadeType.ALL, optional = true, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = AtividadeFisica.class)
	@JoinColumn(name = "Id_AtividadeFisica", insertable = true, updatable = true)
	private AtividadeFisica atividadeFisica;
	
	@JsonManagedReference(value = "paciente-dadosClinicos")
	@OneToOne(cascade = CascadeType.ALL, optional = true, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = DadosClinicos.class)
	@JoinColumn(name = "Id_DadosClinicos", insertable = true, updatable = true)
	private DadosClinicos dadosClinicos;
	
	@JsonManagedReference(value = "paciente-frequenciaAlimentar")
	@OneToOne(cascade = CascadeType.ALL, optional = true, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = FrequenciaAlimentar.class)
	@JoinColumn(name = "Id_FrequenciaAlimentar", insertable = true, updatable = true)
	private FrequenciaAlimentar frequenciaAlimentar;
	
	@JsonManagedReference(value = "paciente-historicoSocialFamiliar")
	@OneToOne(cascade = CascadeType.ALL, optional = true, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = HistoricoSocialFamiliar.class)
	@JoinColumn(name = "Id_HistoricoSocialeFamiliar", insertable = true, updatable = true)
	private HistoricoSocialFamiliar historicoSocialFamiliar;
	
	@JsonManagedReference(value = "paciente-historicoAlimentarNutricional")
	@OneToOne(cascade = CascadeType.ALL, optional = true, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = HistoricoAlimentarNutricional.class)
	@JoinColumn(name = "Id_HistoricoAlimentarNutricional", insertable = true, updatable = true)
	private HistoricoAlimentarNutricional historicoAlimentarNutricional;
	
	@JsonManagedReference(value = "paciente-identificacao")
	@OneToOne(cascade = CascadeType.ALL, optional = true, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Identificacao.class)
	@JoinColumn(name = "Id_identificacao", insertable = true, updatable = true)
	private Identificacao identificacao;
	
	@JsonManagedReference(value = "paciente-login")
	@OneToOne(cascade = CascadeType.ALL, optional = true, fetch = FetchType.EAGER, orphanRemoval = true, targetEntity = Login.class)
	@JoinColumn(name = "Id_Login", insertable = true, updatable = true)
	private Login login;
	
	@JsonBackReference(value = "nutricionista-pacientes")
	@ManyToOne(optional = true, fetch = FetchType.LAZY, targetEntity = Nutricionista.class)
	@JoinColumn(name = "id_nutricionista", insertable = true, updatable = true)
	private Nutricionista nutricionista;
	
	@JsonManagedReference(value = "paciente-dadosAntropometricos")
	@OneToMany(mappedBy = "paciente")
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<DadosAntropometricos> dadosAntropometricos;
	
	@JsonManagedReference(value = "paciente-examesBioquimicos")
	@OneToMany(mappedBy = "paciente")
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<ExamesBioquimicos> examesBioquimicos;
	
	@JsonManagedReference(value = "almoco-paciente")
	@OneToMany(mappedBy = "paciente")
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<Almoco> almocos;
	
	@JsonManagedReference(value = "ceia-paciente")
	@OneToMany(mappedBy = "paciente")
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<Ceia> ceias;
	
	@JsonManagedReference(value = "colacao-paciente")
	@OneToMany(mappedBy = "paciente")
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<Colacao> colacoes;
	
	@JsonManagedReference(value = "desjejum-paciente")
	@OneToMany(mappedBy = "paciente")
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<Desjejum> desjejums;
	
	@JsonManagedReference(value = "jantar-paciente")
	@OneToMany(mappedBy = "paciente")
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<Jantar> jantares;
	
	@JsonManagedReference(value = "lanche-paciente")
	@OneToMany(mappedBy = "paciente")
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<Lanche> lanches;
	
	@JsonManagedReference(value = "foraHora-paciente")
	@OneToMany(mappedBy = "paciente")
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<ForaHora> foraHoras;
	
	@JsonManagedReference(value = "usoMedicamento-paciente")
	@OneToMany(mappedBy = "paciente")
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<UsoMedicamento> usoMedicamentos;
	
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "paciente")
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

	public Nutricionista getNutricionista() {
		return nutricionista;
	}

	public void setNutricionista(Nutricionista nutricionista) {
		this.nutricionista = nutricionista;
	}

	public List<DadosAntropometricos> getDadosAntropometricos() {
		return dadosAntropometricos;
	}

	public void setDadosAntropometricos(List<DadosAntropometricos> dadosAntropometricos) {
		this.dadosAntropometricos = dadosAntropometricos;
	}

	public List<ExamesBioquimicos> getExamesBioquimicos() {
		return examesBioquimicos;
	}

	public void setExamesBioquimicos(List<ExamesBioquimicos> examesBioquimicos) {
		this.examesBioquimicos = examesBioquimicos;
	}	
}
