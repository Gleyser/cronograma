package org.sgl.orc.daos;

import java.util.ArrayList;
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
	
	public List<Curso> recuperarCursos(){
	    return manager.createQuery("select p from Curso p", Curso.class).getResultList();
	}
	
	public void transformaCursosModelo(){
	    for (Curso c : manager.createQuery("select p from Curso p", Curso.class).getResultList()) {
	    	c.transformeEmModelo();
	    	manager.merge(c);
	    }
	}

	public List<Curso> getCursosModelos() {
		return manager.createQuery("select p from Curso p where p.ehModelo = 1", Curso.class).getResultList();
	}

	public Curso getCurso(Long id) {
		return manager.createQuery("select p from Curso p where p.id =" +  id.toString(), Curso.class).getSingleResult();
	}	
	
	public void atualizaCurso(Curso curso) {
		manager.merge(curso);
	}

	public List<UnidadeCurricular> getUCDoCurso(int id) {
		List<UnidadeCurricular> retorno = new ArrayList<UnidadeCurricular>();
		Curso curso = manager.find(Curso.class, id);
		if (curso.getDisciplinas() != null) {
			for (UnidadeCurricular uc : curso.getDisciplinas()) {
				retorno.add(uc);
			}
		}		
		return retorno;
	}	

}
