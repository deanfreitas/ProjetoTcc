package br.com.projetotcc.utils;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.mensagem.ResultadoServico;

public class BancoDadosUtils {

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private String mensagem = null;
    private long codigo = 0;

    public BancoDadosUtils(BancoDadosService bancoDadosService, ResultadoServico resultadoServico) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
    }

    public ResultadoServico checkLoginIgual(Login login) {
        Login loginPessoa = (Login) bancoDadosService.encontrarInformacao(login, login.getUsuario());

        if (loginPessoa != null) {
            mensagem = "Já tem um login Igual a esse";
            codigo = 1;
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }
}
