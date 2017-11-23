package br.com.projetotcc.factory;

import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;
import br.com.projetotcc.enums.Pessoa;
import br.com.projetotcc.interfaces.InterfacePessoa;

public class FactoryUser {

    public InterfacePessoa instanciarUsuario(String tipoPessoa) {
        InterfacePessoa interfacePessoa = null;

        if (tipoPessoa.equals(Pessoa.NUTRICIONISTA.getTypePessoa())) {
            interfacePessoa = new Nutricionista();
        } else if (tipoPessoa.equals(Pessoa.PACIENTE.getTypePessoa())) {
            interfacePessoa = new Paciente();
        }

        return interfacePessoa;
    }
}
