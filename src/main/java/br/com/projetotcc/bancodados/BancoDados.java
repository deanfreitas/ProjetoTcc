package br.com.projetotcc.bancodados;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import br.com.projetotcc.entidades.Login;
import br.com.projetotcc.entidades.Pessoa;

@Repository
public class BancoDados {

	@PersistenceContext
	private EntityManager entityManager;

	public List<Login> listaUsuariosCadastros() {
		return entityManager.createQuery("select l from Login l", Login.class).getResultList();
	}
	
	public void adiciona(Login login) {
		entityManager.persist(login);
	}
	
	public void adiciona(Pessoa pessoa) {
		entityManager.persist(pessoa);
	}
	
	public void remove(Login login) {
		Login loginRemover = buscaPorId(login.getId());
		
		if (loginRemover != null) {
			entityManager.remove(loginRemover);
		}
	}

	public void altera(Login login) {
		entityManager.merge(login);
	}
	
	public Login buscaPorId(Long id) {
		return entityManager.find(Login.class, id);
	}
	
	public Login buscaPorNome(String nomeUsuario) {
		Session session = (Session) entityManager.getDelegate();
		Criteria criteria = session.createCriteria(Login.class);
		criteria.add(Restrictions.eq("usuario", nomeUsuario));
		return (Login) criteria.list().get(0);
	}

	public void finaliza(Long id) {
		Login login = buscaPorId(id);
		entityManager.merge(login);
	}
}
