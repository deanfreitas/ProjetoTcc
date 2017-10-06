package br.com.projetotcc.cadastro;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.entidade.pessoa.informacao.Role;
import br.com.projetotcc.mensagem.ResultadoServico;
import br.com.projetotcc.validar.Usuario;

import javax.servlet.ServletContext;

public class Salvar {

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;

    public Salvar(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    public ResultadoServico adicionarNutricionista(Nutricionista nutricionista) {
        Usuario usuario = new Usuario(resultadoServico);
        resultadoServico = usuario.parametrosObrigatoriosNutricionista(nutricionista);

        if (resultadoServico.getCodigo() != 0) {
            return resultadoServico;
        }

        String mensagem = null;
        long codigo = 0;

        Login loginPessoa = (Login) bancoDadosService.encontrarInformacao(nutricionista.getLogin(), nutricionista.getLogin().getUsuario());
        if (loginPessoa == null) {
            try {
                Role role = new Role("ROLE_nutricionista", nutricionista);
                bancoDadosService.adicionarUsuario(role);
                mensagem = "Usuario Cadastrado com sucesso";
            } catch (Exception e) {
                System.out.println(e);
                mensagem = "Erro ao fazer o cadastro";
                codigo = 1;
            }
        } else {
            mensagem = "Já tem um login Igual a esse";
            codigo = 1;
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }
}
