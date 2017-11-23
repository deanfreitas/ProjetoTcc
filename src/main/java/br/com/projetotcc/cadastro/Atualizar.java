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
                Nutricionista dadosCastradoPessoa = (Nutricionista) context.getAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext());
                paciente.setNutricionista(dadosCastradoPessoa);
                bancoDadosService.atualizarCadastroUsuario(paciente);
                mensagem = "Anamnese Cadastrada com sucesso";
            } else {
                mensagem = Response.ERROR_SISTEMA.getTypeResponse();
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
                bancoDadosService.atualizarCadastroUsuario(pessoa);
                mensagem = "Cadastro atualizado com sucesso";
                context.setAttribute(Context.LOGIN_USUARIO.getTypeContext(), pessoa.getLogin().getUsuario());
            } else {
                mensagem = Response.ERROR_SISTEMA.getTypeResponse();
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
            if (Utils.validTypeUser(context, Pessoa.PACIENTE.getTypePessoa())) {
                Paciente paciente = (Paciente) context.getAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext());
                data.setPaciente(paciente);
                bancoDadosService.atualizarDiarioAlimentar(data);
                mensagem = "Diario alimetar atualizado com sucesso";
            } else {
                mensagem = Response.ERROR_SISTEMA.getTypeResponse();
                codigo = Code.ERROR_SYSTEM.getTypeCode();
            }
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
            mensagem = "Erro ao atualizar o diario alimentar";
            codigo = Code.ERROR.getTypeCode();
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }
}
