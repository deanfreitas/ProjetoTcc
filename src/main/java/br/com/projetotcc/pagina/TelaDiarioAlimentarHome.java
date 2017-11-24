package br.com.projetotcc.pagina;

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
public class TelaDiarioAlimentarHome {

    private static final String TELA = "TelaDiarioAlimentarHome";
    private static final String ROTA_TELA = "/telaDiarioAlimentarHome";

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;

    @Autowired
    public TelaDiarioAlimentarHome(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    @RequestMapping(value = ROTA_TELA + "{idPaciente}", method = RequestMethod.GET)
    public ModelAndView aparecerTelaDiarioAlimentarHome() {
        return new ModelAndView(TELA);
    }

    @RequestMapping(value = "getAllDiarioAlimentar/{idDiarioAlimentar}", method = RequestMethod.GET)
    public @ResponseBody
    ResultadoServico getAllDiarioAlimentar(@PathVariable(value = "idDiarioAlimentar") Long id) {
        Obter obter = new Obter(bancoDadosService, resultadoServico, context);
        resultadoServico = obter.getAllDiarioAlimentar(id);

        return resultadoServico;
    }
}
