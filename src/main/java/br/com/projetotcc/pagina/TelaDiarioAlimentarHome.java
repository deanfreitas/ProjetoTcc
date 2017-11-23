package br.com.projetotcc.pagina;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TelaDiarioAlimentarHome {

    private static final String TELA = "TelaDiarioAlimentarHome";
    private static final String ROTA_TELA = "/telaDiarioAlimentarHome";

    @RequestMapping(value = ROTA_TELA, method = RequestMethod.GET)
    public ModelAndView aparecerTelaDiarioAlimentarHome() {
        return new ModelAndView(TELA);
    }
}
