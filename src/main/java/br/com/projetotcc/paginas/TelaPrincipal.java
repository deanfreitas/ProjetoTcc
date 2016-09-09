package br.com.projetotcc.paginas;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TelaPrincipal {

	@RequestMapping(value = "/TelaQualquer", method = RequestMethod.GET)
	public ModelAndView aparecerTelaPrincipal() {
		return new ModelAndView("TelaQualquer");
	}	
}
