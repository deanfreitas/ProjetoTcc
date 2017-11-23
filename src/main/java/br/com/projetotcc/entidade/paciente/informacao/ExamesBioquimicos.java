package br.com.projetotcc.entidade.paciente.informacao;

import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.interfaces.InterfaceDadosPaciente;
import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;

@Entity
@Table(name = "Exames_Bioquimicos")
public class ExamesBioquimicos implements InterfaceDadosPaciente {

    private static final long serialVersionUID = -1348461834882773093L;

    @Id
    @GeneratedValue
    @Column(name = "Id_ExamesBioquimicos", nullable = false)
    private Long id;

    @Column(name = "Bio_Data")
    private String data;

    @Column(name = "Bio_Vlrderefe")
    private String vlrderefe;

    @Column(name = "Bio_GLI")
    private String gli;

    @Column(name = "Bio_Hg")
    private String hg;

    @Column(name = "Bio_Tg")
    private String tg;

    @Column(name = "Bio_Ct")
    private String ct;

    @Column(name = "Bio_Ldl")
    private String ldl;

    @Column(name = "Bio_Hdl")
    private String hdl;

    @Column(name = "Bio_Sodio")
    private String sodio;

    @Column(name = "Bio_Potassio")
    private String potassio;

    @Column(name = "Bio_Creatina")
    private String creatina;

    @Column(name = "Bio_Tgo")
    private String tgo;

    @Column(name = "Bio_Tgp")
    private String tgp;

    @Column(name = "Bio_GGT")
    private String ggt;

    @Column(name = "Bio_Ferritina")
    private String ferritina;

    @Column(name = "Bio_Vitaminab12")
    private String vitaminaB12;

    @Column(name = "Bio_Acidofolico")
    private String acidofolico;

    @Column(name = "Bio_Naohdl")
    private String naoHdl;

    @Column(name = "Bio_Vldl")
    private String vldl;

    @Column(name = "Bio_Ureia")
    private String ureia;

    @Column(name = "Bio_Fosforo")
    private String fosforo;

    @Column(name = "Bio_Calcio")
    private String calcio;

    @Column(name = "Bio_Acidourico")
    private String acidourico;

    @JsonBackReference(value = "paciente-examesBioquimicos")
    @ManyToOne(optional = true, fetch = FetchType.LAZY, targetEntity = Paciente.class)
    @JoinColumn(name = "id_Paciente", insertable = true, updatable = true)
    private Paciente paciente;

    public ExamesBioquimicos() {
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

    public String getVlrderefe() {
        return vlrderefe;
    }

    public void setVlrderefe(String vlrderefe) {
        this.vlrderefe = vlrderefe;
    }

    public String getGli() {
        return gli;
    }

    public void setGli(String gli) {
        this.gli = gli;
    }

    public String getHg() {
        return hg;
    }

    public void setHg(String hg) {
        this.hg = hg;
    }

    public String getTg() {
        return tg;
    }

    public void setTg(String tg) {
        this.tg = tg;
    }

    public String getCt() {
        return ct;
    }

    public void setCt(String ct) {
        this.ct = ct;
    }

    public String getLdl() {
        return ldl;
    }

    public void setLdl(String ldl) {
        this.ldl = ldl;
    }

    public String getHdl() {
        return hdl;
    }

    public void setHdl(String hdl) {
        this.hdl = hdl;
    }

    public String getSodio() {
        return sodio;
    }

    public void setSodio(String sodio) {
        this.sodio = sodio;
    }

    public String getPotassio() {
        return potassio;
    }

    public void setPotassio(String potassio) {
        this.potassio = potassio;
    }

    public String getCreatina() {
        return creatina;
    }

    public void setCreatina(String creatina) {
        this.creatina = creatina;
    }

    public String getTgo() {
        return tgo;
    }

    public void setTgo(String tgo) {
        this.tgo = tgo;
    }

    public String getTgp() {
        return tgp;
    }

    public void setTgp(String tgp) {
        this.tgp = tgp;
    }

    public String getGgt() {
        return ggt;
    }

    public void setGgt(String ggt) {
        this.ggt = ggt;
    }

    public String getFerritina() {
        return ferritina;
    }

    public void setFerritina(String ferritina) {
        this.ferritina = ferritina;
    }

    public String getVitaminaB12() {
        return vitaminaB12;
    }

    public void setVitaminaB12(String vitaminaB12) {
        this.vitaminaB12 = vitaminaB12;
    }

    public String getAcidofolico() {
        return acidofolico;
    }

    public void setAcidofolico(String acidofolico) {
        this.acidofolico = acidofolico;
    }

    public String getNaoHdl() {
        return naoHdl;
    }

    public void setNaoHdl(String naoHdl) {
        this.naoHdl = naoHdl;
    }

    public String getVldl() {
        return vldl;
    }

    public void setVldl(String vldl) {
        this.vldl = vldl;
    }

    public String getUreia() {
        return ureia;
    }

    public void setUreia(String ureia) {
        this.ureia = ureia;
    }

    public String getFosforo() {
        return fosforo;
    }

    public void setFosforo(String fosforo) {
        this.fosforo = fosforo;
    }

    public String getCalcio() {
        return calcio;
    }

    public void setCalcio(String calcio) {
        this.calcio = calcio;
    }

    public String getAcidourico() {
        return acidourico;
    }

    public void setAcidourico(String acidourico) {
        this.acidourico = acidourico;
    }

    public Paciente getPaciente() {
        return paciente;
    }

    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }
}
