package br.com.projetotcc.pagina;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TelaAlimentos {

    private static final String TELA = "TelaAlimentos";
    private static final String ROTA_TELA = "/telaAlimentos";

    @RequestMapping(value = ROTA_TELA, method = RequestMethod.GET)
    public ModelAndView aparecerTelaCadastro() {
        return new ModelAndView(TELA);
    }
}
