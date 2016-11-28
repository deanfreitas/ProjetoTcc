package br.com.projetotcc.pagina;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.mensagem.ResultadoServico;

@Controller
public class TelaPrincipal {

	@Autowired
	private BancoDadosService bancoDadosService;
	
	@Autowired
	private ResultadoServico resultadoServico;
	
	@Autowired
    private ServletContext context;
	
	@RequestMapping(value = "/telaPrincipal", method = RequestMethod.GET)
	public ModelAndView aparecerTelaPrincipal() {
		return new ModelAndView("TelaPrincipal");
	}
	
	@RequestMapping(value = "/pegarIdUsuarioCadastrado", method = RequestMethod.POST)
	public @ResponseBody ResultadoServico atualizarCadastroUsuario(@RequestBody Login login) {
		String mensagem = null;

		Login loginCadastrado = (Login) bancoDadosService.encontrarInformacao(login, context.getAttribute("loginUsuario").toString());
		
		if(loginCadastrado != null) {
			if(loginCadastrado.getNutricionista() != null) {
				context.setAttribute("dadosCadastradosPessoa", loginCadastrado.getNutricionista());
				mensagem = "nutricionista";
				
				resultadoServico.setObjeto(loginCadastrado.getNutricionista().getId());
			} else 
				if(loginCadastrado.getPaciente() != null) {
					context.setAttribute("dadosCadastradosPessoa", loginCadastrado.getPaciente());
					mensagem = "paciente";
					
					resultadoServico.setObjeto(loginCadastrado.getPaciente().getId());
				}
		}
		
		resultadoServico.setMensagem(mensagem);
		resultadoServico.setObjeto(null);
		resultadoServico.setListaObjetos(null);
		
		return resultadoServico;
	}
}
