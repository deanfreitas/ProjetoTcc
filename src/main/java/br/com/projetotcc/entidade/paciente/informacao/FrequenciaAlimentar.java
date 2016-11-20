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
@Table(name = "Frequencia_Alimentar")
public class FrequenciaAlimentar implements InterfaceDadosPaciente {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4987296342679753365L;

	@Id
	@GeneratedValue
	@Column(name = "Id_FrequenciaAlimentar", nullable = false)
	private Long id;
	
	@Column(name = "Freq_Arroz")
	private String arroz;
	
	@Column(name = "Freq_Macarrao")
	private String macarrao;
	
	@Column(name = "Freq_BatataMandioca")
	private String batataMandioca;
	
	@Column(name = "Freq_Pao")
	private String pao;
	
	@Column(name = "Freq_PaodeQueijo")
	private String paoQueijo;
	
	@Column(name = "Freq_Farinhas")
	private String farinhas;
	
	@Column(name = "Freq_CerealMatinal")
	private String cerealMatinal;
	
	@Column(name = "Freq_HortalicasCruas")
	private String hortalicasCruas;

	@Column(name = "Freq_HortalicasCozidas")
	private String hortalicasCozidas;
	
	@Column(name = "Freq_Frutas")
	private String frutas;
	
	@Column(name = "Freq_LeiteIntegral")
	private String leiteIntegral;
	
	@Column(name = "Freq_LeiteDesnatado")
	private String leiteDesnatado;
	
	@Column(name = "Freq_Iorgute")
	private String iorgute;
	
	@Column(name = "Freq_IorguteDesnatado")
	private String iorguteDesnatado;

	@Column(name = "Freq_Queijos")
	private String queijos;
	
	@Column(name = "Freq_CarneVermelha")
	private String carneVermelha;
	
	@Column(name = "Freq_Embutidos")
	private String embutidos;
	
	@Column(name = "Freq_Enlatados")
	private String enlatados;
	
	@Column(name = "Freq_Ovos")
	private String ovos;
	
	@Column(name = "Freq_Leguminosas")
	private String leguminosas;
	
	@Column(name = "Freq_MargarinaComum")
	private String margarinaComum;
	
	@Column(name = "Freq_MargarinaLight")
	private String margarinaLight;
	
	@Column(name = "Freq_Manteiga")
	private String manteiga;
	
	@Column(name = "Freq_RequeijaoComum")
	private String requeijaoComum;
	
	@Column(name = "Freq_RequeijaoLight")
	private String requeijaoLight;
	
	@Column(name = "Freq_MaioneseComum")
	private String maioneseComum;
	
	@Column(name = "Freq_MaioneseLight")
	private String maioneseLight;
	
	@Column(name = "Freq_Cremedeleite")
	private String cremedeleite;
	
	@Column(name = "Freq_Frituras")
	private String frituras;
	
	@Column(name = "Freq_Acucar")
	private String acucar;
	
	@Column(name = "Freq_Adocante")
	private String adocante;
	
	@Column(name = "Freq_Mel")
	private String mel;
	
	@Column(name = "Freq_BarradeCereal")
	private String barraCereal;
	
	@Column(name = "Freq_Doces")
	private String doces;
	
	@Column(name = "Freq_BolachaRecheada")
	private String bolachaRecheada;
	
	@Column(name = "Freq_BoloBiscoito")
	private String boloBiscoito;
	
	@Column(name = "Freq_ChicleteBalas")
	private String chicleteBalas;
	
	@Column(name = "Freq_Chocolate")
	private String chocolate;
	
	@Column(name = "Freq_Sanduichepizza")
	private String sanduichePizza;
	
	@Column(name = "Freq_Salgadinhos")
	private String salgadinhos;
	
	@Column(name = "Freq_SalgadinhosPacote")
	private String salgadinhosPacote;
	
	@Column(name = "Freq_RefrigeranteComum")
	private String refrigeranteComum;
	
	@Column(name = "Freq_RefrigeranteDietLight")
	private String refrigeranteDietLight;

	@Column(name = "Freq_SucoNatural")
	private String sucoNatural;

	@Column(name = "Freq_SucoArtificial")
	private String sucoArtificial;
	
	@Column(name = "Freq_Cafe")
	private String cafe;
	
	@Column(name = "Freq_Cha")
	private String cha;
	
	@Column(name = "Freq_DiagnosticoNutricional")
	private String diagnosticoNutricional;
	
