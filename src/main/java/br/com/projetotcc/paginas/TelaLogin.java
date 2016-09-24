package br.com.projetotcc.paginas;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidades.Login;
import br.com.projetotcc.mensagem.ResultadoServico;
import br.com.projetotcc.seguranca.SegurancaSistema;

@Controller
public class TelaLogin {
	
	@Autowired
	private BancoDadosService bancoDadosService;
	
	@Autowired
	private ResultadoServico resultadoServico;
	
	@Autowired
	private SegurancaSistema segurancaSistema;
	
	@Autowired
    private ServletContext context;
	
	@RequestMapping(value = "/telaLogin", method = RequestMethod.GET)
	public ModelAndView aparecerTelaLogin() {
		return new ModelAndView("TelaLogin");
	}
	
	@RequestMapping(value = "/sairSistema", method = RequestMethod.GET)
	public ModelAndView sairSistema() {
		return new ModelAndView("TelaLogin");
	}
	
	@RequestMapping(value = "/entrarTelaPrincipal", method = RequestMethod.POST)
	public @ResponseBody ResultadoServico logarUsuario(@RequestBody Login login) {
		String mensagem = null;
		long codigo = 0;

		if(login.getUsuario() == null || login.getUsuario().equals("")) {
			mensagem = "Digite um usuario";

		} else
			if(login.getSenha() == null || login.getSenha().equals("")) {
				mensagem = "Digite uma senha";

			} else {
				try {
					Login loginUsuario = (Login) bancoDadosService.encontrarInformacao(login, login.getUsuario());
					if(loginUsuario != null) {
						if(loginUsuario.getSenha().equals(login.getSenha())) {
							segurancaSistema.autenticarlogin(loginUsuario);
							context.setAttribute("loginUsuario", login.getUsuario());
						} else {
							mensagem = "Usuario ou senha inválido";
						}
					} else {
						mensagem = "Não Existe esse usuario";
					}
				} catch(Exception e) {
					mensagem = "Erro no Sistema";
				}
			}

		if(mensagem == null) {
			codigo = 1;
		}

		resultadoServico.setCodigo(codigo);
		resultadoServico.setMensagem(mensagem);

		return resultadoServico;
	}
}
