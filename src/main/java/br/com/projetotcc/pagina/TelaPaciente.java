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
import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.mensagem.ResultadoServico;

@Controller
public class TelaPaciente {

	@Autowired
	private BancoDadosService bancoDadosService;

	@Autowired
	private ResultadoServico resultadoServico;

	@Autowired
	private ServletContext context;

	@RequestMapping(value = "/telaPaciente", method = RequestMethod.GET)
	public ModelAndView aparecerTelaPaciente() {
		return new ModelAndView("TelaPaciente");
	}

	@RequestMapping(value = "/cadastrarPaciente", method = RequestMethod.POST)
	public @ResponseBody ResultadoServico addUser(@RequestBody Paciente paciente) {
		String mensagem = null;
		long codigo = 0;
		
		if(paciente != null) {
			try {
				
				bancoDadosService.adicionarUsuario(paciente);
				bancoDadosService.sincronizarBancoDados();
			}catch (Exception e) {
				System.out.println();
				System.out.println(e);
				mensagem = "Erro ao inserir medico ao paciente";
			}
		} else {
			mensagem = "Não foi encontrado uma instancia do objeto";
		}

		resultadoServico.setMensagem(mensagem);
		resultadoServico.setCodigo(codigo);
		resultadoServico.setObjeto(paciente.getId());

		return resultadoServico;
	}

	@RequestMapping(value = "/inserirMedicoAoPaciente", method = RequestMethod.PUT)
	public @ResponseBody ResultadoServico inserirMedicoParaPaciente(@RequestBody Paciente paciente) {
		String mensagem = null;
		long codigo = 0;

		if(paciente != null) {
			try {
				if(context.getAttribute("dadosCadastradosPessoa") instanceof Nutricionista) {
					Nutricionista dadosCastradoPessoa = (Nutricionista) context.getAttribute("dadosCadastradosPessoa");
					if(dadosCastradoPessoa != null) {
						paciente.setNutricionista(dadosCastradoPessoa);
						bancoDadosService.atualizarCadastroUsuario(paciente);
					} else {
						mensagem = "Erro Sistema";
					}
				}
			}catch (Exception e) {
				System.out.println();
				System.out.println(e);
				mensagem = "Erro ao inserir medico ao paciente";
			}
		} else {
			mensagem = "Não foi encontrado uma instancia do objeto";
		}

		resultadoServico.setMensagem(mensagem);
		resultadoServico.setCodigo(codigo);
		resultadoServico.setObjeto(paciente.getId());

		return resultadoServico;
	}
}
