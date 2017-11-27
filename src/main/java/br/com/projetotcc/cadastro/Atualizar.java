package br.com.projetotcc.cadastro;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.paciente.alimentacao.Data;
import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.enums.Code;
import br.com.projetotcc.enums.Context;
import br.com.projetotcc.enums.Pessoa;
import br.com.projetotcc.enums.Response;
import br.com.projetotcc.interfaces.InterfacePessoa;
import br.com.projetotcc.mensagem.ResultadoServico;
import br.com.projetotcc.utils.Usuario;
import br.com.projetotcc.utils.Utils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletContext;

public class Atualizar extends Http {

    private static final Logger LOGGER = LoggerFactory.getLogger(Atualizar.class);

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;
    private String mensagem = null;
    private long codigo = Code.SUCCESS.getTypeCode();

    public Atualizar(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        super(resultadoServico);
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    public ResultadoServico atualizarAnamnesePaciente(Paciente paciente) {
        Usuario usuario = new Usuario(resultadoServico);
        resultadoServico = usuario.parametrosObrigatoriosAtualizacaoPaciente(paciente);

        if (resultadoServico.getCodigo() != Code.SUCCESS.getTypeCode()) {
            return resultadoServico;
        }

        try {
            if (Utils.validTypeUser(context, Pessoa.NUTRICIONISTA.getTypePessoa())) {
                Nutricionista nutricionista = (Nutricionista) context.getAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext());
                paciente.setNutricionista(nutricionista);
                bancoDadosService.atualizarCadastroBancoDados(paciente);
                mensagem = "Anamnese Cadastrada com sucesso";
                for (int i = 0; i < nutricionista.getPacientes().size(); i++) {
                    if (nutricionista.getPacientes().get(i).getId().equals(paciente.getId())) {
                        nutricionista.getPacientes().set(i, paciente);
                    }
                }
                context.setAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext(), nutricionista);
            } else {
                mensagem = Response.ERROR_SYSTEM.getTypeResponse();
                codigo = Code.ERROR_SYSTEM.getTypeCode();
            }
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
            mensagem = "Erro ao atualizar o cadastro das informações do paciente";
            codigo = Code.ERROR.getTypeCode();
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }

    public ResultadoServico atualizarInformacoesPessoa(InterfacePessoa pessoa, String typeUser) {
        try {
            if (Utils.validTypeUser(context, typeUser)) {
                InterfacePessoa dadosCastradoPessoa = (InterfacePessoa) context.getAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext());
                pessoa.setId(dadosCastradoPessoa.getId());
                pessoa.getLogin().setId(dadosCastradoPessoa.getLogin().getId());
                bancoDadosService.atualizarCadastroBancoDados(pessoa);
                mensagem = "Cadastro atualizado com sucesso";
                context.setAttribute(Context.LOGIN_USUARIO.getTypeContext(), pessoa.getLogin().getUsuario());
            } else {
                mensagem = Response.ERROR_SYSTEM.getTypeResponse();
                codigo = Code.ERROR_SYSTEM.getTypeCode();
            }
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
            mensagem = "Erro ao atualizar o cadastro";
            codigo = Code.ERROR.getTypeCode();
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }

    public ResultadoServico atualizarDiarioAlimentar(Data data) {
        try {
            if(Utils.validTypeUser(context, Pessoa.PACIENTE.getTypePessoa())) {
                Paciente paciente = (Paciente) context.getAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext());
                data.setPaciente(paciente);
                bancoDadosService.atualizarCadastroBancoDados(data);
                mensagem = "Diário Alimentar atualizado com sucesso";
                for (int i = 0; i < paciente.getData().size(); i++) {
                    if (paciente.getData().get(i).getdData().equals(data.getdData())) {
                        paciente.getData().set(i, data);
                    }
                }
                context.setAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext(), paciente);
            } else {
                mensagem = Response.ERROR_SYSTEM.getTypeResponse();
                codigo = Code.ERROR_SYSTEM.getTypeCode();
            }
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
            mensagem = "Erro ao atualizar o Diário Alimentar";
            codigo = Code.ERROR.getTypeCode();
        }

        return resultadoServico;
    }
}
