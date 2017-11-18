package br.com.projetotcc.cadastro;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.factory.FactoryUser;
import br.com.projetotcc.interfaces.InterfacePessoa;
import br.com.projetotcc.mensagem.ResultadoServico;

import javax.servlet.ServletContext;
import java.util.ArrayList;
import java.util.List;

public class Obter extends Http {

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;
    private String mensagem = null;
    private long codigo = 0;

    public Obter(BancoDadosService bancoDadosService, ResultadoServico resultadoServico, ServletContext context) {
        super(resultadoServico);
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
        this.context = context;
    }

    public ResultadoServico obterCadastro(Long id, String tipoPessoa) {
        FactoryUser factoryUser = new FactoryUser();
        InterfacePessoa interfacePessoa = factoryUser.instanciarUsuario(tipoPessoa);

        if (interfacePessoa != null) {
            try {
                mensagem = tipoPessoa;
                interfacePessoa = (InterfacePessoa) bancoDadosService.encontrarInformacaoPorId(interfacePessoa, id);
            } catch (Exception e) {
                mensagem = "Erro no sistema";
                codigo = 2;
            }
        } else {
            mensagem = "Não foi encontrado Nenhum tipo de pessoa";
            codigo = 1;
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);
        resultadoServico.setObjeto(interfacePessoa);

        return resultadoServico;
    }

    public ResultadoServico pegarPacientesNutricionista() {
        List<Object> listaObjetos = new ArrayList<>();

        if (context.getAttribute("dadosCadastradosPessoa") instanceof Nutricionista) {
            Nutricionista dadosCastradoPessoa = (Nutricionista) context.getAttribute("dadosCadastradosPessoa");
            Nutricionista nutricionista = (Nutricionista) bancoDadosService.encontrarInformacaoPorId(dadosCastradoPessoa, dadosCastradoPessoa.getId());
            if (nutricionista != null) {
                listaObjetos.addAll(nutricionista.getPacientes());
            } else {
                codigo = 2;
                mensagem = "Erro no sistema";
            }
        } else {
            codigo = 2;
            mensagem = "Erro no sistema";
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);
        resultadoServico.setListaObjetos(listaObjetos);

        return resultadoServico;
    }
}
