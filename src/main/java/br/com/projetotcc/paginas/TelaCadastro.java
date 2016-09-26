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
import br.com.projetotcc.entidades.Pessoa;
import br.com.projetotcc.entidades.Role;
import br.com.projetotcc.mensagem.ResultadoServico;

@Controller
public class TelaCadastro {
	
	@Autowired
	private BancoDadosService bancoDadosService;
	
	@Autowired
	private ResultadoServico resultadoServico;
	
	@Autowired
    private ServletContext context;
	
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
			Login loginPessoa = (Login) bancoDadosService.encontrarInformacao(pessoa.getLogin(), pessoa.getLogin().getUsuario());
			if(loginPessoa == null) {
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
		resultadoServico.setObjeto(null);
		
		return resultadoServico;
	}
	
	@RequestMapping(value = "/validarLoginExiste", method = RequestMethod.POST)
	public @ResponseBody ResultadoServico validarLoginExiste(@RequestBody Login login) {
		String mensagem = null;
		long codigo = 0;
		
		Login LoginCadastrado = (Login) bancoDadosService.encontrarInformacao(login, login.getUsuario());
		if(LoginCadastrado != null) {
			mensagem = "Já tem um login Igual a esse";
		}
		
		resultadoServico.setMensagem(mensagem);
		resultadoServico.setCodigo(codigo);
		resultadoServico.setObjeto(null);
		
		return resultadoServico;
	}
	
	@RequestMapping(value = "/pegarCadastroUsuario", method = RequestMethod.POST)
	public @ResponseBody ResultadoServico pegarCadastroUsuario(@RequestBody Pessoa pessoa) {
		String mensagem = null;
		Pessoa pessoaCadastrada = null;
		
		try {
			pessoaCadastrada = (Pessoa) bancoDadosService.encontrarInformacaoPorId(pessoa, pessoa.getId());
		}catch (Exception e) {
			mensagem = "Erro no sistema";
		}
		
		resultadoServico.setMensagem(mensagem);
		resultadoServico.setObjeto(pessoaCadastrada);
		
		return resultadoServico;
	}
	
	@RequestMapping(value = "/atualizarCadastro", method = RequestMethod.PUT)
	public @ResponseBody ResultadoServico atualizarCadastroUsuario(@RequestBody Pessoa pessoa) {
		String mensagem = null;
		long codigo = 0;
		try {
			Pessoa dadosCastradoPessoa = (Pessoa) context.getAttribute("dadosCadastradosPessoa");
			pessoa.getLogin().setId(dadosCastradoPessoa.getLogin().getId());
			pessoa.getContato().setId(dadosCastradoPessoa.getContato().getId());
			pessoa.getEndereco().setId(dadosCastradoPessoa.getEndereco().getId());
			bancoDadosService.atualizarCadastroUsuario(pessoa);
			mensagem = "Cadastro atualizado com sucesso";
			context.setAttribute("loginUsuario", pessoa.getLogin().getUsuario());
		} catch (Exception e) {
			mensagem = "Erro ao atualizar o cadastro";
			codigo = 2;
		}
		resultadoServico.setMensagem(mensagem);
		resultadoServico.setCodigo(codigo);
		resultadoServico.setObjeto(null);
		return resultadoServico;
	}
}
