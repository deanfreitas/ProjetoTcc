package br.com.projetotcc.cadastro;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.mensagem.ResultadoServico;

public class Obter {

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;

    public Obter(BancoDadosService bancoDadosService, ResultadoServico resultadoServico) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
    }

    public ResultadoServico obterCadastro(Long id) {
        Paciente paciente = new Paciente();

        try {
            paciente = (Paciente) bancoDadosService.encontrarInformacaoPorId(paciente, id);
        } catch (Exception e) {
            System.err.println(e);
            resultadoServico.setCodigo(1);
            resultadoServico.setMensagem("Erro no sistema");
        }

        resultadoServico.setObjeto(paciente);
        return resultadoServico;
    }
}
