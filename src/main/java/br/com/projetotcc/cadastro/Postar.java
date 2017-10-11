package br.com.projetotcc.cadastro;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.entidade.pessoa.informacao.Role;
import br.com.projetotcc.mensagem.ResultadoServico;
import br.com.projetotcc.seguranca.SegurancaSistema;
import br.com.projetotcc.utils.BancoDadosUtils;
import br.com.projetotcc.utils.Usuario;
import org.springframework.security.authentication.BadCredentialsException;

import javax.servlet.ServletContext;

public class Postar extends Http {

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;
    private String mensagem = null;
    private long codigo = 0;

    public Postar(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        super(resultadoServico);
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    public ResultadoServico autenticarUsuario(Login login, SegurancaSistema segurancaSistema) {
        Usuario usuario = new Usuario(resultadoServico);
        resultadoServico = usuario.validarLogin(login);

        if (resultadoServico.getCodigo() != 0) {
            return resultadoServico;
        }

        try {
            segurancaSistema.autenticarlogin(login);
            context.setAttribute("loginUsuario", login.getUsuario());
        } catch (NullPointerException e) {
            System.err.println(e);
            mensagem = "Não Existe esse usuario";
            codigo = 1;
        } catch (BadCredentialsException e) {
            System.err.println(e);
            mensagem = "Usuário e/ou senha inválidos";
            codigo = 1;
        } catch (Exception e) {
            System.err.println(e);
            mensagem = "Error Sistema";
            codigo = 2;
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }

    public ResultadoServico adicionarNutricionista(Nutricionista nutricionista) {
        Usuario usuario = new Usuario(resultadoServico);
        resultadoServico = usuario.parametrosObrigatoriosSalvarNutricionista(nutricionista);

        if (resultadoServico.getCodigo() != 0) {
            return resultadoServico;
        }

        BancoDadosUtils bancoDadosUtils = new BancoDadosUtils(bancoDadosService, resultadoServico);
        resultadoServico = bancoDadosUtils.checkLoginIgual(nutricionista.getLogin());

        if (resultadoServico.getCodigo() != 0) {
            return resultadoServico;
        }

        try {
            Role role = new Role("ROLE_nutricionista", nutricionista);
            bancoDadosService.adicionarUsuario(role);
            mensagem = "Usuario Cadastrado com sucesso";
        } catch (Exception e) {
            System.err.println(e);
            mensagem = "Erro ao fazer o cadastro";
            codigo = 1;
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }

    public ResultadoServico adicionarPaciente(Paciente paciente) {
        Usuario usuario = new Usuario(resultadoServico);
        resultadoServico = usuario.parametrosObrigatoriosSalvarPaciente(paciente);

        if (resultadoServico.getCodigo() != 0) {
            return resultadoServico;
        }

        BancoDadosUtils bancoDadosUtils = new BancoDadosUtils(bancoDadosService, resultadoServico);
        resultadoServico = bancoDadosUtils.checkLoginIgual(paciente.getLogin());

        if (resultadoServico.getCodigo() != 0) {
            return resultadoServico;
        }

        Nutricionista nutricionista = (Nutricionista) bancoDadosService.encontrarInformacao(paciente.getNutricionista(), paciente.getNutricionista().getCrn());
        resultadoServico = usuario.checkPacientePertenceNutricionista(paciente, nutricionista);

        if (resultadoServico.getCodigo() != 0) {
            return resultadoServico;
        }

        for (Paciente pacienteNutricionista : nutricionista.getPacientes()) {
            resultadoServico = usuario.checkIdentificacaoPaciente(paciente, pacienteNutricionista);
            if (resultadoServico.getCodigo() == 0) {
                try {
                    paciente.getLogin().setPaciente(null);
                    pacienteNutricionista.setResponsavel(paciente.getResponsavel());
                    pacienteNutricionista.setLogin(paciente.getLogin());
                    Role role = new Role("ROLE_paciente", pacienteNutricionista);
                    bancoDadosService.atualizarCadastroUsuario(role);
                    mensagem = "Usuario Cadastrado com sucesso";
                    break;
                } catch (Exception e) {
                    System.err.println(e);
                    mensagem = "Erro ao fazer o cadastro";
                    codigo = 1;
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
                bancoDadosService.adicionarUsuario(paciente);
                bancoDadosService.sincronizarBancoDados();
                resultadoServico.setObjeto(paciente.getId());
            } catch (Exception e) {
                System.err.println(e);
                mensagem = "Erro ao inserir medico ao paciente";
                codigo = 1;
            }
        } else {
            mensagem = "Erro no sistema";
            codigo = 2;
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }

    public ResultadoServico pegarIdUsuarioLogado(Login login) {
        long id = 0;

        Login loginCadastrado = (Login) bancoDadosService.encontrarInformacao(login, context.getAttribute("loginUsuario").toString());

        if (loginCadastrado != null) {
            if (loginCadastrado.getNutricionista() != null) {
                context.setAttribute("dadosCadastradosPessoa", loginCadastrado.getNutricionista());
                mensagem = "nutricionista";
                id = loginCadastrado.getNutricionista().getId();

            } else if (loginCadastrado.getPaciente() != null) {
                context.setAttribute("dadosCadastradosPessoa", loginCadastrado.getPaciente());
                mensagem = "paciente";
                id = loginCadastrado.getPaciente().getId();

            } else {
                mensagem = "Erro no sistema";
                codigo = 2;
            }
        } else {
            mensagem = "Erro no sistema";
            codigo = 2;
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);
        resultadoServico.setObjeto(id);

        return resultadoServico;
    }
}
