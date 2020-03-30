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

	public void gravar(Usuario usuario) {
		manager.persist(usuario);
	}

	public List<Usuario> listar() {
		return manager.createQuery("select p from Usuario p", Usuario.class).getResultList();
		}

	// Retorna os dados do usuario salvo, se o email e senha do usuario fornecido for encontrado
	public Usuario retornaUsuarioSalvo(Usuario usuarioFornecido){
		Usuario retorno = null;
	    for (Usuario usuarioSalvo: listar()) {
	    	if (usuarioSalvo.getEmail().equals(usuarioFornecido.getEmail())) {
	    		if (usuarioSalvo.getSenha().equals(usuarioFornecido.getSenha())) {
	    			retorno = usuarioSalvo;
	    			return retorno;
	    		}
	    	}
	    }
	    return retorno;
	}
	
	

}
