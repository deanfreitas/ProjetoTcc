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

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import br.com.projetotcc.entidade.pessoa.Nutricionista;
import br.com.projetotcc.entidade.pessoa.informacao.Login;
import br.com.projetotcc.interfaces.InterfaceEntidade;

@Repository
public class BancoDados {

    private static final Logger LOGGER = LoggerFactory.getLogger(BancoDados.class);

    @PersistenceContext
    private EntityManager entityManager;

    private CriteriaQuery<InterfaceEntidade> createCriteriaQuery(InterfaceEntidade interfaceEntidade) {
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<InterfaceEntidade> createQuery = (CriteriaQuery<InterfaceEntidade>) criteriaBuilder.createQuery(interfaceEntidade.getClass());
        Root<InterfaceEntidade> rootEntry = (Root<InterfaceEntidade>) createQuery.from(interfaceEntidade.getClass());
        createQuery.select(rootEntry);

        return createQuery;
    }

    List<InterfaceEntidade> listaInformacoesTabela(InterfaceEntidade interfaceEntidade) {
        TypedQuery<InterfaceEntidade> typedQuery = entityManager.createQuery(createCriteriaQuery(interfaceEntidade));
        return typedQuery.getResultList();
    }

    <T> void adiciona(T aClass) {
        entityManager.persist(aClass);
    }

    void remove(InterfaceEntidade interfaceEntidade, Long id) {
        InterfaceEntidade removerLinhaTabela = buscaPorId(interfaceEntidade, id);

        if (removerLinhaTabela != null) {
            entityManager.remove(removerLinhaTabela);
        }
    }

    void remove(InterfaceEntidade interfaceEntidade) {
        InterfaceEntidade removerLinhaTabela = buscaPorId(interfaceEntidade, interfaceEntidade.getId());

        if (removerLinhaTabela != null) {
            entityManager.remove(removerLinhaTabela);
        }
    }

    <T> void altera(T aClass) {
        entityManager.merge(aClass);
    }

    InterfaceEntidade buscaPorId(InterfaceEntidade interfaceEntidade, Long id) {
        return entityManager.find(interfaceEntidade.getClass(), id);
    }

    InterfaceEntidade buscaPorAlgumaInformacao(InterfaceEntidade interfaceEntidade, String campo, String informacaoUsuario) {
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<InterfaceEntidade> createQuery = (CriteriaQuery<InterfaceEntidade>) criteriaBuilder.createQuery(interfaceEntidade.getClass());
        Root<InterfaceEntidade> rootEntry = (Root<InterfaceEntidade>) createQuery.from(interfaceEntidade.getClass());
        createQuery.select(rootEntry);
        ParameterExpression<String> parameterExpression = criteriaBuilder.parameter(String.class);

        createQuery.where(criteriaBuilder.equal(rootEntry.get(campo), parameterExpression));

        TypedQuery<InterfaceEntidade> typedQuery = entityManager.createQuery(createQuery);
        typedQuery.setParameter(parameterExpression, informacaoUsuario);

        try {
            return typedQuery.getSingleResult();
        } catch (NoResultException e) {
            LOGGER.error(e.getMessage(), e);
            return null;
        }
    }

    void sincronizarBancoDados() {
        entityManager.flush();
    }
}
