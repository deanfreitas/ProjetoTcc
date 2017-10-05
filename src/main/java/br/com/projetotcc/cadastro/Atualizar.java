package br.com.projetotcc.cadastro;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.mensagem.ResultadoServico;
import br.com.projetotcc.validar.Usuario;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletContext;

public class Atualizar {

    @Autowired
    private BancoDadosService bancoDadosService;

    @Autowired
    private ResultadoServico resultadoServico;

    @Autowired
    private ServletContext context;

    public ResultadoServico atualizarCadastro(Paciente paciente) {
        Usuario usuario = new Usuario();
        resultadoServico = usuario.parametrosObrigatoriosAtualizacao(paciente);

        if (resultadoServico.getCodigo() == 0) {
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
                System.out.println(e);
                mensagem = "Erro ao atualizar o cadastro das informações do paciente";
                codigo = 1;
            }

            resultadoServico.setMensagem(mensagem);
            resultadoServico.setCodigo(codigo);
        }

        return resultadoServico;
    }
}
