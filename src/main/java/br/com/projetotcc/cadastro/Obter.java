package br.com.projetotcc.cadastro;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.enums.Code;
import br.com.projetotcc.enums.Context;
import br.com.projetotcc.enums.Pessoa;
import br.com.projetotcc.enums.Response;
import br.com.projetotcc.factory.FactoryUser;
import br.com.projetotcc.interfaces.InterfacePessoa;
import br.com.projetotcc.mensagem.ResultadoServico;
import br.com.projetotcc.utils.Utils;

import javax.servlet.ServletContext;
import java.util.ArrayList;
import java.util.List;

public class Obter extends Http {

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;
    private ServletContext context;
    private String mensagem = null;
    private long codigo = Code.SUCCESS.getTypeCode();

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
                mensagem = Response.ERROR_SYSTEM.getTypeResponse();
                codigo = Code.ERROR_SYSTEM.getTypeCode();
            }
        } else {
            mensagem = "Não foi encontrado Nenhum tipo de pessoa";
            codigo = Code.ERROR.getTypeCode();
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);
        resultadoServico.setObjeto(interfacePessoa);

        return resultadoServico;
    }

    public ResultadoServico pegarPacientesNutricionista() {
        List<Object> listaObjetos = new ArrayList<>();

        if (Utils.validTypeUser(context, Pessoa.NUTRICIONISTA.getTypePessoa())) {
            Nutricionista dadosCastradoPessoa = (Nutricionista) context.getAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext());
            Nutricionista nutricionista = (Nutricionista) bancoDadosService.encontrarInformacaoPorId(dadosCastradoPessoa, dadosCastradoPessoa.getId());
            if (nutricionista != null) {
                listaObjetos.addAll(nutricionista.getPacientes());
            } else {
                codigo = Code.ERROR_SYSTEM.getTypeCode();
                mensagem = Response.ERROR_SYSTEM.getTypeResponse();
            }
        } else {
            codigo = Code.ERROR_SYSTEM.getTypeCode();
            mensagem = Response.ERROR_SYSTEM.getTypeResponse();
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);
        resultadoServico.setListaObjetos(listaObjetos);

        return resultadoServico;
    }

    public ResultadoServico getAllDiarioAlimentar(Long id) {
        List<Object> listaObjetos = new ArrayList<>();

        if (Utils.validTypeUser(context, Pessoa.NUTRICIONISTA.getTypePessoa())) {
            Nutricionista nutricionista = (Nutricionista) context.getAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext());
            listaObjetos.addAll(nutricionista.getPacientes().get(id.intValue() - 1).getData());
        } else if (Utils.validTypeUser(context, Pessoa.PACIENTE.getTypePessoa())) {
            Paciente paciente = (Paciente) context.getAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext());
            if (paciente.getId().equals(id)) {
                listaObjetos.addAll(paciente.getData());
            } else {
                codigo = Code.ERROR_SYSTEM.getTypeCode();
                mensagem = Response.ERROR_SYSTEM.getTypeResponse();
            }
        } else {
            codigo = Code.ERROR_SYSTEM.getTypeCode();
            mensagem = Response.ERROR_SYSTEM.getTypeResponse();
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);
        resultadoServico.setListaObjetos(listaObjetos);

        return resultadoServico;
    }
}
