package br.com.projetotcc.controller.pagina;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.cadastro.Atualizar;
import br.com.projetotcc.cadastro.Obter;
import br.com.projetotcc.cadastro.Postar;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.mensagem.ResultadoServico;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;

@Controller
public class TelaAnamnese {

    private static final String TELA = "TelaAnamnese";
    private static final String ROTA_TELA = "/telaAnamnese";

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;

    @Autowired
    public TelaAnamnese(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    @RequestMapping(value = ROTA_TELA + "/{tipoPagina}", method = RequestMethod.GET)
    public ModelAndView cadastrarAnamnese() {
        return new ModelAndView(TELA);
    }


    @RequestMapping(value = ROTA_TELA + "/{tipoPagina}/{idPaciente}", method = RequestMethod.GET)
    public ModelAndView atualizarVisualizarAnamnese() {
        return new ModelAndView(TELA);
    }

    @RequestMapping(value = "/pegarDadosPaciente/{idUsuario}", method = RequestMethod.GET)
    public @ResponseBody
    ResultadoServico pegarCadastroUsuario(@PathVariable(value = "idUsuario") Long id) {
        Obter obter = new Obter(bancoDadosService, resultadoServico, context);
        resultadoServico = obter.obterCadastro(id, "paciente");

        return resultadoServico;
    }

    @RequestMapping(value = "/cadastrarPaciente", method = RequestMethod.POST)
    public @ResponseBody
    ResultadoServico addUser(@RequestBody Paciente paciente) {
        Postar postar = new Postar(bancoDadosService, resultadoServico, context);
        resultadoServico = postar.adicionarPacienteNutricionista(paciente);

        return resultadoServico;
    }

    @RequestMapping(value = "/atualizarInformacoesPaciente", method = RequestMethod.PUT)
    public @ResponseBody
    ResultadoServico atualizarInformacoesPaciente(@RequestBody Paciente paciente) {
        Atualizar atualizar = new Atualizar(bancoDadosService, resultadoServico, context);
        resultadoServico = atualizar.atualizarAnamnesePaciente(paciente);

        return resultadoServico;
    }
}
