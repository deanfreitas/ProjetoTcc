package br.com.projetotcc.cadastro;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.mensagem.ResultadoServico;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletContext;

public class Obter {

    @Autowired
    private BancoDadosService bancoDadosService;

    @Autowired
    private ResultadoServico resultadoServico;

    public ResultadoServico obterCadastro(Long id) {
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
