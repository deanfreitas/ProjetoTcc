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
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.mensagem.ResultadoServico;

@Controller
public class TelaAnamnese {

	@Autowired
	private BancoDadosService bancoDadosService;
	
	@Autowired
	private ResultadoServico resultadoServico;
	
	@Autowired
    private ServletContext context;
	
	@RequestMapping(value = "/telaAnamnese/{idPaciente}", method = RequestMethod.GET)
	public ModelAndView cadastrarUsuario() {
		return new ModelAndView("TelaAnamnese");
	}
	
	@RequestMapping(value = "/cadastrarInformacoesPaciente", method = RequestMethod.PUT)
	public @ResponseBody ResultadoServico addIdentificacaoPaciente(@RequestBody Paciente paciente) {
		String mensagem = null;
		long codigo = 0;

		if(paciente != null) {
			try {
				bancoDadosService.atualizarCadastroUsuario(paciente);
				mensagem = "Anamnese Cadastrada com sucesso";
			}catch (Exception e) {
				System.out.println();
				System.out.println(e);
				mensagem = "Erro ao fazer o cadastro das informações do paciente";
				codigo = 1;
			}
		} else {
			mensagem = "Não foi encontrado uma instancia do objeto";
			codigo = 1;
		}

		resultadoServico.setMensagem(mensagem);
		resultadoServico.setCodigo(codigo);
		resultadoServico.setObjeto(null);

		return resultadoServico;
	}
}
