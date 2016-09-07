package br.com.projetotcc.paginas;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidades.Login;
import br.com.projetotcc.mensagem.ResultadoMensagem;

@Controller
public class TelaLogin {
	
	@Autowired
	private BancoDadosService bancoDadosService;
	
	@Autowired
	private ResultadoMensagem resultadoMensagem;
	
	@RequestMapping(value = "/TelaLogin", method = RequestMethod.GET)
	public ModelAndView aparecerTelaLogin() {
		return new ModelAndView("TelaLogin");
	}	
	
	@RequestMapping(value = "/EntrarTelaPrincipal", method = RequestMethod.POST)
	public @ResponseBody ResultadoMensagem logarUsuario(@RequestBody Login login) {
		
		String nomePagina = null;
		String mensagem = null;
		
		if(login.getUsuario() == null || login.getUsuario().equals("")) {
			nomePagina = "redirect:TelaLogin";
			mensagem = "Digite um usuario";
			
		} else
			if(login.getUsuario() == null || login.getSenha().equals("")) {
				nomePagina = "redirect:TelaLogin";
				mensagem = "Digite uma senha";
				
			} else {
				try {
					Login usuariosCadastrados = bancoDadosService.encontrarUsuario(login.getUsuario());
					
					if(usuariosCadastrados.getSenha().equals(login.getSenha())) {
						nomePagina = "TelaQualquer";
					} else {
						nomePagina = "redirect:TelaLogin";
						mensagem = "Usuario ou senha inválido";
					}
					
				} catch(ClassCastException classCastException) {
					nomePagina = "redirect:TelaLogin";
					mensagem = "Esse usuario não existe";
				} catch (IndexOutOfBoundsException indexOutOfBoundsException) {
					nomePagina = "redirect:TelaLogin";
					mensagem = "Esse usuario não existe";
				}
			}

		if(mensagem == null) {
			resultadoMensagem.setCodigo(1);
		} else {
			resultadoMensagem.setCodigo(2);
		}
		
		resultadoMensagem.setMensagem(mensagem);
		resultadoMensagem.setRedirecionarPagina(nomePagina);
		
		return resultadoMensagem;
	}
}
