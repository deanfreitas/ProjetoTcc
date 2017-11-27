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
import org.springframework.transaction.annotation.Transactional;

import br.com.projetotcc.bancodados.BancoDadosService;
import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.entidade.pessoa.informacao.Role;
import br.com.projetotcc.interfaces.InterfacePessoa;

public class AutenticacaoLogin implements UserDetailsService {

    private BancoDadosService bancoDadosService;

    @Autowired
    public AutenticacaoLogin(BancoDadosService bancoDadosService) {
        this.bancoDadosService = bancoDadosService;
    }

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String nomeUsuario) {
        Login login = new Login();
        login = (Login) bancoDadosService.encontrarInformacao(login, "usuario", nomeUsuario);
        InterfacePessoa interfacePessoa = null;

        if (login.getNutricionista() != null) {
            interfacePessoa = login.getNutricionista();
        } else if (login.getPaciente() != null) {
            interfacePessoa = login.getPaciente();
        }

        List<GrantedAuthority> autoridades = construirAutoridade(interfacePessoa);
        return construirUsuarioAutenticacao(interfacePessoa, autoridades);
    }

    private UserDetails construirUsuarioAutenticacao(InterfacePessoa interfacePessoa, List<GrantedAuthority> autoridades) {
        return new User(interfacePessoa.getLogin().getUsuario(), interfacePessoa.getLogin().getSenha(), true, true, true, true, autoridades);
    }

    private List<GrantedAuthority> construirAutoridade(InterfacePessoa interfacePessoa) {
        Set<GrantedAuthority> setAutoridades = new HashSet<>();

        for (Role role : interfacePessoa.getRoles()) {
            setAutoridades.add(new SimpleGrantedAuthority(role.getNameRole()));
        }

        return new ArrayList<>(setAutoridades);
    }
}
