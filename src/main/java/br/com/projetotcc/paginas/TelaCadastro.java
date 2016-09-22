package br.com.projetotcc.paginas;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
	
	@RequestMapping(value = "/telaCadastrarUsuario", method = RequestMethod.GET)
	public ModelAndView cadastrarUsuario() {
		return new ModelAndView("TelaCadastro");
	}
	
	@RequestMapping(value = "/telaUpdateCadastro/{idUsuario}", method = RequestMethod.GET)
	public ModelAndView entrarTelaUpdateCadastro() {
		return new ModelAndView("TelaCadastro");
	}
	
	@RequestMapping(value = "/salvarUsuario", method = RequestMethod.POST)
	public @ResponseBody ResultadoServico addUser(@RequestBody Pessoa pessoa) {
		String mensagem = null;
		long codigo = 0;

		if(pessoa.getNomeCompleto() == null || pessoa.getNomeCompleto().equals("")) {
			mensagem = "Digite um nome";
		} else if(pessoa.getLogin().getUsuario() == null || pessoa.getLogin().getUsuario().equals("")) {
			mensagem = "Digite um Email";
		}else if(pessoa.getLogin().getSenha() == null || pessoa.getLogin().getSenha().equals("")) {
			mensagem = "Digite uma senha";
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
		resultadoServico.setCodigo(codigo);
		resultadoServico.setListaObjetosUnicos(null);
		
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
		resultadoServico.setCodigo(codigo);
		resultadoServico.setListaObjetosUnicos(null);
		
		return resultadoServico;
	}
	
	@RequestMapping(value = "/pegarCadastroUsuario", method = RequestMethod.POST)
	public @ResponseBody ResultadoServico pegarCadastroUsuario(@RequestBody Pessoa pessoa) {
		String mensagem = null;
		
		Set<Object> listaPessoas = new HashSet<Object>();
		List<InterfaceEntidade> listaInformacoes = bancoDadosService.encontrarInformacao(pessoa.getId().toString(), pessoa);
		for(InterfaceEntidade informacoes : listaInformacoes) {
			if(informacoes instanceof Pessoa) {
				listaPessoas.add(informacoes);
			} else {
				mensagem = "Erro no Sistema. Instancia errada";
			}
		}
		
		resultadoServico.setMensagem(mensagem);
		resultadoServico.setListaObjetosUnicos(listaPessoas);
		return resultadoServico;
	}
	
	@RequestMapping(value = "/atualizarCadastro", method = RequestMethod.PUT)
	public @ResponseBody ResultadoServico atualizarCadastroUsuario(@RequestBody Pessoa pessoa) {
		String mensagem = null;
		long codigo = 0;
		try {
			pessoa.getLogin().setId(pessoa.getId());
			pessoa.getContato().setId(pessoa.getId());
			pessoa.getEndereco().setId(pessoa.getId());
			bancoDadosService.atualizarCadastroUsuario(pessoa);
			mensagem = "Cadastro atualizado com sucesso";
		} catch (Exception e) {
			mensagem = "Erro ao atualizar o cadastro";
			codigo = 2;
		}
		resultadoServico.setMensagem(mensagem);
		resultadoServico.setCodigo(codigo);
		resultadoServico.setListaObjetosUnicos(null);
		return resultadoServico;
	}
}
