package br.com.projetotcc.interfaces;

import br.com.projetotcc.entidade.paciente.alimentacao.Data;

public interface InterfaceAlimentaresPaciente extends InterfaceEntidade {
	
	String getHorario();
	void setHorario(String horario);
	
	String getLocal();
	void setLocal(String local);
	
	String getHumor();
	void setHumor(String humor);
	
	String getAlimentos();
	void setAlimentos(String alimentos);
	
	String getQuantidade();
	void setQuantidade(String quantidade);

	Data getData();
	void setData(Data data);
}
