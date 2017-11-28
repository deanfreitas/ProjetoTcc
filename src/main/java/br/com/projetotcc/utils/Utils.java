package br.com.projetotcc.utils;

import br.com.projetotcc.entidade.paciente.alimentacao.Data;
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
        calendar.add(Calendar.DAY_OF_YEAR, 1);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);

        return new Date(calendar.getTimeInMillis());
    }

    public static Data addFeedData(Data data, Paciente paciente) {
        for (Data dataPaciente : paciente.getData()) {
            if (data.getdData() != null && data.getdData().equals(dataPaciente.getdData())) {
                if (data.getAlmoco() == null && dataPaciente.getAlmoco() != null) {
                    data.setAlmoco(dataPaciente.getAlmoco());
                }
                if (data.getCeia() == null && dataPaciente.getCeia() != null) {
                    data.setCeia(dataPaciente.getCeia());
                }
                if (data.getColacao() == null && dataPaciente.getColacao() != null) {
                    data.setColacao(dataPaciente.getColacao());
                }
                if (data.getDesjejum() == null && dataPaciente.getDesjejum() != null) {
                    data.setDesjejum(dataPaciente.getDesjejum());
                }
                if (data.getJantar() == null && dataPaciente.getJantar() != null) {
                    data.setJantar(dataPaciente.getJantar());
                }
                if (data.getLanche() == null && dataPaciente.getLanche() != null) {
                    data.setLanche(dataPaciente.getLanche());
                }
                if (data.getForaHora() == null && dataPaciente.getForaHora() != null) {
                    data.setForaHora(dataPaciente.getForaHora());
                }
                break;
            }
        }

        return data;
    }

    private Utils() {
    }
}
