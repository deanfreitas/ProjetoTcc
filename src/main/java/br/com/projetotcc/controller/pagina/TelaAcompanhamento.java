package br.com.projetotcc.controller.pagina;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TelaAcompanhamento {

    private static final String TELA = "TelaAcompanhamento";
    private static final String ROTA_TELA = "/telaAcompanhamento";

    @RequestMapping(value = ROTA_TELA + "/{idPaciente}", method = RequestMethod.GET)
    public ModelAndView aparecerTelaAcompanhamento() {
        return new ModelAndView(TELA);
    }
}
