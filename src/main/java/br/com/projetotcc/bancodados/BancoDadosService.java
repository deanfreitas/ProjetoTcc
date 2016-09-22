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
	
	@Transactional(readOnly = true)
	public List<InterfaceEntidade> encontrarInformacao(String nomeUsuario, InterfaceEntidade interfaceEntidade) {
		return bancoDados.buscaPorAlgumaInformacao(nomeUsuario, interfaceEntidade);
	}
	
	@Transactional(readOnly = true)
	public void encontrarId(InterfaceEntidade interfaceEntidade, Long id) {
		bancoDados.buscaPorId(interfaceEntidade, id);
	}
	
	@Transactional(readOnly = true)
    public List<InterfaceEntidade> listaInformacoesTabela(InterfaceEntidade interfaceEntidade) {
        return bancoDados.listaInformacoesTabela(interfaceEntidade);
    }
	
	@Transactional
	public void pegarIdUsuario() {
		bancoDados.pegarIdUsuario();
	}
	
	@Transactional
	public void atualizarCadastroUsuario(InterfaceEntidade interfaceEntidade) {
		bancoDados.altera(interfaceEntidade);
	}
	
	@Transactional
	public void removerCadastroUsuario(InterfaceEntidade interfaceEntidade) {
		bancoDados.remove(interfaceEntidade);
	}
	
	@Transactional
	public void removerCadastroUsuario(InterfaceEntidade interfaceEntidade, Long id) {
		bancoDados.remove(interfaceEntidade, id);
	}
}
