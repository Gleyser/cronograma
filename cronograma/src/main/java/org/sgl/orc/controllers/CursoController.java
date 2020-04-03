package org.sgl.orc.controllers;

import org.sgl.orc.daos.CursoDAO;
import org.sgl.orc.daos.UnidadeCurricularDAO;
import org.sgl.orc.models.Curso;
import org.sgl.orc.models.UnidadeCurricular;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CursoController {
	
	@Autowired
    private CursoDAO cursoDao;
	
	@RequestMapping("inserircursomodelo")
    public String form(){
        return "cursos/inserir";
    }
	
	@RequestMapping(value = "salvarcursomodelo",method = RequestMethod.POST)
	public String salvaCursoModelo(Curso curso) {
		curso.transformeEmModelo();
		cursoDao.gravar(curso);		
	    return "cursos/ok";

	}

}
