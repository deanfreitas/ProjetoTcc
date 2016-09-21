package br.com.projetotcc.paginas;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidades.InterfaceEntidade;
import br.com.projetotcc.entidades.Login;
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
		
		Set<Object> listaIdPessoas = new HashSet<Object>();
		List<InterfaceEntidade> listaInformacoes = bancoDadosService.encontrarInformacao(context.getAttribute("loginUsuario").toString(), login);
		for(InterfaceEntidade informacoes : listaInformacoes) {
			if(informacoes instanceof Login) {
				listaIdPessoas.add(((Login) informacoes).getPessoa().getId());
			} else {
				mensagem = "Erro no sistema. Instancia errada";
			}
		}
		
		resultadoServico.setMensagem(mensagem);
		resultadoServico.setListaObjetosUnicos(listaIdPessoas);
		return resultadoServico;
	}
}
