package br.com.projetotcc.utils;

import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.enums.Code;
import br.com.projetotcc.enums.Context;
import br.com.projetotcc.enums.Pessoa;
import br.com.projetotcc.mensagem.ResultadoServico;

import javax.servlet.ServletContext;

public class Usuario {

    private ResultadoServico resultadoServico;
    private String mensagem = null;
    private long codigo = Code.ERROR.getTypeCode();

    public Usuario(ResultadoServico resultadoServico) {
        this.resultadoServico = resultadoServico;
    }

    public ResultadoServico validarLogin(Login login) {
        if (login.getUsuario() == null || login.getUsuario().equals("")) {
            mensagem = "Digite um login";
        } else if (login.getSenha() == null || login.getSenha().equals("")) {
            mensagem = "Digite uma senha";
        } else {
            codigo = Code.SUCCESS.getTypeCode();
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
            codigo = Code.SUCCESS.getTypeCode();
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

    public ResultadoServico checkPacientePertenceNutricionista(Paciente paciente, Nutricionista nutricionista) {
        if (!nutricionista.getCrn().equals(paciente.getNutricionista().getCrn())) {
            mensagem = "Esse Crn " + paciente.getNutricionista().getCrn() + " não esta cadastrado no sistema";
        }

        resultadoServico.setCodigo(codigo);
        resultadoServico.setMensagem(mensagem);

        return resultadoServico;
    }

    public ResultadoServico checkIdentificacaoPaciente(Paciente paciente, Paciente pacienteNutricionista) {
        if (!pacienteNutricionista.getIdentificacao().getNome().equals(paciente.getIdentificacao().getNome())) {
            mensagem = "Você não é paciente desse medico com esse Crn: " + paciente.getNutricionista().getCrn();
        } else if (!pacienteNutricionista.getIdentificacao().getSexo().equals(paciente.getIdentificacao().getSexo())) {
            mensagem = "O paciente cadastrado para esse medico esta errado";
        } else {
            codigo = Code.SUCCESS.getTypeCode();
        }

        return resultadoServico;
    }
}
