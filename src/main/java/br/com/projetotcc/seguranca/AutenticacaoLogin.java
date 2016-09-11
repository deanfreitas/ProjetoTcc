package br.com.projetotcc.seguranca;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidades.Login;
import br.com.projetotcc.entidades.Permissao;

public class AutenticacaoLogin implements UserDetailsService {
	
	@Autowired
	private BancoDadosService bancoDadosService;
	
	@Override
	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String nomeUsuario) throws UsernameNotFoundException {
		Permissao permissao = new Permissao();
		permissao.setNomeUsuario("administrador");
		permissao.setPermissoesUsuario("ROLE_administrador");
		
		Login login = bancoDadosService.encontrarUsuario(nomeUsuario);
		List<Permissao> permissoes = new ArrayList<Permissao>();
		permissoes.add(permissao);
		List<GrantedAuthority> autoridades = construirAutoridade(permissoes);
		
		return construirUsuarioAutenticacao(login, autoridades);
	}
	
	private UserDetails construirUsuarioAutenticacao(Login login, List<GrantedAuthority> autoridades) {
        return new User(login.getUsuario(), login.getSenha(), true, true, true, true, autoridades);
    }
	
	private List<GrantedAuthority> construirAutoridade(Set<Permissao> permissoes) {
		Set<GrantedAuthority> setAutoridades = new HashSet<GrantedAuthority>();

		for(Permissao permissao : permissoes){
			setAutoridades.add(new SimpleGrantedAuthority(permissao.getPermissoesUsuario()));
		}

		List<GrantedAuthority> resultado = new ArrayList<GrantedAuthority>(setAutoridades);

		return resultado;
	}

	private List<GrantedAuthority> construirAutoridade(List<Permissao> permissoes) {
		Set<GrantedAuthority> setAutoridades = new HashSet<GrantedAuthority>();

		for(Permissao permissao : permissoes){
			setAutoridades.add(new SimpleGrantedAuthority(permissao.getPermissoesUsuario()));
		}

		List<GrantedAuthority> resultado = new ArrayList<GrantedAuthority>(setAutoridades);

		return resultado;
	}
}
