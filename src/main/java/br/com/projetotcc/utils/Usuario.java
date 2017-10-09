package br.com.projetotcc.utils;

import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.interfaces.InterfacePessoa;
import br.com.projetotcc.mensagem.ResultadoServico;

public class Usuario {

    private ResultadoServico resultadoServico;
    private String mensagem = null;
    private long codigo = 1;

    public Usuario(ResultadoServico resultadoServico) {
        this.resultadoServico = resultadoServico;
    }

    public ResultadoServico validarLogin(Login login) {
        if (login.getUsuario() == null || login.getUsuario().equals("")) {
            mensagem = "Digite um login";
        } else if (login.getSenha() == null || login.getSenha().equals("")) {
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
            mensagem = "Não foi encontrado uma instancia do objeto";
        } else if (paciente.getIdentificacao().getNome() == null || paciente.getIdentificacao().getNome().equals("")) {
            mensagem = "O campo de Nome precisa ser inserido na identificação";
        } else if (paciente.getIdentificacao().getIdade() == null) {
            mensagem = "O campo de idade precisa ser inserido na identificação";
        } else if (paciente.getIdentificacao().getSexo() == null || paciente.getIdentificacao().getSexo().equals("")) {
            mensagem = "O campo de sexo precisa ser inserido na identificação";
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
            resultadoServico = validarLogin(nutricionista.getLogin());
        }

        resultadoServico.setMensagem(mensagem);

        return resultadoServico;
    }

    public ResultadoServico parametrosObrigatoriosSalvarPaciente(Paciente paciente) {
        if (paciente.getIdentificacao().getNome() == null || paciente.getIdentificacao().getNome().equals("")) {
            mensagem = "Digite um nome";
        } else {
            resultadoServico = validarLogin(paciente.getLogin());
        }

        resultadoServico.setMensagem(mensagem);

        return resultadoServico;
    }
}
