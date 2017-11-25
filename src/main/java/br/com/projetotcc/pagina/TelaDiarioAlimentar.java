package br.com.projetotcc.pagina;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.cadastro.Postar;
import br.com.projetotcc.entidade.paciente.alimentacao.Data;
import br.com.projetotcc.mensagem.ResultadoServico;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;

@Controller
public class TelaDiarioAlimentar {

    private static final String TELA = "TelaDiarioAlimentar";
    private static final String ROTA_TELA = "/telaDiarioAlimentar";

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;

    @Autowired
    public TelaDiarioAlimentar(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    @RequestMapping(value = ROTA_TELA, method = RequestMethod.GET)
    public ModelAndView aparecerTelaDiarioAlimentar() {
        return new ModelAndView(TELA);
    }

    @RequestMapping(value = ROTA_TELA + "/{tipoPagina}/{data}", method = RequestMethod.GET)
    public ModelAndView aparecerTelaDiarioAlimentarComData() {
        return new ModelAndView(TELA);
    }

    @RequestMapping(value = "/cadastrarDiarioAlimentar", method = RequestMethod.POST)
    public @ResponseBody
    ResultadoServico cadastrarDiarioAlimentar(@RequestBody Data data) {
        Postar postar = new Postar(bancoDadosService, resultadoServico, context);
        resultadoServico = postar.cadastrarDiarioAlimentar(data);

        return resultadoServico;
    }
}
