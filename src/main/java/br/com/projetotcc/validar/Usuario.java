package br.com.projetotcc.validar;

import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.mensagem.ResultadoServico;
import org.springframework.beans.factory.annotation.Autowired;

public class Usuario {

    @Autowired
    private ResultadoServico resultadoServico;

    public ResultadoServico parametrosObrigatoriosAtualizacao(Paciente paciente) {
        String mensagem = null;
        long codigo = 0;

        if (paciente == null) {
            mensagem = "Não foi encontrado uma instancia do objeto";
            codigo = 1;
        } else if (paciente.getIdentificacao().getNome() == null || paciente.getIdentificacao().getNome().equals("")) {
            mensagem = "O campo de Nome precisa ser inserido na identificação";
            codigo = 1;
        } else if (paciente.getIdentificacao().getIdade() == null) {
            mensagem = "O campo de idade precisa ser inserido na identificação";
            codigo = 1;
        } else if (paciente.getIdentificacao().getSexo() == null || paciente.getIdentificacao().getSexo().equals("")) {
            mensagem = "O campo de sexo precisa ser inserido na identificação";
            codigo = 1;
        }

        resultadoServico.setMensagem(mensagem);
        resultadoServico.setCodigo(codigo);

        return resultadoServico;
    }
}
