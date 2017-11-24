package br.com.projetotcc.cadastro;

import br.com.projetotcc.mensagem.ResultadoServico;

 class Http {
    Http(ResultadoServico resultadoServico) {
        resultadoServico.setCodigo(0);
        resultadoServico.setMensagem(null);
        resultadoServico.setObjeto(null);
        resultadoServico.setListaObjetos(null);
        resultadoServico.setListaObjetosUnicos(null);
    }
}
