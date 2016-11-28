package br.com.projetotcc.pagina;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.mensagem.ResultadoServico;

@Controller
public class TelaResultados {

	@Autowired
	private BancoDadosService bancoDadosService;
	
	@Autowired
	private ResultadoServico resultadoServico;
	
	@Autowired
    private ServletContext context;
	
	@RequestMapping(value = "/telaResultados/{idUsuario}", method = RequestMethod.GET)
	public ModelAndView aparecerTelaResultados() {
		return new ModelAndView("TelaResultados");
	}
	
	@RequestMapping(value = "/getResultadosPaciente/{idUsuario}", method = RequestMethod.GET)
	public @ResponseBody ResultadoServico getResultadosPaciente(@PathVariable(value = "idUsuario") Long id) {
		String mensagem = null;
		long codigo = 0;
		Paciente paciente = new Paciente();
		
			try {
				paciente = (Paciente) bancoDadosService.encontrarInformacaoPorId(paciente, id);
			}catch (Exception e) {
				codigo = 1;
				mensagem = "Erro no sistema";
			}
	
		resultadoServico.setMensagem(mensagem);
		resultadoServico.setCodigo(codigo);
		resultadoServico.setObjeto(paciente);
		resultadoServico.setListaObjetos(null);

		return resultadoServico;
	}
}
