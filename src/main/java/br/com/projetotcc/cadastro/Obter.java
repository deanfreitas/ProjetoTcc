package br.com.projetotcc.cadastro;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.interfaces.InterfacePessoa;
import br.com.projetotcc.mensagem.ResultadoServico;

public class Obter {

    private BancoDadosService bancoDadosService;
    private ResultadoServico resultadoServico;

    public Obter(BancoDadosService bancoDadosService, ResultadoServico resultadoServico) {
        this.bancoDadosService = bancoDadosService;
        this.resultadoServico = resultadoServico;
    }

    public ResultadoServico obterCadastro(Long id, String tipoPessoa) {
        String mensagem = null;
        long codigo = 0;
        InterfacePessoa interfacePessoa = null;

        if (tipoPessoa.equals("nutricionista")) {
            interfacePessoa = new Nutricionista();
            mensagem = "nutricionista";
        } else if (tipoPessoa.equals("paciente")) {
            interfacePessoa = new Paciente();
            mensagem = "paciente";
        }

        if (mensagem != null) {
            try {
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
        resultadoServico.setObjeto(interfacePessoa);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }
}
