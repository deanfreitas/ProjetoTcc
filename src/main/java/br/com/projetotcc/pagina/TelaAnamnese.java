package br.com.projetotcc.pagina;

import javax.servlet.ServletContext;

import br.com.projetotcc.cadastro.Atualizar;
import br.com.projetotcc.cadastro.Obter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.mensagem.ResultadoServico;

@Controller
public class TelaAnamnese {

    private static final String tela = "TelaAnamnese";
    private static final String rotaTela = "/telaAnamnese";

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;

    @Autowired
    public TelaAnamnese(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    @RequestMapping(value = rotaTela + "/{tipoPagina}/{idPaciente}", method = RequestMethod.GET)
    public ModelAndView cadastrarAnamnese() {
        return new ModelAndView(tela);
    }

    @RequestMapping(value = "/cadastrarInformacoesPaciente", method = RequestMethod.PUT)
    public @ResponseBody
    ResultadoServico cadastrarInformacoesPaciente(@RequestBody Paciente paciente) {
        Atualizar atualizar = new Atualizar(bancoDadosService, resultadoServico, context);
        resultadoServico = atualizar.atualizarAnamnesePaciente(paciente);

        return resultadoServico;
    }

    @RequestMapping(value = "/pegarDadosPaciente/{idUsuario}", method = RequestMethod.GET)
    public @ResponseBody
    ResultadoServico pegarCadastroUsuario(@PathVariable(value = "idUsuario") Long id) {
        Obter obter = new Obter(bancoDadosService, resultadoServico, context);
        resultadoServico = obter.obterCadastro(id, "paciente");

        return resultadoServico;
    }
}
