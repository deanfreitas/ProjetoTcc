package br.com.projetotcc.bancodados;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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

	public List<InterfaceEntidade> listaUsuariosCadastros(InterfaceEntidade interfaceEntidade) {
		if(interfaceEntidade instanceof Login) {
			return entityManager.createQuery("select l from Login l", InterfaceEntidade.class).getResultList();
		}
		return null;
	}
	
	public void adiciona(InterfaceEntidade entidadeGererica) {
		entityManager.persist(entidadeGererica);
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
	public List<InterfaceEntidade> buscaPorNome(String nomeUsuario, InterfaceEntidade interfaceEntidade) {
		Session session = (Session) entityManager.getDelegate();
		Criteria criteria = session.createCriteria(interfaceEntidade.getClass());
		
		if(interfaceEntidade instanceof Login) {
			criteria.add(Restrictions.eq("usuario", nomeUsuario));
		}
		
		List<InterfaceEntidade> listaInterfaceEntidades = criteria.list();
		return listaInterfaceEntidades;
	}

	public void finaliza(InterfaceEntidade interfaceEntidade) {
		InterfaceEntidade entidadeClassMerge = buscaPorId(interfaceEntidade, interfaceEntidade.getId());
		entityManager.merge(entidadeClassMerge);
	}
}
