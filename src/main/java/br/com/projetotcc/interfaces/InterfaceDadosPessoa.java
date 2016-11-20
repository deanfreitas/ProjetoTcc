package br.com.projetotcc.interfaces;

import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.Paciente;

public interface InterfaceDadosPessoa extends InterfaceEntidade {

	Paciente getPaciente();
	void setPaciente(Paciente paciente);

	Nutricionista getNutricionista();
	void setNutricionista(Nutricionista nutricionista);
}
