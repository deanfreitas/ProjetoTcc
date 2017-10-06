package br.com.projetotcc.utils;

import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.interfaces.InterfacePessoa;
import br.com.projetotcc.mensagem.ResultadoServico;

public class Usuario {

    private ResultadoServico resultadoServico;
    private String mensagem = null;
    private long codigo = 1;

    public Usuario(ResultadoServico resultadoServico) {
        this.resultadoServico = resultadoServico;
    }

    private ResultadoServico validarLogin(InterfacePessoa pessoa) {
        if (pessoa.getLogin().getUsuario() == null || pessoa.getLogin().getUsuario().equals("")) {
            mensagem = "Digite um Email";
        } else if (pessoa.getLogin().getSenha() == null || pessoa.getLogin().getSenha().equals("")) {
            mensagem = "Digite uma senha";
        } else {
            codigo = 0;
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }

    public ResultadoServico parametrosObrigatoriosAtualizacaoPaciente(Paciente paciente) {
        if (paciente == null) {
            mensagem = "N�o foi encontrado uma instancia do objeto";
        } else if (paciente.getIdentificacao().getNome() == null || paciente.getIdentificacao().getNome().equals("")) {
            mensagem = "O campo de Nome precisa ser inserido na identifica��o";
        } else if (paciente.getIdentificacao().getIdade() == null) {
            mensagem = "O campo de idade precisa ser inserido na identifica��o";
        } else if (paciente.getIdentificacao().getSexo() == null || paciente.getIdentificacao().getSexo().equals("")) {
            mensagem = "O campo de sexo precisa ser inserido na identifica��o";
        } else {
            codigo = 0;
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }

    public ResultadoServico parametrosObrigatoriosSalvarNutricionista(Nutricionista nutricionista) {
        if (nutricionista.getNomeCompleto() == null || nutricionista.getNomeCompleto().equals("")) {
            mensagem = "Digite um nome";
        } else {
            resultadoServico = validarLogin(nutricionista);
        }

        resultadoServico.setMensagem(mensagem);

        return resultadoServico;
    }

    public ResultadoServico parametrosObrigatoriosSalvarPaciente(Paciente paciente) {
        if (paciente.getIdentificacao().getNome() == null || paciente.getIdentificacao().getNome().equals("")) {
            mensagem = "Digite um nome";
        } else {
            resultadoServico = validarLogin(paciente);
        }

        resultadoServico.setMensagem(mensagem);

        return resultadoServico;
    }
}