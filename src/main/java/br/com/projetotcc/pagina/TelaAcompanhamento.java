package br.com.projetotcc.pagina;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TelaAcompanhamento {

    private static final String tela = "TelaAcompanhamento";
    private static final String rotaTela = "/telaAcompanhamento";

    @RequestMapping(value = rotaTela + "/{idPaciente}", method = RequestMethod.GET)
    public ModelAndView aparecerTelaAcompanhamento() {
        return new ModelAndView(tela);
    }
}
