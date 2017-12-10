package br.com.projetotcc.cadastro;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.enums.Code;
import br.com.projetotcc.enums.Context;
import br.com.projetotcc.enums.Pessoa;
import br.com.projetotcc.enums.Response;
import br.com.projetotcc.mensagem.ResultadoServico;
import br.com.projetotcc.utils.Utils;

import javax.servlet.ServletContext;
import java.util.ArrayList;
import java.util.List;

public class Deletar extends Http {

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;
    private String mensagem = null;
    private long codigo = Code.SUCCESS.getTypeCode();

    public Deletar(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        super(resultadoServico);
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    public ResultadoServico deletarPacientes(List<Paciente> pacientes) {
        List<Object> mensagens = new ArrayList<>();

        if (Utils.validTypeUser(context, Pessoa.NUTRICIONISTA.getTypePessoa())) {
            for (Paciente paciente : pacientes) {
                try {
                    bancoDadosService.removerCadastroUsuario(paciente);
                    Nutricionista nutricionista = (Nutricionista) context.getAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext());
                    List<Paciente> listPacientes = nutricionista.getPacientes();
                    for (int i = 0; i < listPacientes.size(); i++) {
                        if (listPacientes.get(i).getId().equals(paciente.getId())) {
                            listPacientes.remove(i);
                        }
                    }
                    nutricionista.setPacientes(listPacientes);
                    context.setAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext(), nutricionista);
                } catch (Exception e) {
                    codigo = Code.ERROR.getTypeCode();
                    mensagens.add("Erro ao remover o cadastro do paciente: " + paciente.getIdentificacao().getNome());
                }
                mensagem = "Cadastros Revovidos com Sucesso";
            }
        } else {
            mensagem = Response.ERROR_SYSTEM.getTypeResponse();
            codigo = Code.ERROR_SYSTEM.getTypeCode();
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);
        resultadoServico.setListaObjetos(mensagens);

        return resultadoServico;
    }
}
