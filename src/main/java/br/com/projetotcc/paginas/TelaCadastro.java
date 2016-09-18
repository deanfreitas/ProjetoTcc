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
		
		if(pessoa.getNomeCompleto() == null || pessoa.getNomeCompleto().equals("")) {
			mensagem = "Digite um nome";
		} else {
			List<InterfaceEntidade> listaUsuariosCadastrados = bancoDadosService.encontrarUsuario(pessoa.getLogin().getUsuario(), pessoa.getLogin());
			if(listaUsuariosCadastrados.size() == 0) {
				try {
					Role role = new Role("ROLE_usuario");
					role.setPessoa(pessoa);
					bancoDadosService.adicionarUsuario(role);
					mensagem = "Usuario Cadastrado com sucesso";
					resultadoServico.setCodigo(1);
				}catch (Exception e) {
					mensagem = "Erro ao fazer o cadastro";
				}
			} else {
				mensagem = "J� tem um login Igual a esse";
			}
		}
		
		resultadoServico.setMensagem(mensagem);
		
		return resultadoServico;
	}
	
	@RequestMapping(value = "/validarLoginExiste", method = RequestMethod.POST)
	public @ResponseBody ResultadoServico validarLoginExiste(@RequestBody Login login) {
		List<InterfaceEntidade> listaUsuariosCadastrados = bancoDadosService.listaUsuariosCadastros(login);
		if(listaUsuariosCadastrados.size() > 0) {
			resultadoServico.setListaEntidades(listaUsuariosCadastrados);
			resultadoServico.setMensagem("J� tem um login Igual a esse");
		}
		
		return resultadoServico;
	}
}
