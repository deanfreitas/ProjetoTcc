package br.com.projetotcc.bancodados;

import java.util.List;

import br.com.projetotcc.entidade.paciente.alimentacao.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import br.com.projetotcc.interfaces.InterfaceEntidade;

@Component
public class BancoDadosService {

    private BancoDados bancoDados;

    @Autowired
    public BancoDadosService(BancoDados bancoDados) {
        this.bancoDados = bancoDados;
    }

    @Transactional
    public <T> void adicionarCadastroBancoDados(T aClass) {
        bancoDados.adiciona(aClass);
    }

    @Transactional(readOnly = true)
    public InterfaceEntidade encontrarInformacao(InterfaceEntidade interfaceEntidade, String campo, String nomeUsuario) {
        return bancoDados.buscaPorAlgumaInformacao(interfaceEntidade, campo, nomeUsuario);
}

    @Transactional(readOnly = true)
    public InterfaceEntidade encontrarInformacaoPorId(InterfaceEntidade interfaceEntidade, Long id) {
        return bancoDados.buscaPorId(interfaceEntidade, id);
    }

    @Transactional(readOnly = true)
    public List<InterfaceEntidade> listaInformacoesTabela(InterfaceEntidade interfaceEntidade) {
        return bancoDados.listaInformacoesTabela(interfaceEntidade);
    }

    @Transactional
    public void sincronizarBancoDados() {
        bancoDados.sincronizarBancoDados();
    }

    @Transactional
    public <T> void atualizarCadastroBancoDados(T aClass) {
        bancoDados.altera(aClass);
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
