package org.sgl.orc.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.sgl.orc.models.MetaAnual;
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
	    return manager.createQuery("select p from PlanoDeMeta p order by p.ano", PlanoDeMeta.class).getResultList();
	}
	
	public List<PlanoDeMeta> recuperarPlanosDeMetaRascunho() {
		 return manager.createQuery("select p from PlanoDeMeta p where p.estadoDoPlano='Rascunho' order by p.ano", PlanoDeMeta.class).getResultList();
	}

	public PlanoDeMeta recuperaPlanoDeMeta(Long id) {
		return manager.createQuery("select p from PlanoDeMeta p where p.id =" + id.toString(), PlanoDeMeta.class).getSingleResult();		
		
	}
	
	public void atualizaPlano(PlanoDeMeta plano) {
		manager.merge(plano);
	}

	public void gravarMeta(MetaAnual meta) {
		manager.persist(meta);
		
	}

	public MetaAnual recuperaMetaAnualPeloAno(String ano) {
		return manager.createQuery("select p from MetaAnual p where p.ano =" + ano, MetaAnual.class).getSingleResult();
	}

}
