package br.com.projetotcc.cadastro;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.paciente.alimentacao.Data;
import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.entidade.pessoa.informacao.Role;
import br.com.projetotcc.enums.Code;
import br.com.projetotcc.enums.Context;
import br.com.projetotcc.enums.Pessoa;
import br.com.projetotcc.enums.Response;
import br.com.projetotcc.mensagem.ResultadoServico;
import br.com.projetotcc.seguranca.SegurancaSistema;
import br.com.projetotcc.utils.BancoDadosUtils;
import br.com.projetotcc.utils.Usuario;
import br.com.projetotcc.utils.Utils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.BadCredentialsException;

import javax.servlet.ServletContext;
import java.util.List;

public class Postar extends Http {

    private static final Logger LOGGER = LoggerFactory.getLogger(Postar.class);

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;
    private String mensagem = null;
    private long codigo = Code.SUCCESS.getTypeCode();

    public Postar(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        super(resultadoServico);
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    public ResultadoServico autenticarUsuario(Login login, SegurancaSistema segurancaSistema) {
        Usuario usuario = new Usuario(resultadoServico);
        resultadoServico = usuario.validarLogin(login);

        if (resultadoServico.getCodigo() != Code.SUCCESS.getTypeCode()) {
            return resultadoServico;
        }

        try {
            segurancaSistema.autenticarlogin(login);
            context.setAttribute(Context.LOGIN_USUARIO.getTypeContext(), login.getUsuario());
        } catch (NullPointerException e) {
            LOGGER.error(e.getMessage(), e);
            mensagem = "Não Existe esse usuario";
            codigo = Code.ERROR.getTypeCode();
        } catch (BadCredentialsException e) {
            LOGGER.error(e.getMessage(), e);
            mensagem = "Usuário e/ou senha inválidos";
            codigo = Code.ERROR.getTypeCode();
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
            mensagem = "Error Sistema";
            codigo = Code.ERROR_SYSTEM.getTypeCode();
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }

    public ResultadoServico adicionarNutricionista(Nutricionista nutricionista) {
        Usuario usuario = new Usuario(resultadoServico);
        resultadoServico = usuario.parametrosObrigatoriosSalvarNutricionista(nutricionista);

        if (resultadoServico.getCodigo() != Code.SUCCESS.getTypeCode()) {
            return resultadoServico;
        }

        BancoDadosUtils bancoDadosUtils = new BancoDadosUtils(bancoDadosService, resultadoServico);
        resultadoServico = bancoDadosUtils.checkLoginIgual(nutricionista.getLogin());

        if (resultadoServico.getCodigo() != Code.SUCCESS.getTypeCode()) {
            return resultadoServico;
        }

        try {
            Role role = new Role("ROLE_nutricionista", nutricionista);
            bancoDadosService.adicionarCadastroBancoDados(role);
            mensagem = "Usuario Cadastrado com sucesso";
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
            mensagem = "Erro ao fazer o cadastro";
            codigo = Code.ERROR.getTypeCode();
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }

    public ResultadoServico adicionarPaciente(Paciente paciente) {
        Usuario usuario = new Usuario(resultadoServico);
        resultadoServico = usuario.parametrosObrigatoriosSalvarPaciente(paciente);

        if (resultadoServico.getCodigo() != Code.SUCCESS.getTypeCode()) {
            return resultadoServico;
        }

        BancoDadosUtils bancoDadosUtils = new BancoDadosUtils(bancoDadosService, resultadoServico);
        resultadoServico = bancoDadosUtils.checkLoginIgual(paciente.getLogin());

        if (resultadoServico.getCodigo() != Code.SUCCESS.getTypeCode()) {
            return resultadoServico;
        }

        Nutricionista nutricionista = (Nutricionista) bancoDadosService.encontrarInformacao(paciente.getNutricionista(), "crn", paciente.getNutricionista().getCrn());
        resultadoServico = usuario.checkPacientePertenceNutricionista(paciente, nutricionista);

        if (resultadoServico.getCodigo() != Code.SUCCESS.getTypeCode()) {
            return resultadoServico;
        }

        for (Paciente pacienteNutricionista : nutricionista.getPacientes()) {
            resultadoServico = usuario.checkIdentificacaoPaciente(paciente, pacienteNutricionista);
            if (resultadoServico.getCodigo() == Code.SUCCESS.getTypeCode()) {
                try {
                    paciente.getLogin().setPaciente(null);
                    pacienteNutricionista.setResponsavel(paciente.getResponsavel());
                    pacienteNutricionista.setLogin(paciente.getLogin());
                    Role role = new Role("ROLE_paciente", pacienteNutricionista);
                    bancoDadosService.atualizarCadastroBancoDados(role);
                    mensagem = "Usuario Cadastrado com sucesso";
                    break;
                } catch (Exception e) {
                    LOGGER.error(e.getMessage(), e);
                    mensagem = "Erro ao fazer o cadastro";
                    codigo = Code.ERROR.getTypeCode();
                }
            }
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }

    public ResultadoServico adicionarPacienteNutricionista(Paciente paciente) {
        if (paciente != null) {
            try {
                if (Utils.validTypeUser(context, Pessoa.NUTRICIONISTA.getTypePessoa())) {
                    bancoDadosService.adicionarCadastroBancoDados(paciente);
                    bancoDadosService.sincronizarBancoDados();

                    Nutricionista nutricionista = (Nutricionista) context.getAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext());
                    List<Paciente> listPacientes = nutricionista.getPacientes();
                    listPacientes.add(paciente);
                    nutricionista.setPacientes(listPacientes);

                    context.setAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext(), nutricionista);

                    resultadoServico.setObjeto(paciente.getId());
                }
            } catch (Exception e) {
                LOGGER.error(e.getMessage(), e);
                mensagem = "Erro ao inserir medico ao paciente";
                codigo = Code.ERROR.getTypeCode();
            }
        } else {
            mensagem = Response.ERROR_SYSTEM.getTypeResponse();
            codigo = Code.ERROR_SYSTEM.getTypeCode();
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }

    public ResultadoServico pegarIdUsuarioLogado(Login login) {
        long id = 0;

        Login loginCadastrado = (Login) bancoDadosService.encontrarInformacao(login, "usuario", context.getAttribute(Context.LOGIN_USUARIO.getTypeContext()).toString());

        if (loginCadastrado != null) {
            if (loginCadastrado.getNutricionista() != null) {
                context.setAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext(), loginCadastrado.getNutricionista());
                mensagem = Pessoa.NUTRICIONISTA.getTypePessoa();
                id = loginCadastrado.getNutricionista().getId();

            } else if (loginCadastrado.getPaciente() != null) {
                context.setAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext(), loginCadastrado.getPaciente());
                mensagem = Pessoa.PACIENTE.getTypePessoa();
                id = loginCadastrado.getPaciente().getId();

            } else {
                mensagem = Response.ERROR_SYSTEM.getTypeResponse();
                codigo = Code.ERROR_SYSTEM.getTypeCode();
            }
        } else {
            mensagem = Response.ERROR_SYSTEM.getTypeResponse();
            codigo = Code.ERROR_SYSTEM.getTypeCode();
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);
        resultadoServico.setObjeto(id);

        return resultadoServico;
    }

    public ResultadoServico cadastrarDiarioAlimentar(Data data) {
        try {
            if (Utils.validTypeUser(context, Pessoa.PACIENTE.getTypePessoa())) {

                Paciente paciente = (Paciente) context.getAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext());
                data.setPaciente(paciente);
                bancoDadosService.adicionarCadastroBancoDados(data);
                bancoDadosService.sincronizarBancoDados();

                List<Data> listData = paciente.getData();
                listData.add(data);
                paciente.setData(listData);

                context.setAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext(), paciente);
                mensagem = "Diario alimetar cadastrado com sucesso";
            } else {
                mensagem = Response.ERROR_SYSTEM.getTypeResponse();
                codigo = Code.ERROR_SYSTEM.getTypeCode();
            }
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
            mensagem = "Erro ao cadastrado o diario alimentar";
            codigo = Code.ERROR.getTypeCode();
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }
}
