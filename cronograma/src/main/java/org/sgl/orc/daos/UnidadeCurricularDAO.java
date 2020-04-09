package org.sgl.orc.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.sgl.orc.models.Laboratorio;
import org.sgl.orc.models.UnidadeCurricular;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UnidadeCurricularDAO {
	
	@PersistenceContext
    private EntityManager manager;
	
	public void gravar(UnidadeCurricular disciplina){
		manager.persist(disciplina);
    }
	
	public List<UnidadeCurricular> listar(){
	    return manager.createQuery("select p from UnidadeCurricular p", UnidadeCurricular.class).getResultList();
	}
	
	public List<UnidadeCurricular> getUnidadesCurricularesModelo(){
		return manager.createQuery("select p from UnidadeCurricular p where p.ehModelo = 1 order by p.nome", UnidadeCurricular.class).getResultList();
	}

	
}
