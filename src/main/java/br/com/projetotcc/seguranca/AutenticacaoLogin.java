package br.com.projetotcc.seguranca;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.transaction.annotation.Transactional;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidades.Login;
import br.com.projetotcc.entidades.Role;

public class AutenticacaoLogin implements UserDetailsService {
	
	@Autowired
	private BancoDadosService bancoDadosService;
	
	@Override
	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String nomeUsuario) throws UsernameNotFoundException {
		Login login = bancoDadosService.encontrarUsuario(nomeUsuario);
		List<GrantedAuthority> autoridades = construirAutoridade(login);
		
		return construirUsuarioAutenticacao(login, autoridades);
	}
	
	private UserDetails construirUsuarioAutenticacao(Login login, List<GrantedAuthority> autoridades) {
        return new User(login.getUsuario(), login.getSenha(), true, true, true, true, autoridades);
    }
	
	private List<GrantedAuthority> construirAutoridade(Login login) {
		Set<GrantedAuthority> setAutoridades = new HashSet<GrantedAuthority>();

		for(Role role : login.getRoles()){
			setAutoridades.add(new SimpleGrantedAuthority(role.getNameRole()));
		}

		List<GrantedAuthority> resultado = new ArrayList<GrantedAuthority>(setAutoridades);

		return resultado;
	}
}
