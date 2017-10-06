package br.com.projetotcc.mensagem;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope(value = "prototype")
public class ResultadoServico {

    private long codigo;
    private String mensagem;
    private Object objeto;
    private List<Object> listaObjetos;
    private Set<Object> listaObjetosUnicos;

    public ResultadoServico(long codigo, String mensagem) {
        super();
        this.codigo = codigo;
        this.mensagem = mensagem;
    }

    public ResultadoServico(long codigo, String mensagem, List<Object> listaObjetos) {
        super();
        this.codigo = codigo;
        this.mensagem = mensagem;
        this.listaObjetos = listaObjetos;
    }

    public ResultadoServico(long codigo, String mensagem, Object objeto) {
        super();
        this.codigo = codigo;
        this.mensagem = mensagem;
        this.listaObjetos = new ArrayList<Object>();
        this.listaObjetos.add(objeto);
    }

    public ResultadoServico(List<Object> listaObjetos) {
        super();
        this.listaObjetos = listaObjetos;
    }

    public ResultadoServico(Object objeto) {
        super();
        listaObjetos = new ArrayList<Object>();
        this.listaObjetos.add(objeto);
    }

    public ResultadoServico() {
        super();
    }

    public long getCodigo() {
        return codigo;
    }

    public void setCodigo(long codigo) {
        this.codigo = codigo;
    }

    public String getMensagem() {
        return mensagem;
    }

    public void setMensagem(String mensagem) {
        this.mensagem = mensagem;
    }

    public List<Object> getListaObjetos() {
        return listaObjetos;
    }

    public void setListaObjetos(List<Object> listaPessoas) {
        this.listaObjetos = listaPessoas;
    }

    public Set<Object> getListaObjetosUnicos() {
        return listaObjetosUnicos;
    }

    public void setListaObjetosUnicos(Set<Object> listaObjetosUnicos) {
        this.listaObjetosUnicos = listaObjetosUnicos;
    }

    public Object getObjeto() {
        return objeto;
    }

    public void setObjeto(Object objeto) {
        this.objeto = objeto;
    }
}
