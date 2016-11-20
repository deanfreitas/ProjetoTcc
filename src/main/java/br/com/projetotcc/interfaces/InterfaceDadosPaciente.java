package br.com.projetotcc.interfaces;

import br.com.projetotcc.entidade.pessoa.Paciente;

public interface InterfaceDadosPaciente extends InterfaceEntidade {

	Paciente getPaciente();
	void setPaciente(Paciente paciente);
}
