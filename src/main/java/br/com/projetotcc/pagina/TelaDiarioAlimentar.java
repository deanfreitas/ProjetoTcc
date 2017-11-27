package br.com.projetotcc.pagina;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.cadastro.Atualizar;
import br.com.projetotcc.cadastro.Obter;
import br.com.projetotcc.cadastro.Postar;
import br.com.projetotcc.entidade.paciente.alimentacao.Data;
import br.com.projetotcc.mensagem.ResultadoServico;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import java.sql.Date;

@Controller
public class TelaDiarioAlimentar {

    private static final String TELA = "TelaDiarioAlimentar";
    private static final String ROTA_TELA = "/telaDiarioAlimentar";

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;

    @Autowired
    public TelaDiarioAlimentar(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    @RequestMapping(value = ROTA_TELA + "/{tipoPagina}/{idPaciente}/{data}", method = RequestMethod.GET)
    public ModelAndView aparecerTelaDiarioAlimentarComData() {
        return new ModelAndView(TELA);
    }

    @RequestMapping(value = "/getDiarioAlimentar/{idPaciente}/{dataDiarioAlimentar}", method = RequestMethod.GET)
    public @ResponseBody
    ResultadoServico getDiarioAlimentar(@PathVariable(value = "idPaciente") Long idPaciente, @PathVariable(value = "dataDiarioAlimentar") Date date) {
        Obter obter = new Obter(bancoDadosService, resultadoServico, context);
        resultadoServico = obter.getDiarioAlimentar(idPaciente, date);

        return resultadoServico;
    }

    @RequestMapping(value = "/cadastrarDiarioAlimentar", method = RequestMethod.POST)
    public @ResponseBody
    ResultadoServico cadastrarDiarioAlimentar(@RequestBody Data data) {
        Postar postar = new Postar(bancoDadosService, resultadoServico, context);
        resultadoServico = postar.cadastrarDiarioAlimentar(data);

        return resultadoServico;
    }

    @RequestMapping(value = "/atualizarDiarioAlimentar", method = RequestMethod.PUT)
    public @ResponseBody
    ResultadoServico atualizarDiarioAlimentar(@RequestBody Data data) {
        Atualizar atualizar = new Atualizar(bancoDadosService, resultadoServico, context);
        resultadoServico = atualizar.atualizarDiarioAlimentar(data);

        return resultadoServico;
    }
}
