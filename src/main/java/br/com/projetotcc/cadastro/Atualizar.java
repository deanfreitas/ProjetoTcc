package br.com.projetotcc.cadastro;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.interfaces.InterfacePessoa;
import br.com.projetotcc.mensagem.ResultadoServico;
import br.com.projetotcc.utils.Usuario;

import javax.servlet.ServletContext;

public class Atualizar extends Http {

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;
    private String mensagem = null;
    private long codigo = 0;

    public Atualizar(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        super(resultadoServico);
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    private boolean validTypeUser(String typeUser) {
        boolean trueUser = false;

        if (typeUser.equals("nutricionista")) {
            trueUser = context.getAttribute("dadosCadastradosPessoa") instanceof Nutricionista;
        } else if (typeUser.equals("paciente")) {
            trueUser = context.getAttribute("dadosCadastradosPessoa") instanceof Paciente;
        }

        return trueUser;
    }

    public ResultadoServico atualizarAnamnesePaciente(Paciente paciente) {
        Usuario usuario = new Usuario(resultadoServico);
        resultadoServico = usuario.parametrosObrigatoriosAtualizacaoPaciente(paciente);

        if (resultadoServico.getCodigo() != 0) {
            return resultadoServico;
        }

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

    public ResultadoServico atualizarInformacoesPessoa(InterfacePessoa pessoa, String typeUser) {
        try {
            if (validTypeUser(typeUser)) {
                InterfacePessoa dadosCastradoPessoa = (InterfacePessoa) context.getAttribute("dadosCadastradosPessoa");
                pessoa.setId(dadosCastradoPessoa.getId());
                pessoa.getLogin().setId(dadosCastradoPessoa.getLogin().getId());
                bancoDadosService.atualizarCadastroUsuario(pessoa);
                mensagem = "Cadastro atualizado com sucesso";
                context.setAttribute("loginUsuario", pessoa.getLogin().getUsuario());
            } else {
                mensagem = "Erro no sistema";
                codigo = 2;
            }
        } catch (Exception e) {
            mensagem = "Erro ao atualizar o cadastro";
            codigo = 1;
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }
}
