package br.com.projetotcc.bancodados;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.ParameterExpression;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import br.com.projetotcc.entidades.InterfaceEntidade;
import br.com.projetotcc.entidades.Login;

@Repository
public class BancoDados {

	@PersistenceContext
	private EntityManager entityManager;

	@SuppressWarnings("unchecked")
	public List<InterfaceEntidade> listaInformacoesTabela(InterfaceEntidade interfaceEntidade) {
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<InterfaceEntidade> createQuery = (CriteriaQuery<InterfaceEntidade>) criteriaBuilder.createQuery(interfaceEntidade.getClass());
        Root<InterfaceEntidade> rootEntry = (Root<InterfaceEntidade>) createQuery.from(interfaceEntidade.getClass());
        createQuery.select(rootEntry);
        TypedQuery<InterfaceEntidade> typedQuery = entityManager.createQuery(createQuery);
        return typedQuery.getResultList();
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
	
	@SuppressWarnings("unchecked")
	public InterfaceEntidade buscaPorAlgumaInformacao(InterfaceEntidade interfaceEntidade, String informacaoUsuario) {
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<InterfaceEntidade> createQuery = (CriteriaQuery<InterfaceEntidade>) criteriaBuilder.createQuery(interfaceEntidade.getClass());
        Root<InterfaceEntidade> rootEntry = (Root<InterfaceEntidade>) createQuery.from(interfaceEntidade.getClass());
        createQuery.select(rootEntry);
        ParameterExpression<String> parameterExpression = criteriaBuilder.parameter(String.class);
        
        if(interfaceEntidade instanceof Login) {
        	createQuery.where(criteriaBuilder.equal(rootEntry.get("usuario"), parameterExpression));
		}
        
        TypedQuery<InterfaceEntidade> typedQuery = entityManager.createQuery(createQuery);
        typedQuery.setParameter(parameterExpression, informacaoUsuario);
        
        try {
        	return typedQuery.getSingleResult();
        } catch (NoResultException e) {
			return null;
		}
	}

	public void finaliza(InterfaceEntidade interfaceEntidade) {
		InterfaceEntidade entidadeClassMerge = buscaPorId(interfaceEntidade, interfaceEntidade.getId());
		entityManager.merge(entidadeClassMerge);
	}
	
	public void sincronizarBancoDados() {
		entityManager.flush();
	}
}
