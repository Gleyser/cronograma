package org.sgl.orc.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.sgl.orc.models.Laboratorio;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class LaboratorioDAO {
	
	@PersistenceContext
    private EntityManager manager;
	
	public void gravar(Laboratorio laboratorio){
		manager.persist(laboratorio);
    }
	
	public List<Laboratorio> listar(){
	    return manager.createQuery("select p from Laboratorio p", Laboratorio.class).getResultList();
	}

}
