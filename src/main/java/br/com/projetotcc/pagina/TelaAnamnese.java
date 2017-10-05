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
import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.mensagem.ResultadoServico;

@Controller
public class TelaAnamnese {

    @Autowired
    private BancoDadosService bancoDadosService;

    @Autowired
    private ResultadoServico resultadoServico;

    @Autowired
    private ServletContext context;

    @RequestMapping(value = "/telaAnamnese/cadastrar/{idPaciente}", method = RequestMethod.GET)
    public ModelAndView cadastrarAnamnese() {
        return new ModelAndView("TelaAnamnese");
    }

    @RequestMapping(value = "/telaAnamnese/atualizar/{idPaciente}", method = RequestMethod.GET)
    public ModelAndView atualizarAnamnese() {
        return new ModelAndView("TelaAnamnese");
    }

    @RequestMapping(value = "/telaAnamnese/visualizar/{idPaciente}", method = RequestMethod.GET)
    public ModelAndView visualizarAnamnese() {
        return new ModelAndView("TelaAnamnese");
    }

    @RequestMapping(value = "/cadastrarInformacoesPaciente", method = RequestMethod.PUT)
    public @ResponseBody
    ResultadoServico cadastrarInformacoesPaciente(@RequestBody Paciente paciente) {
        Atualizar atualizar = new Atualizar();
        resultadoServico = atualizar.atualizarCadastro(paciente, bancoDadosService, resultadoServico, context);

        return resultadoServico;
    }

    @RequestMapping(value = "/pegarDadosPaciente/{idUsuario}", method = RequestMethod.GET)
    public @ResponseBody
    ResultadoServico pegarCadastroUsuario(@PathVariable(value = "idUsuario") Long id) {
        Obter obter = new Obter();
        resultadoServico = obter.obterCadastro(id, bancoDadosService, resultadoServico);

        return resultadoServico;
    }
}
