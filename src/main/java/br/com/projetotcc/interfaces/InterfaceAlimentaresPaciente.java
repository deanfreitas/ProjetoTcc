package br.com.projetotcc.interfaces;

public interface InterfaceAlimentaresPaciente extends InterfaceDadosPaciente {
	
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
}
