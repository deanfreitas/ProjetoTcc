package br.com.projetotcc.paginas;

import java.util.List;

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
import br.com.projetotcc.entidades.Pessoa;
import br.com.projetotcc.entidades.Role;
import br.com.projetotcc.mensagem.ResultadoServico;

@Controller
public class TelaCadastro {
	
	@Autowired
	private BancoDadosService bancoDadosService;
	
	@Autowired
	private ResultadoServico resultadoServico;

	@RequestMapping(value = "/TelaCadastro", method = RequestMethod.GET)
	public ModelAndView aparecerTelaCadastro() {
		return new ModelAndView("TelaCadastro");
	}
	
	@RequestMapping(value = "/SalvarUsuario", method = RequestMethod.POST)
	public @ResponseBody ResultadoServico addUser(@RequestBody Pessoa pessoa) {
		String mensagem = null;
		long codigo = 0;
		
		if(pessoa.getNomeCompleto() == null || pessoa.getNomeCompleto().equals("")) {
			mensagem = "Digite um nome";
		} else {
			List<InterfaceEntidade> listaUsuariosCadastrados = bancoDadosService.encontrarInformacao(pessoa.getLogin().getUsuario(), pessoa.getLogin());
			if(listaUsuariosCadastrados.size() == 0) {
				try {
					Role role = new Role("ROLE_usuario", pessoa);
					bancoDadosService.adicionarUsuario(role);
					mensagem = "Usuario Cadastrado com sucesso";
					codigo = 2;
				}catch (Exception e) {
					mensagem = "Erro ao fazer o cadastro";
				}
			} else {
				mensagem = "Já tem um login Igual a esse";
			}
		}
		
		resultadoServico.setMensagem(mensagem);
		resultadoServico.setListaEntidades(null);
		resultadoServico.setCodigo(codigo);
		
		return resultadoServico;
	}
	
	@RequestMapping(value = "/validarLoginExiste", method = RequestMethod.POST)
	public @ResponseBody ResultadoServico validarLoginExiste(@RequestBody Login login) {
		String mensagem = null;
		long codigo = 0;
		
		List<InterfaceEntidade> listaUsuariosCadastrados = bancoDadosService.encontrarInformacao(login.getUsuario(), login);
		if(listaUsuariosCadastrados.size() > 0) {
			mensagem = "Já tem um login Igual a esse";
		}
		
		resultadoServico.setMensagem(mensagem);
		resultadoServico.setListaEntidades(null);
		resultadoServico.setCodigo(codigo);
		
		return resultadoServico;
	}
}
