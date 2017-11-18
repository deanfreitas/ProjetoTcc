package br.com.projetotcc.pagina;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.cadastro.Atualizar;
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

    private static final String tela = "TelaDiarioAlimentar";
    private static final String rotaTela = "/telaDiarioAlimentar";

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;

    @Autowired
    public TelaDiarioAlimentar(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    @RequestMapping(value = rotaTela, method = RequestMethod.GET)
    public ModelAndView aparecerTelaDiarioAlimentar() {
        return new ModelAndView(tela);
    }

    @RequestMapping(value = rotaTela + "/{dia}/{mes}/{ano}", method = RequestMethod.GET)
    public ModelAndView aparecerTelaDiarioAlimentarComData() {
        return new ModelAndView(tela);
    }

    @RequestMapping(value = "/cadastrarDiarioAlimentar", method = RequestMethod.PUT)
    public @ResponseBody
    ResultadoServico cadastrarDiarioAlimentar(@RequestBody Data data) {
        Atualizar atualizar = new Atualizar(bancoDadosService, resultadoServico, context);
        resultadoServico = atualizar.atualizarDiarioAlimentar(data);

        return resultadoServico;
    }
}
