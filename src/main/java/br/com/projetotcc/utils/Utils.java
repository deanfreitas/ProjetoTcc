package br.com.projetotcc.utils;

import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.enums.Context;
import br.com.projetotcc.enums.Pessoa;

import javax.servlet.ServletContext;
import java.sql.Date;
import java.util.Calendar;

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

    public static Date addOneDay(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_YEAR,1);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);

        return new Date(calendar.getTimeInMillis());
    }

    private Utils() {
    }
}
