package br.com.projetotcc.entidade.paciente.informacao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.interfaces.InterfaceDadosPaciente;

@Entity
@Table(name = "Dados_Antropometricos")
public class DadosAntropometricos implements InterfaceDadosPaciente {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4520477081037211361L;

	@Id
	@GeneratedValue
	@Column(name = "Id_DadosAntropometricos", nullable = false)
	private Long id;
	
	@Column(name = "Ant_Data")
	private String data;
	
	@Column(name = "Ant_PA")
	private String pa;
	
	@Column(name = "Ant_Peso")
	private Double peso;
	
	@Column(name = "Ant_Altura")
	private Double altura; 
	
	@Column(name = "Ant_IMC")
	private Double imc;
	
	@Column(name = "Ant_PCT")
	private Double pct;
	
	@Column(name = "Ant_PCB")
	private Double pcb;
	
	@Column(name = "Ant_PCSE")
	private Double pcse;
	
	@Column(name = "Ant_Peitoral")
	private Double peitoral;
	
	@Column(name = "Ant_PCAB")
	private Double pcab;
	
	@Column(name = "Ant_PCSI")
	private Double pcsi;
	
	@Column(name = "Ant_PCCOXA")
	private Double pcCoxa;
	
	@Column(name = "Ant_PCpant")
	private Double pcPant;
	
	@Column(name = "Ant_Braco")
	private Double braco;
	
	@Column(name = "Ant_Antebraco")
	private Double antebraco;
	
	@Column(name = "Ant_punho")
	private Double punho;
	
	@Column(name = "Ant_Torax")
	private Double torax;
	
	@Column(name = "Ant_Cintura")
	private Double cintura;
	
	@Column(name = "Ant_Coxa")
	private Double coxa;
	
	@Column(name = "Ant_Panturrilha")
	private Double panturrilha;
	
	@Column(name = "Ant_Comple")
	private Double comple;
	
	@Column(name = "Ant_EM")
	private Double em;
	
	@Column(name = "Ant_porcentG")
	private Double g;
	
	@Column(name = "Ant_porcentMM")
	private Double mm;
	
	@JsonBackReference(value = "dadosAntropometricos-paciente")
	@ManyToOne(optional = true, fetch = FetchType.LAZY, targetEntity = Paciente.class)
	@JoinColumn(name = "id_Paciente", insertable = true, updatable = true)
	private Paciente paciente;

	public DadosAntropometricos() {
		super();
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getPa() {
		return pa;
	}

	public void setPa(String pa) {
		this.pa = pa;
	}

	public Double getPeso() {
		return peso;
	}

	public void setPeso(Double peso) {
		this.peso = peso;
	}

	public Double getAltura() {
		return altura;
	}

	public void setAltura(Double altura) {
		this.altura = altura;
	}

	public Double getImc() {
		return imc;
	}

	public void setImc(Double imc) {
		this.imc = imc;
	}

	public Double getPct() {
		return pct;
	}

	public void setPct(Double pct) {
		this.pct = pct;
	}

	public Double getPcb() {
		return pcb;
	}

	public void setPcb(Double pcb) {
		this.pcb = pcb;
	}

	public Double getPcse() {
		return pcse;
	}

	public void setPcse(Double pcse) {
		this.pcse = pcse;
	}

	public Double getPeitoral() {
		return peitoral;
	}

	public void setPeitoral(Double peitoral) {
		this.peitoral = peitoral;
	}

	public Double getPcab() {
		return pcab;
	}

	public void setPcab(Double pcab) {
		this.pcab = pcab;
	}

	public Double getPcsi() {
		return pcsi;
	}

	public void setPcsi(Double pcsi) {
		this.pcsi = pcsi;
	}

	public Double getPcCoxa() {
		return pcCoxa;
	}

	public void setPcCoxa(Double pcCoxa) {
		this.pcCoxa = pcCoxa;
	}

	public Double getPcPant() {
		return pcPant;
	}

	public void setPcPant(Double pcPant) {
		this.pcPant = pcPant;
	}

	public Double getBraco() {
		return braco;
	}

	public void setBraco(Double braco) {
		this.braco = braco;
	}

	public Double getAntebraco() {
		return antebraco;
	}

	public void setAntebraco(Double antebraco) {
		this.antebraco = antebraco;
	}

	public Double getPunho() {
		return punho;
	}

	public void setPunho(Double punho) {
		this.punho = punho;
	}

	public Double getTorax() {
		return torax;
	}

	public void setTorax(Double torax) {
		this.torax = torax;
	}

	public Double getCintura() {
		return cintura;
	}

	public void setCintura(Double cintura) {
		this.cintura = cintura;
	}

	public Double getPanturrilha() {
		return panturrilha;
	}

	public void setPanturrilha(Double panturrilha) {
		this.panturrilha = panturrilha;
	}

	public Double getComple() {
		return comple;
	}

	public void setComple(Double comple) {
		this.comple = comple;
	}

	public Double getEm() {
		return em;
	}

	public void setEm(Double em) {
		this.em = em;
	}

	public Double getG() {
		return g;
	}

	public void setG(Double g) {
		this.g = g;
	}

	public Double getMm() {
		return mm;
	}

	public void setMm(Double mm) {
		this.mm = mm;
	}
	
	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}
}
