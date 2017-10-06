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

    public ResultadoServico checkLoginIgual(Login login) {
        Login loginPessoa = (Login) bancoDadosService.encontrarInformacao(login, login.getUsuario());

        if (loginPessoa != null) {
            resultadoServico.setMensagem("Já tem um login Igual a esse");
            resultadoServico.setCodigo(1);
        }

        return resultadoServico;
    }
}
