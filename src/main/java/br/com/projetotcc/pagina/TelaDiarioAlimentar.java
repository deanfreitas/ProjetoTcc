package br.com.projetotcc.pagina;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TelaDiarioAlimentar {

	@RequestMapping(value = "/telaDiarioAlimentar", method = RequestMethod.GET)
	public ModelAndView aparecerTelaDiarioAlimentar() {
		return new ModelAndView("TelaDiarioAlimentar");
	}
}