package br.com.projetotcc.pagina;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.cadastro.Obter;
import br.com.projetotcc.cadastro.Salvar;
import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.mensagem.ResultadoServico;
import br.com.projetotcc.utils.BancoDadosUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;

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
        BancoDadosUtils bancoDadosUtils = new BancoDadosUtils(bancoDadosService, resultadoServico);
        resultadoServico = bancoDadosUtils.checkLoginIgual(login);

        return resultadoServico;
    }

    @RequestMapping(value = "/pegarCadastroUsuario/{tipoPessoa}/{idUsuario}", method = RequestMethod.GET)
    public @ResponseBody
    ResultadoServico pegarCadastroUsuario(@PathVariable(value = "idUsuario") Long id, @PathVariable(value = "tipoPessoa") String tipoPessoa) {
        Obter obter = new Obter(bancoDadosService, resultadoServico);
        resultadoServico = obter.obterCadastro(id, tipoPessoa);

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
