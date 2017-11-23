package br.com.projetotcc.cadastro;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.enums.Code;
import br.com.projetotcc.mensagem.ResultadoServico;

import java.util.ArrayList;
import java.util.List;

public class Deletar extends Http {

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private String mensagem = null;
    private long codigo = Code.SUCCESS.getTypeCode();

    public Deletar(BancoDadosService bancoDadosService, ResultadoServico resultadoServico) {
        super(resultadoServico);
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
    }

    public ResultadoServico deletarPacientes(List<Paciente> pacientes) {
        List<Object> mensagens = new ArrayList<>();

        for (Paciente paciente : pacientes) {
            try {
                bancoDadosService.removerCadastroUsuario(paciente);
            } catch (Exception e) {
                codigo = Code.ERROR.getTypeCode();
                mensagens.add("Erro ao remover o cadastro do paciente: " + paciente.getIdentificacao().getNome());
            }
            mensagem = "Cadastros Revovidos com Sucesso";
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);
        resultadoServico.setListaObjetos(mensagens);

        return resultadoServico;
    }
}
