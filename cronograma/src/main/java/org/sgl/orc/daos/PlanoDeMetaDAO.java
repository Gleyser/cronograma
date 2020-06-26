package org.sgl.orc.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.sgl.orc.models.PlanoDeMeta;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class PlanoDeMetaDAO {
	
	@PersistenceContext
	private EntityManager manager;
	
	public void gravar(PlanoDeMeta plano){
		manager.persist(plano);
    }
	
	public List<PlanoDeMeta> recuperarPlanosDeMeta(){
	    return manager.createQuery("select p from PlanoDeMeta p", PlanoDeMeta.class).getResultList();
	}

}
