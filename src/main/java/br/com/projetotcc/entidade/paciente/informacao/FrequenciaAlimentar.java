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
	private String iorgurte;
	
	@Column(name = "Freq_IorguteDesnatado")
	private String iorgurteDesnatado;

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
	private String cremeLeite;
	
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
	
	@Column(name = "OBSFreq_Arroz")
	private String observacaoArroz;
	
	@Column(name = "OBSFreq_Macarrao")
	private String observacaoMacarrao;
	
	@Column(name = "OBSFreq_BatataMandioca")
	private String observacaoBatataMandioca;
	
	@Column(name = "OBSFreq_Pao")
	private String observacaoPao;
	
	@Column(name = "OBSFreq_PaodeQueijo")
	private String observacaoPaoQueijo;
	
	@Column(name = "OBSFreq_Farinhas")
	private String observacaoFarinhas;
	
	@Column(name = "OBSFreq_CerealMatinal")
	private String observacaoCerealMatinal;
	
	@Column(name = "OBSFreq_HortalicasCruas")
	private String observacaoHortalicasCruas;
	
	@Column(name = "OBSFreq_HortalicasCozidas")
	private String observacaoHortalicasCozidas;
	
	@Column(name = "OBSFreq_Frutas")
	private String observacaoFrutas;
	
	@Column(name = "OBSFreq_LeiteIntegral")
	private String observacaoLeiteIntegral;
	
	@Column(name = "OBSFreq_LeiteDesnatado")
	private String observacaoLeiteDesnatado;
	
	@Column(name = "OBSFreq_Iorgute")
	private String observacaoIorgute;
	
	@Column(name = "OBSFreq_IorguteDesnatado")
	private String observacaoIorguteDesnatado;
	
	@Column(name = "OBSFreq_Queijos")
	private String observacaoQueijos;
	
	@Column(name = "OBSFreq_CarneVermelha")
	private String observacaoCarneVermelha;
	
	@Column(name = "OBSFreq_Embutidos")
	private String observacaoEmbutidos;
	
	@Column(name = "OBSFreq_Enlatados")
	private String observacaoEnlatados;
	
	@Column(name = "OBSFreq_Ovos")
	private String observacaoOvos;
	
	@Column(name = "OBSFreq_Leguminosas")
	private String observacaoLeguminosas;
	
	@Column(name = "OBSFreq_MargarinaComum")
	private String observacaoMargarinaComum;
	
	@Column(name = "OBSFreq_MargarinaLight")
	private String observacaoMargarinaLight;
	
	@Column(name = "OBSFreq_Manteiga")
	private String observacaoManteiga;
	
	@Column(name = "OBSFreq_RequeijaoComum")
	private String observacaoRequeijaoComum;
	
	@Column(name = "OBSFreq_RequeijaoLight")
	private String observacaoRequeijaoLight;
	
	@Column(name = "OBSFreq_MaioneseComum")
	private String observacaoMaioneseComum;
	
	@Column(name = "OBSFreq_MaioneseLight")
	private String observacaoMaioneseLight;
	
	@Column(name = "OBSFreq_Cremedeleite")
	private String observacaoCremeLeite;
	
	@Column(name = "OBSFreq_Frituras")
	private String observacaoFrituras;
	
	@Column(name = "OBSFreq_Acucar")
	private String observacaoAcucar;
	
	@Column(name = "OBSFreq_Adocante")
	private String observacaoAdocante;
	
	@Column(name = "OBSFreq_Mel")
	private String observacaoMel;
	
	@Column(name = "OBSFreq_BarradeCereal")
	private String observacaoBarradeCereal;
	
	@Column(name = "OBSFreq_Doces")
	private String observacaoDoces;
	
	@Column(name = "OBSFreq_BolachaRecheada")
	private String observacaoBolachaRecheada;
	
	@Column(name = "OBSFreq_BoloBiscoito")
	private String observacaoBoloBiscoito;
	
	@Column(name = "OBSFreq_ChicleteBalas")
	private String observacaoChicleteBalas;
	
	@Column(name = "OBSFreq_Chocolate")
	private String observacaoChocolate;
	
	@Column(name = "OBSFreq_Sanduichepizza")
	private String observacaoSanduichepizza;
	
	@Column(name = "OBSFreq_Salgadinhos")
	private String observacaoSalgadinhos;
	
	@Column(name = "OBSFreq_SalgadinhosPacote")
	private String observacaoSalgadinhosPacote;
	
	@Column(name = "OBSFreq_RefrigeranteComum")
	private String observacaoRefrigeranteComum;
	
	@Column(name = "OBSFreq_RefrigeranteDietLight")
	private String observacaoRefrigeranteDietLight;
	
	@Column(name = "OBSFreq_SucoNatural")
	private String observacaoSucoNatural;
	
	@Column(name = "OBSFreq_SucoArtificial")
	private String observacaoSucoArtificial;
	
	@Column(name = "OBSFreq_Cafe")
	private String observacaoCafe;
	
	@Column(name = "OBSFreq_Cha")
	private String observacaoCha;
	
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
	
	public String getIorgurteDesnatado() {
		return iorgurteDesnatado;
	}

	public void setIorgurteDesnatado(String iorgurteDesnatado) {
		this.iorgurteDesnatado = iorgurteDesnatado;
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

	public String getCremeLeite() {
		return cremeLeite;
	}

	public void setCremeLeite(String cremeLeite) {
		this.cremeLeite = cremeLeite;
	}

	public String getIorgurte() {
		return iorgurte;
	}

	public void setIorgurte(String iorgurte) {
		this.iorgurte = iorgurte;
	}

	public String getObservacaoArroz() {
		return observacaoArroz;
	}

	public void setObservacaoArroz(String observacaoArroz) {
		this.observacaoArroz = observacaoArroz;
	}

	public String getObservacaoMacarrao() {
		return observacaoMacarrao;
	}

	public void setObservacaoMacarrao(String observacaoMacarrao) {
		this.observacaoMacarrao = observacaoMacarrao;
	}

	public String getObservacaoBatataMandioca() {
		return observacaoBatataMandioca;
	}

	public void setObservacaoBatataMandioca(String observacaoBatataMandioca) {
		this.observacaoBatataMandioca = observacaoBatataMandioca;
	}

	public String getObservacaoPao() {
		return observacaoPao;
	}

	public void setObservacaoPao(String observacaoPao) {
		this.observacaoPao = observacaoPao;
	}

	public String getObservacaoPaoQueijo() {
		return observacaoPaoQueijo;
	}

	public void setObservacaoPaoQueijo(String observacaoPaoQueijo) {
		this.observacaoPaoQueijo = observacaoPaoQueijo;
	}

	public String getObservacaoFarinhas() {
		return observacaoFarinhas;
	}

	public void setObservacaoFarinhas(String observacaoFarinhas) {
		this.observacaoFarinhas = observacaoFarinhas;
	}

	public String getObservacaoCerealMatinal() {
		return observacaoCerealMatinal;
	}

	public void setObservacaoCerealMatinal(String observacaoCerealMatinal) {
		this.observacaoCerealMatinal = observacaoCerealMatinal;
	}

	public String getObservacaoHortalicasCruas() {
		return observacaoHortalicasCruas;
	}

	public void setObservacaoHortalicasCruas(String observacaoHortalicasCruas) {
		this.observacaoHortalicasCruas = observacaoHortalicasCruas;
	}

	public String getObservacaoHortalicasCozidas() {
		return observacaoHortalicasCozidas;
	}

	public void setObservacaoHortalicasCozidas(String observacaoHortalicasCozidas) {
		this.observacaoHortalicasCozidas = observacaoHortalicasCozidas;
	}

	public String getObservacaoFrutas() {
		return observacaoFrutas;
	}

	public void setObservacaoFrutas(String observacaoFrutas) {
		this.observacaoFrutas = observacaoFrutas;
	}

	public String getObservacaoLeiteIntegral() {
		return observacaoLeiteIntegral;
	}

	public void setObservacaoLeiteIntegral(String observacaoLeiteIntegral) {
		this.observacaoLeiteIntegral = observacaoLeiteIntegral;
	}

	public String getObservacaoLeiteDesnatado() {
		return observacaoLeiteDesnatado;
	}

	public void setObservacaoLeiteDesnatado(String observacaoLeiteDesnatado) {
		this.observacaoLeiteDesnatado = observacaoLeiteDesnatado;
	}

	public String getObservacaoIorgute() {
		return observacaoIorgute;
	}

	public void setObservacaoIorgute(String observacaoIorgute) {
		this.observacaoIorgute = observacaoIorgute;
	}

	public String getObservacaoIorguteDesnatado() {
		return observacaoIorguteDesnatado;
	}

	public void setObservacaoIorguteDesnatado(String observacaoIorguteDesnatado) {
		this.observacaoIorguteDesnatado = observacaoIorguteDesnatado;
	}

	public String getObservacaoQueijos() {
		return observacaoQueijos;
	}

	public void setObservacaoQueijos(String observacaoQueijos) {
		this.observacaoQueijos = observacaoQueijos;
	}

	public String getObservacaoCarneVermelha() {
		return observacaoCarneVermelha;
	}

	public void setObservacaoCarneVermelha(String observacaoCarneVermelha) {
		this.observacaoCarneVermelha = observacaoCarneVermelha;
	}

	public String getObservacaoEmbutidos() {
		return observacaoEmbutidos;
	}

	public void setObservacaoEmbutidos(String observacaoEmbutidos) {
		this.observacaoEmbutidos = observacaoEmbutidos;
	}

	public String getObservacaoEnlatados() {
		return observacaoEnlatados;
	}

	public void setObservacaoEnlatados(String observacaoEnlatados) {
		this.observacaoEnlatados = observacaoEnlatados;
	}

	public String getObservacaoOvos() {
		return observacaoOvos;
	}

	public void setObservacaoOvos(String observacaoOvos) {
		this.observacaoOvos = observacaoOvos;
	}

	public String getObservacaoLeguminosas() {
		return observacaoLeguminosas;
	}

	public void setObservacaoLeguminosas(String observacaoLeguminosas) {
		this.observacaoLeguminosas = observacaoLeguminosas;
	}

	public String getObservacaoMargarinaComum() {
		return observacaoMargarinaComum;
	}

	public void setObservacaoMargarinaComum(String observacaoMargarinaComum) {
		this.observacaoMargarinaComum = observacaoMargarinaComum;
	}

	public String getObservacaoMargarinaLight() {
		return observacaoMargarinaLight;
	}

	public void setObservacaoMargarinaLight(String observacaoMargarinaLight) {
		this.observacaoMargarinaLight = observacaoMargarinaLight;
	}

	public String getObservacaoManteiga() {
		return observacaoManteiga;
	}

	public void setObservacaoManteiga(String observacaoManteiga) {
		this.observacaoManteiga = observacaoManteiga;
	}

	public String getObservacaoRequeijaoComum() {
		return observacaoRequeijaoComum;
	}

	public void setObservacaoRequeijaoComum(String observacaoRequeijaoComum) {
		this.observacaoRequeijaoComum = observacaoRequeijaoComum;
	}

	public String getObservacaoRequeijaoLight() {
		return observacaoRequeijaoLight;
	}

	public void setObservacaoRequeijaoLight(String observacaoRequeijaoLight) {
		this.observacaoRequeijaoLight = observacaoRequeijaoLight;
	}

	public String getObservacaoMaioneseComum() {
		return observacaoMaioneseComum;
	}

	public void setObservacaoMaioneseComum(String observacaoMaioneseComum) {
		this.observacaoMaioneseComum = observacaoMaioneseComum;
	}

	public String getObservacaoMaioneseLight() {
		return observacaoMaioneseLight;
	}

	public void setObservacaoMaioneseLight(String observacaoMaioneseLight) {
		this.observacaoMaioneseLight = observacaoMaioneseLight;
	}

	public String getObservacaoCremeLeite() {
		return observacaoCremeLeite;
	}

	public void setObservacaoCremeLeite(String observacaoCremeLeite) {
		this.observacaoCremeLeite = observacaoCremeLeite;
	}

	public String getObservacaoFrituras() {
		return observacaoFrituras;
	}

	public void setObservacaoFrituras(String observacaoFrituras) {
		this.observacaoFrituras = observacaoFrituras;
	}

	public String getObservacaoAcucar() {
		return observacaoAcucar;
	}

	public void setObservacaoAcucar(String observacaoAcucar) {
		this.observacaoAcucar = observacaoAcucar;
	}

	public String getObservacaoAdocante() {
		return observacaoAdocante;
	}

	public void setObservacaoAdocante(String observacaoAdocante) {
		this.observacaoAdocante = observacaoAdocante;
	}

	public String getObservacaoMel() {
		return observacaoMel;
	}

	public void setObservacaoMel(String observacaoMel) {
		this.observacaoMel = observacaoMel;
	}

	public String getObservacaoBarradeCereal() {
		return observacaoBarradeCereal;
	}

	public void setObservacaoBarradeCereal(String observacaoBarradeCereal) {
		this.observacaoBarradeCereal = observacaoBarradeCereal;
	}

	public String getObservacaoDoces() {
		return observacaoDoces;
	}

	public void setObservacaoDoces(String observacaoDoces) {
		this.observacaoDoces = observacaoDoces;
	}

	public String getObservacaoBolachaRecheada() {
		return observacaoBolachaRecheada;
	}

	public void setObservacaoBolachaRecheada(String observacaoBolachaRecheada) {
		this.observacaoBolachaRecheada = observacaoBolachaRecheada;
	}

	public String getObservacaoBoloBiscoito() {
		return observacaoBoloBiscoito;
	}

	public void setObservacaoBoloBiscoito(String observacaoBoloBiscoito) {
		this.observacaoBoloBiscoito = observacaoBoloBiscoito;
	}

	public String getObservacaoChicleteBalas() {
		return observacaoChicleteBalas;
	}

	public void setObservacaoChicleteBalas(String observacaoChicleteBalas) {
		this.observacaoChicleteBalas = observacaoChicleteBalas;
	}

	public String getObservacaoChocolate() {
		return observacaoChocolate;
	}

	public void setObservacaoChocolate(String observacaoChocolate) {
		this.observacaoChocolate = observacaoChocolate;
	}

	public String getObservacaoSanduichepizza() {
		return observacaoSanduichepizza;
	}

	public void setObservacaoSanduichepizza(String observacaoSanduichepizza) {
		this.observacaoSanduichepizza = observacaoSanduichepizza;
	}

	public String getObservacaoSalgadinhos() {
		return observacaoSalgadinhos;
	}

	public void setObservacaoSalgadinhos(String observacaoSalgadinhos) {
		this.observacaoSalgadinhos = observacaoSalgadinhos;
	}

	public String getObservacaoSalgadinhosPacote() {
		return observacaoSalgadinhosPacote;
	}

	public void setObservacaoSalgadinhosPacote(String observacaoSalgadinhosPacote) {
		this.observacaoSalgadinhosPacote = observacaoSalgadinhosPacote;
	}

	public String getObservacaoRefrigeranteComum() {
		return observacaoRefrigeranteComum;
	}

	public void setObservacaoRefrigeranteComum(String observacaoRefrigeranteComum) {
		this.observacaoRefrigeranteComum = observacaoRefrigeranteComum;
	}

	public String getObservacaoRefrigeranteDietLight() {
		return observacaoRefrigeranteDietLight;
	}

	public void setObservacaoRefrigeranteDietLight(String observacaoRefrigeranteDietLight) {
		this.observacaoRefrigeranteDietLight = observacaoRefrigeranteDietLight;
	}

	public String getObservacaoSucoNatural() {
		return observacaoSucoNatural;
	}

	public void setObservacaoSucoNatural(String observacaoSucoNatural) {
		this.observacaoSucoNatural = observacaoSucoNatural;
	}

	public String getObservacaoSucoArtificial() {
		return observacaoSucoArtificial;
	}

	public void setObservacaoSucoArtificial(String observacaoSucoArtificial) {
		this.observacaoSucoArtificial = observacaoSucoArtificial;
	}

	public String getObservacaoCafe() {
		return observacaoCafe;
	}

	public void setObservacaoCafe(String observacaoCafe) {
		this.observacaoCafe = observacaoCafe;
	}

	public String getObservacaoCha() {
		return observacaoCha;
	}

	public void setObservacaoCha(String observacaoCha) {
		this.observacaoCha = observacaoCha;
	}
}
