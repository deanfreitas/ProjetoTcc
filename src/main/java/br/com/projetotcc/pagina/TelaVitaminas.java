package br.com.projetotcc.pagina;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TelaVitaminas {

    private static final String TELA = "TelaVitaminas";
    private static final String ROTA_TELA = "/telaVitaminas";

    @RequestMapping(value = ROTA_TELA, method = RequestMethod.GET)
    public ModelAndView aparecerTelaVitaminas() {
        return new ModelAndView(TELA);
    }
}
