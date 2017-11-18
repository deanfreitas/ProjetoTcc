package br.com.projetotcc.pagina;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TelaDiarioAlimentar {

    private static final String tela = "TelaDiarioAlimentar";
    private static final String rota = "/telaDiarioAlimentar";

    @RequestMapping(value = rota, method = RequestMethod.GET)
    public ModelAndView aparecerTelaDiarioAlimentar() {
        return new ModelAndView(tela);
    }

    @RequestMapping(value = rota + "/{dia}/{mes}/{ano}", method = RequestMethod.GET)
    public ModelAndView aparecerTelaDiarioAlimentarComData() {
        return new ModelAndView(tela);
    }
}
