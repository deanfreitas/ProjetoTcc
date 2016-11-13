package br.com.projetotcc.pagina;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.entidade.pessoa.informacao.Role;
import br.com.projetotcc.interfaces.InterfacePessoa;
import br.com.projetotcc.mensagem.ResultadoServico;

@Controller
public class TelaCadastro {
	
	@Autowired
	private BancoDadosService bancoDadosService;
	
	@Autowired
	private ResultadoServico resultadoServico;
	
	@Autowired
    private ServletContext context;
	
	@RequestMapping(value = "/telaCadastrarUsuario/{tipoPessoa}", method = RequestMethod.GET)
	public ModelAndView cadastrarUsuario() {
		return new ModelAndView("TelaCadastro");
	}
	
	@RequestMapping(value = "/telaUpdateCadastro/{tipoPessoa}/{idUsuario}", method = RequestMethod.GET)
	public ModelAndView entrarTelaUpdateCadastro() {
		return new ModelAndView("TelaCadastro");
	}
	
	@RequestMapping(value = "/salvarUsuario/nutricionista", method = RequestMethod.POST)
	public @ResponseBody ResultadoServico addUser(@RequestBody Nutricionista nutricionista) {
		String mensagem = null;
		long codigo = 0;

		if(nutricionista.getNomeCompleto() == null || nutricionista.getNomeCompleto().equals("")) {
			mensagem = "Digite um nome";
		} else if(nutricionista.getLogin().getUsuario() == null || nutricionista.getLogin().getUsuario().equals("")) {
			mensagem = "Digite um Email";
		}else if(nutricionista.getLogin().getSenha() == null || nutricionista.getLogin().getSenha().equals("")) {
			mensagem = "Digite uma senha";
		} else {
			Login loginPessoa = (Login) bancoDadosService.encontrarInformacao(nutricionista.getLogin(), nutricionista.getLogin().getUsuario());
			if(loginPessoa == null) {
				try {
					Role role = new Role("ROLE_nutricionista", nutricionista);
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
	
	@RequestMapping(value = "/salvarUsuario/paciente", method = RequestMethod.POST)
	public @ResponseBody ResultadoServico addUser(@RequestBody Paciente paciente) {
		String mensagem = null;
		long codigo = 0;

		if(paciente.getNomeCompleto() == null || paciente.getNomeCompleto().equals("")) {
			mensagem = "Digite um nome";
		} else if(paciente.getLogin().getUsuario() == null || paciente.getLogin().getUsuario().equals("")) {
			mensagem = "Digite um Email";
		}else if(paciente.getLogin().getSenha() == null || paciente.getLogin().getSenha().equals("")) {
			mensagem = "Digite uma senha";
		} else {
			Login loginPessoa = (Login) bancoDadosService.encontrarInformacao(paciente.getLogin(), paciente.getLogin().getUsuario());
			if(loginPessoa == null) {
				try {
					Role role = new Role("ROLE_paciente", paciente);
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
	
	@RequestMapping(value = "/pegarCadastroUsuario/{tipoPessoa}/{idUsuario}", method = RequestMethod.POST)
	public @ResponseBody ResultadoServico pegarCadastroUsuario(@PathVariable(value = "idUsuario") Long id, @PathVariable(value = "tipoPessoa") String tipoPessoa) {
		String mensagem = null;
		InterfacePessoa interfacePessoa = null;
		
		if(tipoPessoa.equals("nutricionista")) {
			interfacePessoa = new Nutricionista();
		} else 
			if(tipoPessoa.equals("paciente")) {
				interfacePessoa = new Paciente();
			} else {
				mensagem = "Não foi encontrado Nenhum tipo de pessoa";
			}
		
		try {
			resultadoServico.setObjeto(bancoDadosService.encontrarInformacaoPorId(interfacePessoa, id));
		}catch (Exception e) {
			mensagem = "Erro no sistema";
		}
		
		resultadoServico.setMensagem(mensagem);
		
		return resultadoServico;
	}
	
//	@RequestMapping(value = "/atualizarCadastro", method = RequestMethod.PUT)
//	public @ResponseBody ResultadoServico atualizarCadastroUsuario(@RequestBody Pessoa pessoa) {
//		String mensagem = null;
//		long codigo = 0;
//		try {
//			Pessoa dadosCastradoPessoa = (Pessoa) context.getAttribute("dadosCadastradosPessoa");
//			pessoa.getLogin().setId(dadosCastradoPessoa.getLogin().getId());
//			pessoa.getContato().setId(dadosCastradoPessoa.getContato().getId());
//			pessoa.getEndereco().setId(dadosCastradoPessoa.getEndereco().getId());
//			bancoDadosService.atualizarCadastroUsuario(pessoa);
//			mensagem = "Cadastro atualizado com sucesso";
//			context.setAttribute("loginUsuario", pessoa.getLogin().getUsuario());
//		} catch (Exception e) {
//			mensagem = "Erro ao atualizar o cadastro";
//			codigo = 2;
//		}
//		resultadoServico.setMensagem(mensagem);
//		resultadoServico.setCodigo(codigo);
//		resultadoServico.setObjeto(null);
//		return resultadoServico;
//	}
}
