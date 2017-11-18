package br.com.projetotcc.pagina;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TelaDiarioAlimentarHome {

    @RequestMapping(value = "/telaDiarioAlimentarHome", method = RequestMethod.GET)
    public ModelAndView aparecerTelaDiarioAlimentarHome() {
        return new ModelAndView("TelaDiarioAlimentarHome");
    }
}
