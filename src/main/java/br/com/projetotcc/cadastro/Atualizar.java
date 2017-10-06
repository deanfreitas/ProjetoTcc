package br.com.projetotcc.cadastro;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.mensagem.ResultadoServico;
import br.com.projetotcc.utils.Usuario;

import javax.servlet.ServletContext;

public class Atualizar {

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;

    public Atualizar(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    public ResultadoServico atualizarCadastro(Paciente paciente) {
        Usuario usuario = new Usuario(resultadoServico);
        resultadoServico = usuario.parametrosObrigatoriosAtualizacaoPaciente(paciente);

        if (resultadoServico.getCodigo() != 0) {
            return resultadoServico;
        }

        String mensagem = null;
        long codigo = 0;

        try {
            if (context.getAttribute("dadosCadastradosPessoa") instanceof Nutricionista) {
                Nutricionista dadosCastradoPessoa = (Nutricionista) context.getAttribute("dadosCadastradosPessoa");
                if (dadosCastradoPessoa != null) {
                    paciente.setNutricionista(dadosCastradoPessoa);
                    bancoDadosService.atualizarCadastroUsuario(paciente);
                    mensagem = "Anamnese Cadastrada com sucesso";
                } else {
                    mensagem = "Erro Sistema";
                    codigo = 2;
                }
            } else {
                mensagem = "Erro no sistema";
                codigo = 2;
            }
        } catch (Exception e) {
            System.err.println(e);
            mensagem = "Erro ao atualizar o cadastro das informações do paciente";
            codigo = 1;
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }
}
