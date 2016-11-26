package br.com.projetotcc.pagina;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TelaResultados {

	@RequestMapping(value = "/telaResultados", method = RequestMethod.GET)
	public ModelAndView aparecerTelaResultados() {
		return new ModelAndView("TelaResultados");
	}
}
