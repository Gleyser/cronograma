package org.sgl.orc.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.sgl.orc.models.Curso;
import org.sgl.orc.models.Laboratorio;
import org.sgl.orc.models.UnidadeCurricular;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class CursoDAO {
	
	@PersistenceContext
	private EntityManager manager;
	
	public void gravar(Curso curso){
		manager.persist(curso);
    }
	
	public List<Curso> recuperarCurso(){
	    return manager.createQuery("select p from Curso p", Curso.class).getResultList();
	}

}
