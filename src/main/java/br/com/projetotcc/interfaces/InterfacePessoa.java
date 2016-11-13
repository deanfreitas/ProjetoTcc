package br.com.projetotcc.interfaces;

import java.util.Set;

import br.com.projetotcc.entidades.pessoas.dados.Login;
import br.com.projetotcc.entidades.pessoas.dados.Role;

public interface InterfacePessoa extends InterfaceEntidade {
	Login getLogin();
	void setLogin(Login login);
	
	void setRoles(Set<Role> roles);
	Set<Role> getRoles();
}
