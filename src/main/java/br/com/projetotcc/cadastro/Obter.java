package br.com.projetotcc.cadastro;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.mensagem.ResultadoServico;

public class Obter {

    public ResultadoServico obterCadastro(Long id, BancoDadosService bancoDadosService, ResultadoServico resultadoServico) {
        Paciente paciente = new Paciente();

        try {
            paciente = (Paciente) bancoDadosService.encontrarInformacaoPorId(paciente, id);
        } catch (Exception e) {
            resultadoServico.setCodigo(1);
            resultadoServico.setMensagem("Erro no sistema");
        }

        resultadoServico.setObjeto(paciente);

        return resultadoServico;
    }
}
