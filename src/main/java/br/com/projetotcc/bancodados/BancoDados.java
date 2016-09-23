package br.com.projetotcc.bancodados;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import br.com.projetotcc.entidades.InterfaceEntidade;
import br.com.projetotcc.entidades.Login;

@Repository
public class BancoDados {

	@PersistenceContext
	private EntityManager entityManager;

	@SuppressWarnings("unchecked")
	public List<InterfaceEntidade> listaInformacoesTabela(InterfaceEntidade interfaceEntidade) {
		CriteriaBuilder cb = entityManager.getCriteriaBuilder();
		CriteriaQuery<InterfaceEntidade> createQuery = (CriteriaQuery<InterfaceEntidade>) cb.createQuery(interfaceEntidade.getClass());
        Root<InterfaceEntidade> rootEntry = (Root<InterfaceEntidade>) createQuery.from(interfaceEntidade.getClass());
        CriteriaQuery<InterfaceEntidade> all = createQuery.select(rootEntry);
        TypedQuery<InterfaceEntidade> allQuery = entityManager.createQuery(all);
        return allQuery.getResultList();
	}
	
	public void adiciona(InterfaceEntidade entidadeGererica) {
		entityManager.persist(entidadeGererica);
	}
	
	public void remove(InterfaceEntidade interfaceEntidade, Long id) {
		InterfaceEntidade removerLinhaTabela = buscaPorId(interfaceEntidade, id);
		
		if (removerLinhaTabela != null) {
			entityManager.remove(removerLinhaTabela);
		}
	}
	
	public void remove(InterfaceEntidade interfaceEntidade) {
		InterfaceEntidade removerLinhaTabela = buscaPorId(interfaceEntidade, interfaceEntidade.getId());
		
		if (removerLinhaTabela != null) {
			entityManager.remove(removerLinhaTabela);
		}
	}

	public void altera(InterfaceEntidade interfaceEntidade) {
		entityManager.merge(interfaceEntidade);
	}
	
	public InterfaceEntidade buscaPorId(InterfaceEntidade interfaceEntidade, Long id) {
		return entityManager.find(interfaceEntidade.getClass(), id);
	}
	
	public List<InterfaceEntidade> buscaPorAlgumaInformacao(String informacaoUsuario, InterfaceEntidade interfaceEntidade) {
		List<InterfaceEntidade> listaInterfaceEntidades = new ArrayList<InterfaceEntidade>();
		Session session = (Session) entityManager.getDelegate();
		Criteria criteria = session.createCriteria(interfaceEntidade.getClass());
		
		if(interfaceEntidade instanceof Login) {
			criteria.add(Restrictions.eq("usuario", informacaoUsuario));
		}
		
		for (Object object : criteria.list()) {
			listaInterfaceEntidades.add((InterfaceEntidade) object);
		}
		
		return listaInterfaceEntidades;
	}

	public void finaliza(InterfaceEntidade interfaceEntidade) {
		InterfaceEntidade entidadeClassMerge = buscaPorId(interfaceEntidade, interfaceEntidade.getId());
		entityManager.merge(entidadeClassMerge);
	}
	
	public void sincronizarBancoDados() {
		entityManager.flush();
	}
}
