package br.com.projetotcc.paginas;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TelaVitaminas {

	@RequestMapping(value = "/telaVitaminas", method = RequestMethod.GET)
	public ModelAndView aparecerTelaCadastro() {
		return new ModelAndView("TelaVitaminas");
	}
}
