package br.com.projetotcc.interfaces;

import java.util.Set;

import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.entidade.pessoa.informacao.Role;

public interface InterfacePessoa extends InterfaceEntidade {
	Login getLogin();
	void setLogin(Login login);
	
	void setRoles(Set<Role> roles);
	Set<Role> getRoles();
}
