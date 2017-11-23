package br.com.projetotcc.pagina;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.cadastro.Postar;
import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.mensagem.ResultadoServico;
import br.com.projetotcc.seguranca.SegurancaSistema;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;

@Controller
public class TelaLogin {

    private static final String TELA = "TelaLogin";
    private static final String ROTA_TELA = "/telaLogin";

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private SegurancaSistema segurancaSistema;
    private ServletContext context;

    @Autowired
    public TelaLogin(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, SegurancaSistema segurancaSistema, ServletContext context) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.segurancaSistema = segurancaSistema;
        this.context = context;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView aparecerTelaLoginComBarra() {
        return new ModelAndView(TELA);
    }

    @RequestMapping(value = ROTA_TELA, method = RequestMethod.GET)
    public ModelAndView aparecerTelaLogin() {
        return new ModelAndView(TELA);
    }

    @RequestMapping(value = "/sairSistema", method = RequestMethod.GET)
    public ModelAndView sairSistema() {
        return new ModelAndView(TELA);
    }

    @RequestMapping(value = "/entrarTelaPrincipal", method = RequestMethod.POST)
    public @ResponseBody
    ResultadoServico logarUsuario(@RequestBody Login login) {
        Postar postar = new Postar(bancoDadosService, resultadoServico, context);
        resultadoServico = postar.autenticarUsuario(login, segurancaSistema);

        return resultadoServico;
    }
}
