package br.com.projetotcc.cadastro;

import br.com.projetotcc.mensagem.ResultadoServico;

public class Http {
    public Http(ResultadoServico resultadoServico) {
        resultadoServico.setCodigo(0);
        resultadoServico.setMensagem(null);
        resultadoServico.setObjeto(null);
        resultadoServico.setListaObjetos(null);
        resultadoServico.setListaObjetosUnicos(null);
    }
}
