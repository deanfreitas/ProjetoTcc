package br.com.projetotcc.controller.pagina;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.cadastro.Obter;
import br.com.projetotcc.enums.Pessoa;
import br.com.projetotcc.mensagem.ResultadoServico;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;

@Controller
public class TelaResultados {

    private static final String TELA = "TelaResultados";
    private static final String ROTA_TELA = "/telaResultados";

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;

    @Autowired
    public TelaResultados(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    @RequestMapping(value = ROTA_TELA + "/{idUsuario}", method = RequestMethod.GET)
    public ModelAndView aparecerTelaResultados() {
        return new ModelAndView(TELA);
    }

    @RequestMapping(value = "/getResultadosPaciente/{idUsuario}", method = RequestMethod.GET)
    public @ResponseBody
    ResultadoServico getResultadosPaciente(@PathVariable(value = "idUsuario") Long id) {
        Obter obter = new Obter(bancoDadosService, resultadoServico, context);
        resultadoServico = obter.obterCadastro(id, Pessoa.PACIENTE.getTypePessoa());

        return resultadoServico;
    }
}
