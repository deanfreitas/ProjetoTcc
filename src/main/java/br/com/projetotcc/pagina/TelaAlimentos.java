package br.com.projetotcc.pagina;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TelaAlimentos {

    private static final String tela = "TelaAlimentos";
    private static final String rotaTela = "/telaAlimentos";

    @RequestMapping(value = rotaTela, method = RequestMethod.GET)
    public ModelAndView aparecerTelaCadastro() {
        return new ModelAndView(tela);
    }
}
