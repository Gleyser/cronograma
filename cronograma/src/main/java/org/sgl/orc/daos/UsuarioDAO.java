package org.sgl.orc.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.sgl.orc.models.Usuario;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UsuarioDAO {
	
	@PersistenceContext
    private EntityManager manager;
	
	public void gravar(Usuario usuario){
		manager.persist(usuario);
    }
	
	public List<Usuario> listar(){
	    return manager.createQuery("select p from Usuario p", Usuario.class).getResultList();
	}
	
}
