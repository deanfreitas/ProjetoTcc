package br.com.projetotcc.pagina;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.cadastro.Deletar;
import br.com.projetotcc.cadastro.Obter;
import br.com.projetotcc.cadastro.Postar;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.mensagem.ResultadoServico;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import java.util.List;

@Controller
public class TelaPaciente {

    private static final String tela = "TelaPaciente";
    private static final String rotaTela = "/telaPaciente";

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;

    @Autowired
    public TelaPaciente(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    @RequestMapping(value = rotaTela, method = RequestMethod.GET)
    public ModelAndView aparecerTelaPaciente() {
        return new ModelAndView(tela);
    }

    @RequestMapping(value = "/cadastrarPaciente", method = RequestMethod.POST)
    public @ResponseBody
    ResultadoServico addUser(@RequestBody Paciente paciente) {
        Postar postar = new Postar(bancoDadosService, resultadoServico, context);
        resultadoServico = postar.adicionarPacienteNutricionista(paciente);

        return resultadoServico;
    }

    @RequestMapping(value = "/getPacientesNutricionista", method = RequestMethod.GET)
    public @ResponseBody
    ResultadoServico getPacientesNutricionista() {
        Obter obter = new Obter(bancoDadosService, resultadoServico, context);
        resultadoServico = obter.pegarPacientesNutricionista();

        return resultadoServico;
    }

    @RequestMapping(value = "/deletarPacientes", method = RequestMethod.DELETE)
    public @ResponseBody
    ResultadoServico deletarPacientes(@RequestBody List<Paciente> pacientes) {
        Deletar deletar = new Deletar(bancoDadosService, resultadoServico);
        resultadoServico = deletar.deletarPacientes(pacientes);

        return resultadoServico;
    }
}
