package br.com.projetotcc.controller;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.paciente.informacao.Identificacao;
import br.com.projetotcc.mensagem.ResultadoServico;
import br.com.projetotcc.utils.BancoDadosUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Validar {

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;

    @Autowired
    public Validar(BancoDadosService bancoDadosService, ResultadoServico resultadoServico) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
    }

    @RequestMapping(value = "validar/checkEmail", method = RequestMethod.POST)
    public @ResponseBody
    ResultadoServico validateEmail(@RequestBody Identificacao identificacao) {
        BancoDadosUtils bancoDadosUtils = new BancoDadosUtils(bancoDadosService, resultadoServico);
        resultadoServico = bancoDadosUtils.checkEmail(identificacao);

        return resultadoServico;
    }
}
