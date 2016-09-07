package br.com.projetotcc.paginas;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TelaCadastro {

	@RequestMapping(value = "/TelaCadastro", method = RequestMethod.POST)
	public ModelAndView aparecerTelaCadastro() {
		return new ModelAndView("TelaCadastro");
	}
}
