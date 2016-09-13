package br.com.projetotcc.bancodados;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import br.com.projetotcc.entidades.Login;
import br.com.projetotcc.entidades.Pessoa;

@Component
public class BancoDadosService {

	@Autowired
    private BancoDados bancoDados;
	
	@Transactional
    public void adicionarUsuario(Login login) {
        bancoDados.adiciona(login);
    }
	
	@Transactional
    public void adicionarUsuario(Pessoa pessoa) {
        bancoDados.adiciona(pessoa);
    }
	
	@Transactional
	public Login encontrarUsuario(String nomeUsuario) {
		return bancoDados.buscaPorNome(nomeUsuario);
	}
	
	@Transactional
	public void encontrarId(Long id) {
		bancoDados.buscaPorId(id);
	}
	
	@Transactional(readOnly = true)
    public List<Login> listaUsuariosCadastros() {
        return bancoDados.listaUsuariosCadastros();
    }
}
