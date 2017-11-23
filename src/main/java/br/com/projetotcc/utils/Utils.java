package br.com.projetotcc.utils;

import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.enums.Context;
import br.com.projetotcc.enums.Pessoa;

import javax.servlet.ServletContext;

public class Utils {
    public static boolean validTypeUser(ServletContext context, String typeUser) {
        boolean trueUser = false;

        if (typeUser.equalsIgnoreCase(Pessoa.NUTRICIONISTA.getTypePessoa())) {
            trueUser = context.getAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext()) instanceof Nutricionista;
        } else if (typeUser.equalsIgnoreCase(Pessoa.PACIENTE.getTypePessoa())) {
            trueUser = context.getAttribute(Context.DADOS_CADASTRADOS_PESSOA.getTypeContext()) instanceof Paciente;
        }

        return trueUser;
    }
}
