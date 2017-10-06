package br.com.projetotcc.pagina;

import javax.servlet.ServletContext;

import br.com.projetotcc.cadastro.Salvar;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.entidade.pessoa.informacao.Role;
import br.com.projetotcc.interfaces.InterfacePessoa;
import br.com.projetotcc.mensagem.ResultadoServico;

@Controller
public class TelaCadastro {

    @Autowired
    private BancoDadosService bancoDadosService;

    @Autowired
    private ResultadoServico resultadoServico;

    @Autowired
    private ServletContext context;

    @RequestMapping(value = "/telaCadastrarUsuario/{tipoPessoa}", method = RequestMethod.GET)
    public ModelAndView cadastrarUsuario() {
        return new ModelAndView("TelaCadastro");
    }

    @RequestMapping(value = "/telaUpdateCadastro/{tipoPessoa}/{idUsuario}", method = RequestMethod.GET)
    public ModelAndView entrarTelaUpdateCadastro() {
        return new ModelAndView("TelaCadastro");
    }

    @RequestMapping(value = "/salvarUsuario/nutricionista", method = RequestMethod.POST)
    public @ResponseBody
    ResultadoServico addUser(@RequestBody Nutricionista nutricionista) {
        Salvar salvar = new Salvar(bancoDadosService, resultadoServico, context);
        resultadoServico = salvar.adicionarNutricionista(nutricionista);

        return resultadoServico;
    }

    @RequestMapping(value = "/salvarUsuario/paciente", method = RequestMethod.POST)
    public @ResponseBody
    ResultadoServico addUser(@RequestBody Paciente paciente) {
        Salvar salvar = new Salvar(bancoDadosService, resultadoServico, context);
        resultadoServico = salvar.adicionarPaciente(paciente);

        return resultadoServico;
    }

    @RequestMapping(value = "/validarLoginExiste", method = RequestMethod.POST)
    public @ResponseBody
    ResultadoServico validarLoginExiste(@RequestBody Login login) {
        String mensagem = null;
        long codigo = 0;

        Login LoginCadastrado = (Login) bancoDadosService.encontrarInformacao(login, login.getUsuario());
        if (LoginCadastrado != null) {
            mensagem = "Já tem um login Igual a esse";
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);
        resultadoServico.setObjeto(null);
        resultadoServico.setListaObjetos(null);

        return resultadoServico;
    }

    @RequestMapping(value = "/pegarCadastroUsuario/{tipoPessoa}/{idUsuario}", method = RequestMethod.GET)
    public @ResponseBody
    ResultadoServico pegarCadastroUsuario(@PathVariable(value = "idUsuario") Long id, @PathVariable(value = "tipoPessoa") String tipoPessoa) {
        String mensagem = null;
        long codigo = 0;
        InterfacePessoa interfacePessoa = null;

        if (tipoPessoa.equals("nutricionista")) {
            interfacePessoa = new Nutricionista();
            mensagem = "nutricionista";
        } else if (tipoPessoa.equals("paciente")) {
            interfacePessoa = new Paciente();
            mensagem = "paciente";
        } else {
            codigo = 1;
        }

        if (mensagem != null) {
            try {
                resultadoServico.setObjeto(bancoDadosService.encontrarInformacaoPorId(interfacePessoa, id));
            } catch (Exception e) {
                codigo = 1;
                mensagem = "Erro no sistema";
            }
        } else {
            mensagem = "Não foi encontrado Nenhum tipo de pessoa";
        }

        resultadoServico.setCodigo(codigo);
        resultadoServico.setMensagem(mensagem);
        resultadoServico.setListaObjetos(null);

        return resultadoServico;
    }

    @RequestMapping(value = "/atualizarCadastro/paciente", method = RequestMethod.PUT)
    public @ResponseBody
    ResultadoServico atualizarCadastroUsuario(@RequestBody Paciente paciente) {
        String mensagem = null;
        long codigo = 0;
        try {
            if (context.getAttribute("dadosCadastradosPessoa") instanceof Paciente) {
                Paciente dadosCastradoPessoa = (Paciente) context.getAttribute("dadosCadastradosPessoa");
                paciente.setId(dadosCastradoPessoa.getId());
                paciente.getLogin().setId(dadosCastradoPessoa.getLogin().getId());
                bancoDadosService.atualizarCadastroUsuario(paciente);
                mensagem = "Cadastro atualizado com sucesso";
                context.setAttribute("loginUsuario", paciente.getLogin().getUsuario());
            } else {
                mensagem = "Erro no Sistema";
                codigo = 2;
            }
        } catch (Exception e) {
            mensagem = "Erro ao atualizar o cadastro";
            codigo = 1;
        }
        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);
        resultadoServico.setObjeto(null);
        resultadoServico.setListaObjetos(null);

        return resultadoServico;
    }

    @RequestMapping(value = "/atualizarCadastro/nutricionista", method = RequestMethod.PUT)
    public @ResponseBody
    ResultadoServico atualizarCadastroUsuario(@RequestBody Nutricionista nutricionista) {
        String mensagem = null;
        long codigo = 0;
        try {
            if (context.getAttribute("dadosCadastradosPessoa") instanceof Nutricionista) {
                Nutricionista dadosCastradoPessoa = (Nutricionista) context.getAttribute("dadosCadastradosPessoa");
                nutricionista.setId(dadosCastradoPessoa.getId());
                nutricionista.getLogin().setId(dadosCastradoPessoa.getLogin().getId());
                bancoDadosService.atualizarCadastroUsuario(nutricionista);
                mensagem = "Cadastro atualizado com sucesso";
                context.setAttribute("loginUsuario", nutricionista.getLogin().getUsuario());
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
        resultadoServico.setObjeto(null);
        resultadoServico.setListaObjetos(null);

        return resultadoServico;
    }
}
