package org.sgl.orc.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.sgl.orc.models.Modalidade;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ModalidadeDAO {
	
	@PersistenceContext
	private EntityManager manager;
	
	public List<Modalidade> recuperarModalidadesGratuitas(){
	    return manager.createQuery("select p from Modalidade p where p.tipoDePagamento='GRATUITO' order by p.tipoModalidade", Modalidade.class).getResultList();
	}
	
	public List<Modalidade> recuperarModalidadesPagas(){
	    return manager.createQuery("select p from Modalidade p where p.tipoDePagamento='PAGO' order by p.tipoModalidade", Modalidade.class).getResultList();
	}

	public Modalidade recuperaModalidade(String tipoModalidade, String tipoDePagamento) {
		return manager.createQuery("select p from Modalidade p where p.tipoModalidade='" + tipoModalidade + "' and p.tipoDePagamento='" + tipoDePagamento + "'", Modalidade.class).getSingleResult();
	}
	
	
}
