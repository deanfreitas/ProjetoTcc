package br.com.projetotcc.paginas;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidades.Pessoa;
import br.com.projetotcc.mensagem.ResultadoMensagem;

@Controller
public class TelaCadastro {
	
	@Autowired
	private BancoDadosService bancoDadosService;
	
	@Autowired
	private ResultadoMensagem resultadoMensagem;

	@RequestMapping(value = "/TelaCadastro", method = RequestMethod.GET)
	public ModelAndView aparecerTelaCadastro() {
		return new ModelAndView("TelaCadastro");
	}
	
	@RequestMapping(value = "/SalvarUsuario", method = RequestMethod.POST)
	public @ResponseBody ResultadoMensagem logarUsuario(@RequestBody Pessoa pessoa) {
		String mensagem = null;
		
		return null;
	}
}
