package br.com.projetotcc.factory;

import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.interfaces.InterfacePessoa;

public class FactoryUser {

    public InterfacePessoa instanciarUsuario(String tipoPessoa) {
        InterfacePessoa interfacePessoa = null;

        if (tipoPessoa.equals("nutricionista")) {
            interfacePessoa = new Nutricionista();
        } else if (tipoPessoa.equals("paciente")) {
            interfacePessoa = new Paciente();
        }

        return interfacePessoa;
    }
}
