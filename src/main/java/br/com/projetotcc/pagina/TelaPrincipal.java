package br.com.projetotcc.pagina;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.cadastro.Postar;
import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.mensagem.ResultadoServico;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;

@Controller
public class TelaPrincipal {

    private static final String tela = "TelaPrincipal";
    private static final String rotaTela = "/telaPrincipal";

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;

    @Autowired
    public TelaPrincipal(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    @RequestMapping(value = rotaTela, method = RequestMethod.GET)
    public ModelAndView aparecerTelaPrincipal() {
        return new ModelAndView(tela);
    }

    @RequestMapping(value = "/pegarIdUsuarioLogado", method = RequestMethod.POST)
    public @ResponseBody
    ResultadoServico pegarCadastroUsuario(@RequestBody Login login) {
        Postar postar = new Postar(bancoDadosService, resultadoServico, context);
        resultadoServico = postar.pegarIdUsuarioLogado(login);

        return resultadoServico;
    }
}
