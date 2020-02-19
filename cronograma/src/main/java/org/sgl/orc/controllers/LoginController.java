package org.sgl.orc.controllers;

import org.sgl.orc.daos.LaboratorioDAO;
import org.sgl.orc.daos.UsuarioDAO;
import org.sgl.orc.models.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("usuarios")
public class LoginController {
	
	@Autowired
    private UsuarioDAO usuarioDao;
	
	@RequestMapping(method=RequestMethod.POST)
	public String gravar(Usuario usuario){
		 System.out.println(usuario); 
		 usuarioDao.gravar(usuario);
		 return "usuarios/ok";
	    
	}
	
	@RequestMapping("/form")
    public String form(){
        return "usuarios/form";
    }

}
