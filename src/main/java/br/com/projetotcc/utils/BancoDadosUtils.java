package br.com.projetotcc.utils;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.interfaces.InterfacePessoa;
import br.com.projetotcc.mensagem.ResultadoServico;

public class BancoDadosUtils {

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;

    public BancoDadosUtils(BancoDadosService bancoDadosService, ResultadoServico resultadoServico) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
    }

    public ResultadoServico checkLoginIgual(InterfacePessoa pessoa) {
        Login loginPessoa = (Login) bancoDadosService.encontrarInformacao(pessoa.getLogin(), pessoa.getLogin().getUsuario());

        if (loginPessoa != null) {
            resultadoServico.setMensagem("J� tem um login Igual a esse");
            resultadoServico.setCodigo(1);
        }

        return resultadoServico;
    }
}
