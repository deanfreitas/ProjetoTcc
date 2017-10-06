package br.com.projetotcc.validar;

import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.mensagem.ResultadoServico;

public class Usuario {

    private ResultadoServico resultadoServico;
    private String mensagem = null;
    private long codigo = 1;

    public Usuario(ResultadoServico resultadoServico) {
        this.resultadoServico = resultadoServico;
    }

    public ResultadoServico parametrosObrigatoriosPaciente(Paciente paciente) {
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

    public ResultadoServico parametrosObrigatoriosNutricionista(Nutricionista nutricionista) {
        if (nutricionista.getNomeCompleto() == null || nutricionista.getNomeCompleto().equals("")) {
            mensagem = "Digite um nome";
        } else if (nutricionista.getLogin().getUsuario() == null || nutricionista.getLogin().getUsuario().equals("")) {
            mensagem = "Digite um Email";
        } else if (nutricionista.getLogin().getSenha() == null || nutricionista.getLogin().getSenha().equals("")) {
            mensagem = "Digite uma senha";
        } else {
            codigo = 0;
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }
}
