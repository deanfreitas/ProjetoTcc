package br.com.projetotcc.pagina;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TelaAcompanhamento {

	@RequestMapping(value = "/telaAcompanhamento", method = RequestMethod.GET)
	public ModelAndView aparecerTelaAcompanhamento() {
		return new ModelAndView("TelaAcompamnhamento");
	}
}
