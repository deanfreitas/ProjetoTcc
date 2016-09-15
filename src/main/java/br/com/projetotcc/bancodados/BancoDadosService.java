package br.com.projetotcc.bancodados;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import br.com.projetotcc.entidades.InterfaceEntidade;

@Component
public class BancoDadosService {

	@Autowired
    private BancoDados bancoDados;
	
	@Transactional
    public void adicionarUsuario(InterfaceEntidade entidadeGererica) {
        bancoDados.adiciona(entidadeGererica);
    }
	
	@Transactional
	public List<InterfaceEntidade> encontrarUsuario(String nomeUsuario, InterfaceEntidade interfaceEntidade) {
		return bancoDados.buscaPorNome(nomeUsuario, interfaceEntidade);
	}
	
	@Transactional
	public void encontrarId(InterfaceEntidade interfaceEntidade, Long id) {
		bancoDados.buscaPorId(interfaceEntidade, id);
	}
	
	@Transactional(readOnly = true)
    public List<InterfaceEntidade> listaUsuariosCadastros(InterfaceEntidade interfaceEntidade) {
        return bancoDados.listaUsuariosCadastros(interfaceEntidade);
    }
}