	@Column(name = "Freq_CondutaDietoterapica")
	private String condutaDietoterapica;
	
	@Column(name = "Freq_RelatosDeCaso")
	private String relatosDeCaso;
	
	@JsonBackReference(value = "paciente-frequenciaAlimentar")
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "frequenciaAlimentar")
	private Paciente paciente;
	
	public FrequenciaAlimentar() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getArroz() {
		return arroz;
	}

	public void setArroz(String arroz) {
		this.arroz = arroz;
	}

	public String getMacarrao() {
		return macarrao;
	}

	public void setMacarrao(String macarrao) {
		this.macarrao = macarrao;
	}

	public String getBatataMandioca() {
		return batataMandioca;
	}

	public void setBatataMandioca(String batataMandioca) {
		this.batataMandioca = batataMandioca;
	}

	public String getPao() {
		return pao;
	}

	public void setPao(String pao) {
		this.pao = pao;
	}

	public String getPaoQueijo() {
		return paoQueijo;
	}

	public void setPaoQueijo(String paoQueijo) {
		this.paoQueijo = paoQueijo;
	}

	public String getFarinhas() {
		return farinhas;
	}

	public void setFarinhas(String farinhas) {
		this.farinhas = farinhas;
	}

	public String getCerealMatinal() {
		return cerealMatinal;
	}

	public void setCerealMatinal(String cerealMatinal) {
		this.cerealMatinal = cerealMatinal;
	}

	public String getHortalicasCruas() {
		return hortalicasCruas;
	}

	public void setHortalicasCruas(String hortalicasCruas) {
		this.hortalicasCruas = hortalicasCruas;
	}

	public String getHortalicasCozidas() {
		return hortalicasCozidas;
	}

	public void setHortalicasCozidas(String hortalicasCozidas) {
		this.hortalicasCozidas = hortalicasCozidas;
	}

	public String getFrutas() {
		return frutas;
	}

	public void setFrutas(String frutas) {
		this.frutas = frutas;
	}

	public String getLeiteIntegral() {
		return leiteIntegral;
	}

	public void setLeiteIntegral(String leiteIntegral) {
		this.leiteIntegral = leiteIntegral;
	}

	public String getLeiteDesnatado() {
		return leiteDesnatado;
	}

	public void setLeiteDesnatado(String leiteDesnatado) {
		this.leiteDesnatado = leiteDesnatado;
	}

	public String getIorgute() {
		return iorgute;
	}

	public void setIorgute(String iorgute) {
		this.iorgute = iorgute;
	}

	public String getIorguteDesnatado() {
		return iorguteDesnatado;
	}

	public void setIorguteDesnatado(String iorguteDesnatado) {
		this.iorguteDesnatado = iorguteDesnatado;
	}

	public String getQueijos() {
		return queijos;
	}

	public void setQueijos(String queijos) {
		this.queijos = queijos;
	}

	public String getCarneVermelha() {
		return carneVermelha;
	}

	public void setCarneVermelha(String carneVermelha) {
		this.carneVermelha = carneVermelha;
	}

	public String getEmbutidos() {
		return embutidos;
	}

	public void setEmbutidos(String embutidos) {
		this.embutidos = embutidos;
	}

	public String getEnlatados() {
		return enlatados;
	}

	public void setEnlatados(String enlatados) {
		this.enlatados = enlatados;
	}

	public String getOvos() {
		return ovos;
	}

	public void setOvos(String ovos) {
		this.ovos = ovos;
	}

	public String getLeguminosas() {
		return leguminosas;
	}

	public void setLeguminosas(String leguminosas) {
		this.leguminosas = leguminosas;
	}

	public String getMargarinaComum() {
		return margarinaComum;
	}

	public void setMargarinaComum(String margarinaComum) {
		this.margarinaComum = margarinaComum;
	}

	public String getMargarinaLight() {
		return margarinaLight;
	}

	public void setMargarinaLight(String margarinaLight) {
		this.margarinaLight = margarinaLight;
	}

	public String getManteiga() {
		return manteiga;
	}

	public void setManteiga(String manteiga) {
		this.manteiga = manteiga;
	}

	public String getRequeijaoComum() {
		return requeijaoComum;
	}

	public void setRequeijaoComum(String requeijaoComum) {
		this.requeijaoComum = requeijaoComum;
	}

	public String getRequeijaoLight() {
		return requeijaoLight;
	}

	public void setRequeijaoLight(String requeijaoLight) {
		this.requeijaoLight = requeijaoLight;
	}

	public String getMaioneseComum() {
		return maioneseComum;
	}

	public void setMaioneseComum(String maioneseComum) {
		this.maioneseComum = maioneseComum;
	}

	public String getMaioneseLight() {
		return maioneseLight;
	}

	public void setMaioneseLight(String maioneseLight) {
		this.maioneseLight = maioneseLight;
	}

	public String getCremedeleite() {
		return cremedeleite;
	}

	public void setCremedeleite(String cremedeleite) {
		this.cremedeleite = cremedeleite;
	}

	public String getFrituras() {
		return frituras;
	}

	public void setFrituras(String frituras) {
		this.frituras = frituras;
	}

	public String getAcucar() {
		return acucar;
	}

	public void setAcucar(String acucar) {
		this.acucar = acucar;
	}

	public String getAdocante() {
		return adocante;
	}

	public void setAdocante(String adocante) {
		this.adocante = adocante;
	}

	public String getMel() {
		return mel;
	}

	public void setMel(String mel) {
		this.mel = mel;
	}

	public String getBarraCereal() {
		return barraCereal;
	}

	public void setBarraCereal(String barraCereal) {
		this.barraCereal = barraCereal;
	}

	public String getDoces() {
		return doces;
	}

	public void setDoces(String doces) {
		this.doces = doces;
	}

	public String getBolachaRecheada() {
		return bolachaRecheada;
	}

	public void setBolachaRecheada(String bolachaRecheada) {
		this.bolachaRecheada = bolachaRecheada;
	}

	public String getBoloBiscoito() {
		return boloBiscoito;
	}

	public void setBoloBiscoito(String boloBiscoito) {
		this.boloBiscoito = boloBiscoito;
	}

	public String getChicleteBalas() {
		return chicleteBalas;
	}

	public void setChicleteBalas(String chicleteBalas) {
		this.chicleteBalas = chicleteBalas;
	}

	public String getChocolate() {
		return chocolate;
	}

	public void setChocolate(String chocolate) {
		this.chocolate = chocolate;
	}

	public String getSanduichePizza() {
		return sanduichePizza;
	}

	public void setSanduichePizza(String sanduichePizza) {
		this.sanduichePizza = sanduichePizza;
	}

	public String getSalgadinhos() {
		return salgadinhos;
	}

	public void setSalgadinhos(String salgadinhos) {
		this.salgadinhos = salgadinhos;
	}

	public String getSalgadinhosPacote() {
		return salgadinhosPacote;
	}

	public void setSalgadinhosPacote(String salgadinhosPacote) {
		this.salgadinhosPacote = salgadinhosPacote;
	}

	public String getRefrigeranteComum() {
		return refrigeranteComum;
	}

	public void setRefrigeranteComum(String refrigeranteComum) {
		this.refrigeranteComum = refrigeranteComum;
	}

	public String getRefrigeranteDietLight() {
		return refrigeranteDietLight;
	}

	public void setRefrigeranteDietLight(String refrigeranteDietLight) {
		this.refrigeranteDietLight = refrigeranteDietLight;
	}

	public String getSucoNatural() {
		return sucoNatural;
	}

	public void setSucoNatural(String sucoNatural) {
		this.sucoNatural = sucoNatural;
	}

	public String getSucoArtificial() {
		return sucoArtificial;
	}

	public void setSucoArtificial(String sucoArtificial) {
		this.sucoArtificial = sucoArtificial;
	}

	public String getCafe() {
		return cafe;
	}

	public void setCafe(String cafe) {
		this.cafe = cafe;
	}

	public String getCha() {
		return cha;
	}

	public void setCha(String cha) {
		this.cha = cha;
	}

	public String getDiagnosticoNutricional() {
		return diagnosticoNutricional;
	}

	public void setDiagnosticoNutricional(String diagnosticoNutricional) {
		this.diagnosticoNutricional = diagnosticoNutricional;
	}

	public String getCondutaDietoterapica() {
		return condutaDietoterapica;
	}

	public void setCondutaDietoterapica(String condutaDietoterapica) {
		this.condutaDietoterapica = condutaDietoterapica;
	}

	public String getRelatosDeCaso() {
		return relatosDeCaso;
	}

	public void setRelatosDeCaso(String relatosDeCaso) {
		this.relatosDeCaso = relatosDeCaso;
	}

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}
}
